
const ListPage = async () => {
  let d = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});
  $("#list-page .habit-list").html(makeHabitList(d.result));
  
  let userData = await query({type:'user_by_id', params: [sessionStorage.userId]});
  // https://stackoverflow.com/questions/8279859/get-first-letter-of-each-word-in-a-string-in-javascript
  userData.result[0].initials = userData.result[0].name.split(' ').map(i => i.charAt(0)).join('');
  $("#list-page .user-initials").html(makeUserInitials(userData.result));
}

const MapPage = async () => {
  let userData = await query({type:'user_by_id', params: [sessionStorage.userId]});
  userData.result[0].initials = userData.result[0].name.split(' ').map(i => i.charAt(0)).join('');
  $("#map-page .user-initials").html(makeUserInitials(userData.result));

}

const UserProfilePage = async () => {
  let d = await query({type:'user_by_id', params: [sessionStorage.userId]});
  console.log('User', d);
  $("#user-profile-page .user-img").html(makeUserImg(d.result));
  $("#user-profile-page .user-imgContainer").html(makeUserImgContainer(d.result));
  $("#user-profile-page .user-titleContainer").html(makeUserTitleContainer(d.result));
  $("#user-profile-page .user-stats").html(makeUserStats(d.result));
  
  let common = await query({type:'most_common_habit_by_user', params: [sessionStorage.userId]});
  console.log("COMMON", common);
  // let userHabits = await query({type:'join_user_habit', params: [sessionStorage.userId]});
  // console.log("JOIN TBLS", userHabits);



  // let count = await query({type:'user_total_encounters', params: [sessionStorage.userId]});
  let count = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});
  console.log('COUNT-------', count.result);
  // $("#user-profile-page .user-stats-encounters").html(makeUserStatsEncounter(d.result));
  
  let allJoined = await query({type:'join_user_habit_locations', params: [sessionStorage.userId]});
  console.log("allJoined", allJoined);
}

const HabitProfilePage = async () => {
  let d = await query({type:'habit_by_id', params: [sessionStorage.habitId]});
  $("#habit-profile-page .habit-img").html(makeHabitImg(d.result));
  $("#habit-profile-page .title-container").html(makeHabitTitleContainer(d.result));
  $("#habit-profile-page .habit-stats").html(makeHabitStats(d.result));
}

