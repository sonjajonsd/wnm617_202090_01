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
      return makeQuery($c, "SELECT id,name, username,date_create,img,pet_peeve  FROM `track_users` WHERE `id`=?", $p);
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
      return makeQuery($c, "SELECT count(l.id) as encounters
        FROM `track_habits` h
        RIGHT JOIN `track_locations` l
        ON h.id = l.habit_id
        WHERE h.user_id=?
        ", $p);
    
    case "most_common_habit_by_user":
      return makeQuery($c, "SELECT h.name, count(l.id) as encounters
        FROM `track_habits` h
        RIGHT JOIN `track_locations` l
        ON h.id = l.habit_id
        WHERE h.user_id=?
        GROUP BY l.habit_id
        ORDER BY encounters DESC
        LIMIT 1
        ", $p);
    
    case "total_appalled_by_user":
      return makeQuery($c, "SELECT l.appalled_rating, count(l.id) as encounters
        FROM `track_habits` h
        RIGHT JOIN `track_locations` l
        ON h.id = l.habit_id
        WHERE h.user_id=?
        GROUP BY l.habit_id
        ORDER BY encounters DESC
        ", $p);
    
    case "last_encounter_by_user":
      return makeQuery($c, "SELECT h.name, l.date_create
        FROM `track_habits` h
        RIGHT JOIN `track_locations` l
        ON h.id = l.habit_id
        WHERE h.user_id=?
        ORDER BY l.date_create DESC
        LIMIT 1
        ", $p);

    case "last_encounter_by_habit":
      return makeQuery($c, "SELECT h.name, l.date_create, l.description, l.lng, l.lat
        FROM `track_habits` h
        RIGHT JOIN `track_locations` l
        ON h.id = l.habit_id
        WHERE h.id=?
        ORDER BY l.date_create DESC
        LIMIT 1
        ", $p);

    case "habit_total_encounters":
      return makeQuery($c, "SELECT count(l.id) as encounters
        FROM `track_habits` h
        RIGHT JOIN `track_locations` l
        ON h.id = l.habit_id
        WHERE h.id=?
        ", $p);
        
    case "join_user_habit":
    return makeQuery($c,"SELECT * FROM `track_users` AS users JOIN `track_habits` AS habits ON users.id = habits.user_id WHERE `user_id`=?",$p);
    
    case "most_recent_habits":
    // API CALL that returns the most recent locations of each of this users habits
    return makeQuery($c, "SELECT * FROM `track_habits` AS habits JOIN `track_locations` AS locs ON habits.id = locs.habit_id WHERE `user_id`=?", $p);

    case "join_user_habit_locations":
      return makeQuery($c, "SELECT * FROM `track_habits` AS habits JOIN `track_locations` AS locs ON habits.id = locs.habit_id WHERE `user_id`=?", $p);
    
    case "most_common_habit_by_user":
      return makeQuery($c, "SELECT `name`, COUNT(*) AS magnitude FROM `track_habits` AS habits JOIN `track_locations` AS locs ON habits.id = locs.habit_id WHERE `user_id`=?  GROUP BY `name` ORDER BY magnitude DESC LIMIT 1", $p);
      
    case "recent_locations":
      return makeQuery($c, "SELECT * 
        FROM `track_habits` h
        RIGHT JOIN (
          SELECT * FROM `track_locations`
          ORDER BY `date_create` DESC
        ) l
        ON h.id = l.habit_id
        WHERE h.user_id=?
        GROUP BY l.habit_id
        ", $p);


      // CRUD
      case "insert_user":
        // Check for duplicate users
        $r = makeQuery($c,"SELECT * FROM `track_users` WHERE `username`=?",[$p[0]]);
        if(count($r['result'])) return ["error"=>"Username exists"];

        // Create new user
        $r = makeQuery($c,"INSERT INTO
          `track_users`
          (`username`,`password`,`name`,`pet_peeve`,`img`,`date_create`)
          VALUES
          (?, md5(?), '', '', 'https://via.placeholder.com/400?text=USER', NOW())
          ",$p);
        return ["id"=>$c->lastInsertId()];

      case "insert_habit":
        $r = makeQuery($c,"INSERT INTO
           `track_habits`
           (`user_id`,`name`, `description`,`icon`,`img`,`date_create`)
           VALUES
           (?, ?, ?, 'fas fa-bullhorn', '', NOW())
           ",$p);
          return ["id"=>$c->lastInsertId()];
      
      case "insert_location":
        $r = makeQuery($c,"INSERT INTO
          `track_locations`
          (`habit_id`,`lat`, `lng`,`appalled_rating`,`description`,`date_create`)
          VALUES
          (?, ?, ?, ?, ?, NOW())
          ",$p);
        return ["id"=>$c->lastInsertId()];

        // UPDATE

        case "update_signup":
         $r = makeQuery($c,"UPDATE
            `track_users`
            SET
            `name` = ?,
            `pet_peeve` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

        case "update_user":
         $r = makeQuery($c,"UPDATE
            `track_users`
            SET
            `username` = ?,
            `name` = ?,
            `pet_peeve` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];
        
        case "update_habit":
         $r = makeQuery($c,"UPDATE
            `track_habits`
            SET
            `name` = ?,
            `description` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

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