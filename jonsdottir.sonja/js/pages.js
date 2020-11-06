
const APPALLED_MEANING = ["Not sure..","All good","Okay","Mehh","Not good","Gross"];

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
  userData.result[0].initials = userData.result[0].name.split(' ').map(i => i.charAt(0)).join('');
  $("#list-page .user-initials").html(makeUserInitials(userData.result));
}

const MapPage = async () => {
  let userData = await query({type:'user_by_id', params: [sessionStorage.userId]});
  userData.result[0].initials = userData.result[0].name.split(' ').map(i => i.charAt(0)).join('');
  $("#map-page .user-initials").html(makeUserInitials(userData.result));

  let recent = await query({type:'recent_locations', params: [sessionStorage.userId]});
  console.log("RECENT", recent);

  let valid_habits = recent.result.reduce((r,o)=>{
    // o.icon = o.img;
    if(o.lat && o.lng) r.push(o);
    return r;
  },[])

  let map_el = await makeMap("#map-page .map");
  makeMarkers(map_el, valid_habits);
}

const UserProfilePage = async () => {
  let d = await query({type:'user_by_id', params: [sessionStorage.userId]});
  console.log('User', d);
  $("#user-profile-page .user-img").html(makeUserImg(d.result));
  $("#user-profile-page .user-imgContainer").html(makeUserImgContainer(d.result));
  $("#user-profile-page .user-titleContainer").html(makeUserTitleContainer(d.result));
  
  let common = await query({type:'most_common_habit_by_user', params: [sessionStorage.userId]});
  // console.log("COMMON", common);

  let count = await query({type:'user_total_encounters', params: [sessionStorage.userId]});
  // console.log('COUNT-------', count);
  const totalEncounters = count.result[0].encounters
  
  let latestEncounter = await query({type:'last_encounter_by_user', params: [sessionStorage.userId]});
  // console.log("LATEST", latestEncounter);

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
  $("#habit-profile-page .habit-img").html(makeHabitImg(d.result));
  $("#habit-profile-page .title-container").html(makeHabitTitleContainer(d.result));
  $("#habit-profile-page .habit-stats").html(makeHabitStats(d.result));
}
       
