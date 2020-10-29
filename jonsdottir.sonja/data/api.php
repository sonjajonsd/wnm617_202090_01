<?php

function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(
         PDO::ATTR_ERRMODE,
         PDO::ERRMODE_EXCEPTION
      );
   } catch(PDOException $e) {
      die('{"error":"'.$e->getMessage().'"}');
   }
   return $conn;
}


function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(PDO::FETCH_OBJ))
      $a[] = $row;
   return $a;
}

// connection, prepared statement, parameters
function makeQuery($c,$ps,$p,$makeResults=true) {
  try {
     if(count($p)) {
        $stmt = $c->prepare($ps);
        $stmt->execute($p);
     } else {
        $stmt = $c->query($ps);
     }

     $r = $makeResults ? fetchAll($stmt) : [];

     return [
        "result"=>$r
     ];

  } catch(PDOException $e) {
     return [
        "error"=>"Query Failed: ".$e->getMessage()
     ];
  }
}

function makeStatement($data) {
  $c = makeConn();
  $t = $data->type;
  $p = $data->params;

  switch($t) {
    case 'users_all':
      return makeQuery($c, "SELECT * FROM `track_users`", $p);
      break;
    case 'habits_all':
      return makeQuery($c, "SELECT * FROM `track_habits`", $p);
      break;
    case 'locations_all':
      return makeQuery($c, "SELECT * FROM `track_locations`", $p);
      break;

    case 'user_by_id':
      return makeQuery($c, "SELECT * FROM `track_users` WHERE `id`=?", $p);
      break;
    case 'habit_by_id':
      return makeQuery($c, "SELECT * FROM `track_habits` WHERE `id`=?", $p);
      break;
    case 'location_by_id':
      return makeQuery($c, "SELECT * FROM `track_locations` WHERE `id`=?", $p);
      break;

    case 'habit_by_user_id':
      return makeQuery($c, "SELECT * FROM `track_habits` WHERE `user_id`=?", $p);
      break;
    case 'locations_by_habit_id':
      return makeQuery($c, "SELECT * FROM `track_locations` WHERE `habit_id`=?", $p);
      break;

    case "check_signin":
      return makeQuery($c,"SELECT * FROM `track_users` WHERE `username`=? AND `password`=md5(?)",$p);

    case "user_total_encounters":
      return makeQuery($c,"SELECT COUNT(*) FROM `track_habits` WHERE `user_id`=?",$p);
      
    case "most_recent_habits":
      // API CALL that returns the most recent locations of each of this users habits
      return makeQuery($c,"SELECT * FROM `track_locations` WHERE `user_id`=?",$p);


    default:
      return ["error"=>"No Matched Type"];
  }
}

// $type = isset($_GET['type']) ? $_GET['type'] : '';

$data = json_decode(file_get_contents("php://input"));

echo json_encode(
  // makeQuery(makeConn(), "SELECT * FROM track_locations", []),
  // makeStatement((object)["type"=>"users_all","params"=>[]]),
  // makeStatement((object)["type"=>$type,"params"=>[]]),
  makeStatement($data),
  JSON_NUMERIC_CHECK
);