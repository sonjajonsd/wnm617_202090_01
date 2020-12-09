const checkSignupForm = () => {
  let username = $("#signup-username").val();
  if(!username) {
    $('#signup-username-missing').addClass('active');
    throw "Username missing";
  }
  let password = $("#signup-password").val();
  let passwordConfirm = $("#signup-passwordConfirm").val();

  if(password !== passwordConfirm) {
    $('#signup-password-mismatch').addClass('active');
    throw "Passwords don't match";
  } else {
    query({type:'insert_user', params:[username,password]})
    .then(d => {
      if (d.error) {
        $('#signup-username-exists').addClass('active');
        throw d.error;
      }

      console.log('signup', d);
      sessionStorage.userId = d.id;
      $.mobile.navigate("#signup-details-page");
    })
  }
}

const checkSignupDetailsForm = () => {
  let fullname = $("#signup-details-fullname").val();
  let petpeeve = $("#signup-details-petpeeve").val();
 
  query({
    type:'update_signup',
    params:[fullname,petpeeve,sessionStorage.userId]
  }).then(d=>{
    if(d.error) {
       throw d.error;
    }
    $.mobile.navigate("#list-page");
 })
}

const checkUserEditForm = () => {
  let username = $("#edit-user-username").val();
  let fullname = $("#edit-user-fullname").val();
  let petpeeve = $("#edit-user-petpeeve").val();
 
  query({
    type:'update_user',
    params:[username,fullname,petpeeve,sessionStorage.userId]
  }).then(d=>{
    if(d.error) {
       throw d.error;
    }

    console.log('User updated', d);
    window.history.back();
 })
}

const checkHabitAddForm = () => {
  let name = $("#add-habit-name").val();
  let description = $("#add-habit-description").val();

  query({type:'insert_habit', params:[sessionStorage.userId, name, description]})
    .then(d => {
      if (d.error) {
        throw d.error;
      }

      $("#add-habit-form")[0].reset();
      ListPage();
    })
}

const checkHabitEditForm = () => {
  let name = $("#edit-habit-name").val();
  let description = $("#edit-habit-description").val();

  query({type:'update_habit', params:[name, description, sessionStorage.habitId]})
    .then(d => {
      if (d.error) {
        throw d.error;
      }

      $("#edit-habit-form")[0].reset();
      window.history.back();
    })
}

const checkLocationAddForm = () => {
  let lat = $("#location-add-lat").val();
  let lng = $("#location-add-lng").val();
  let habit = $("#spotted-habit").val();
  let desc = $("#spotted-description").val();
  // https://www.tutorialrepublic.com/faq/how-to-get-the-value-of-selected-radio-button-using-jquery.php
  let rating = $("input[name='spotted-emotion']:checked").val();

  query({type:'insert_location', params:[habit, lat, lng, rating, desc]})
    .then(d => {
      if (d.error) {
        throw d.error;
      }

      $("#spotted-form")[0].reset();
      $.mobile.navigate('#map-page');
    })
}

const checkSearchForm = async() => {
  let s = $("#search-input").val();

  let r = await query({type:"search_habits", params:[s, sessionStorage.userId]});
  console.log("Result", r);
  drawHabitList(r.result, "Search produced no results.");
}

const checkUpload = file => {
  let fd = new FormData();
  fd.append("image",file);

  return fetch('data/api.php',{
     method:'POST',
     body:fd
  }).then(d=>d.json());
}

const checkUserUploadForm = () => {
  let upload = $("#user-upload-image").val()
  if(upload=="") return;

  query({
     type:'update_user_image',
     params:[upload,sessionStorage.userId]
  }).then(d=>{
     if(d.error) {
        throw d.error;
     }
     window.history.back();
  })
}