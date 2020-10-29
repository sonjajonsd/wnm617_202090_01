
const ListPage = async () => {
  let d = await query({type:'habit_by_user_id', params: [sessionStorage.userId]});
  $("#list-page .habit-list").html(makeHabitList(d.result));
}

const MapPage = async () => {

}

const UserProfilePage = async () => {
  let d = await query({type:'user_by_id', params: [sessionStorage.userId]});
  console.log('User', d);
  $("#user-profile-page .user-img").html(makeUserImg(d.result));
  $("#user-profile-page .user-imgContainer").html(makeUserImgContainer(d.result));
  $("#user-profile-page .user-titleContainer").html(makeUserTitleContainer(d.result));
  $("#user-profile-page .user-stats").html(makeUserStats(d.result));

  let count = await query({type:'user_total_encounters', params: [sessionStorage.userId]});
  console.log('count', count.result);
  // $("#user-profile-page .user-stats-encounters").html(makeUserStatsEncounter(d.result));
}

const HabitProfilePage = async () => {
  let d = await query({type:'habit_by_id', params: [sessionStorage.habitId]});
  $("#habit-profile-page .habit-img").html(makeHabitImg(d.result));
  $("#habit-profile-page .title-container").html(makeHabitTitleContainer(d.result));
  $("#habit-profile-page .habit-stats").html(makeHabitStats(d.result));
}

