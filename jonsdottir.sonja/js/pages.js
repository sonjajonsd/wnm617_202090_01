
const APPALLED_MEANING = ["Not sure..","All good","Okay","Mehh","Not good","Gross"];
const HABIT_FEELING = ["far fa-question-circle","far fa-smile","far fa-meh","far fa-meh-blank","far fa-frown-open","far fa-tired"];

const ListPage = async () => {
  let d = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});
  console.log("LIST", d);
  if(d.result.length) {
    $("#list-page .habit-list").html(makeHabitList(d.result));
  } else {
    $("#list-page .habit-list").html(makeEmptyList());
  }
  
  let userData = await query({type:'user_by_id', params: [sessionStorage.userId]});
  // https://stackoverflow.com/questions/8279859/get-first-letter-of-each-word-in-a-string-in-javascript
  userData.result[0].initials = userData.result[0].name ? userData.result[0].name.split(' ').map(i => i.charAt(0)).join('') : userData.result[0].username[0];
  $("#list-page .user-initials").html(makeUserInitials(userData.result));
}

const MapPage = async () => {
  let userData = await query({type:'user_by_id', params: [sessionStorage.userId]});
  console.log(userData);
  userData.result[0].initials = userData.result[0].name ? userData.result[0].name.split(' ').map(i => i.charAt(0)).join('') : userData.result[0].username[0];
  $("#map-page .user-initials").html(makeUserInitials(userData.result));

  let recent = await query({type:'recent_locations', params: [sessionStorage.userId]});
  console.log("RECENT", recent);

  let valid_habits = recent.result.reduce((r,o)=>{
    // o.icon = o.img;
    if(o.lat && o.lng) r.push(o);
    return r;
  },[]);

  let map_el = await makeMap("#map-page .map");
  makeMarkers(map_el, valid_habits);

  map_el.data("markers").forEach((o,i,a)=>{
    o.addListener("click", function() {
      // map_el.data("infoWindow")
      //   .open(map_el.data("map"),o);
      // map_el.data("infoWindow")
      //   .setContent(makeHabitPopup(valid_habits[i]));
      $("#location-info").addClass("active");
         $("#location-info .modal-body.location")
            .html(makeHabitPopup(valid_habits[i]))
    })
  });

  let habits = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});
  if (habits.result.length) {
    $("#map-page .spotted-button").html(makeSpottedButton());
  } else {
    $("#map-page .spotted-button").html();
  }
}

const UserProfilePage = async () => {
  let d = await query({type:'user_by_id', params: [sessionStorage.userId]});
  console.log('User', d);
  $("#user-profile-page .user-img").html(makeUserImg(d.result));
  $("#user-profile-page .user-imgContainer").html(makeUserImgContainer(d.result));
  $("#user-profile-page .user-titleContainer").html(makeUserTitleContainer(d.result));
  
  let common = await query({type:'most_common_habit_by_user', params: [sessionStorage.userId]});

  let count = await query({type:'user_total_encounters', params: [sessionStorage.userId]});

  const totalEncounters = count.result[0].encounters
  
  let latestEncounter = await query({type:'last_encounter_by_user', params: [sessionStorage.userId]});

  let appalled = await query({type:'total_appalled_by_user', params: [sessionStorage.userId]});
  let total = 0;
  let cntr = 0;
  
  appalled.result.forEach(a => {
    total += a.encounters * a.appalled_rating;
    cntr += a.encounters;
  });
  const appalledAvg = cntr ? total / cntr : 0;
  
  let stats = {
    latest: totalEncounters ? latestEncounter.result[0].date_create : "N/A",
    appalledAvg: APPALLED_MEANING[Math.round(appalledAvg)],
    mostCommon: totalEncounters ? `${common.result[0].name} (${common.result[0].encounters})`: "N/A",
    encounters: count.result[0].encounters
  };
  console.log('stats', stats);
  $("#user-profile-page .user-stats").html(makeUserStats(stats));
}

const HabitProfilePage = async () => {
  let d = await query({type:'habit_by_id', params: [sessionStorage.habitId]});
  
  $("#habit-profile-page .title-container").html(makeHabitTitleContainer(d.result));

  let last = await query({type:'last_encounter_by_habit', params: [sessionStorage.habitId]});
  let count = await query({type:'habit_total_encounters', params: [sessionStorage.habitId]});
  let rating = await query({type:'locations_by_habit_id', params: [sessionStorage.habitId]});
  
  let total = 0;
  let cntr = rating.result.length;

  rating.result.forEach(r => {
    total += r.appalled_rating;
  });

  const appalledAvg = cntr ? total / cntr : 0;

  const stats = {
    last: last.result[0] ? last.result[0].date_create : "No reports available",
    description: last.result[0] ? last.result[0].description : "N/A",
    count: count.result[0] ? count.result[0].encounters : "N/A",
    avgAppalled: APPALLED_MEANING[Math.round(appalledAvg)]
  };
  let icon = {
    feeling: HABIT_FEELING[Math.round(appalledAvg)]
  }
  $("#habit-profile-page .habit-img").html(makeHabitImg(icon));
  $("#habit-profile-page .habit-stats").html(makeHabitStats(stats));

  let valid_habits = rating.result.reduce((r,o)=>{
    // o.icon = o.img;
    if(o.lat && o.lng) r.push(o);
    return r;
  },[])

  let map_el = await makeMap("#habit-profile-page .map", last.result[0]);
  makeMarkers(map_el, valid_habits);
}

const EditHabitPage = async () => {
  let d = await query({type:'habit_by_id', params: [sessionStorage.habitId]});
  console.log('Data', d);
  $("#edit-habit-page .input-container").html(makeHabitUpdateForm(d.result[0]));
}

const EditUserPage = async () => {
  let d = await query({type:'user_by_id', params: [sessionStorage.userId]});
  console.log('Data', d);
  $("#edit-user-page .input-container").html(makeUserUpdateForm(d.result[0]));
}

const SignInPage = async () => {
  $("#signin-page .form-content").html(makeSignInForm());
}

const SignUpPage = async () => {
  $("#signup-page .form-content").html(makeSignUpForm());
}

const SignUpDetailsPage = async () => {
  $("#signup-details-page .form-content").html(makeSignUpDetailsForm());
}

const LocationAddPage = async() => {
  let map_el = await makeMap("#location-add-page .map");
  makeMarkers(map_el, []);

  let map = map_el.data('map');
  map.addListener("click", (e) => {
    let posFromClick = {lat: e.latLng.lat(), lng: e.latLng.lng()};
    let posFromCenter = {lat: map.getCenter().lat(), lng: map.getCenter().lng()};
    console.log(posFromCenter, posFromClick);
    $("#location-add-lat").val(posFromClick.lat);
    $("#location-add-lng").val(posFromClick.lng);

    makeMarkers(map_el, [posFromClick], false);
  })

  let d = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});

  // dule - https://stackoverflow.com/questions/740195/adding-options-to-a-select-using-jquery
  d.result.forEach((d) => {
    $("#location-add-page #spotted-habit").append($('<option>', {
      value: d.id,
      text: d.name
    }));
  });
}
