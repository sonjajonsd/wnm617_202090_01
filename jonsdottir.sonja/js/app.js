/**
 * 
 * only one document loads
 * a lot of page loads
 * 
 * Only works for items that exist on load
 * $('a').on('click', function (e) {
     console.log("event data", e);
   })
 * 
 * KEEP THIS FILE CLEAN
 * 
 */

  // query({
  //   type:'users_all',
  //   params:[]
  // }).then(d=>{
  //   console.log(d)
  // })

 //  Document ready
 $(() => {

  checkUserId();

  // event delegation
  // no semicolon, so they chain onto document
  $(document)

  .on("pagecontainerbeforeshow", function( e, ui ) {
    // Page routing
    switch(ui.toPage[0].id) {
      case 'list-page': ListPage(); break;
      case 'map-page': MapPage(); break;
      case 'user-profile-page': UserProfilePage(); break;
      case 'edit-user-page': EditUserPage(); break;
      case 'edit-password-page': EditPasswordPage(); break;
      case 'habit-profile-page': HabitProfilePage(); break;
      case 'edit-habit-page': EditHabitPage(); break;
      case 'signin-page': SignInPage(); break;
      case 'signup-page': SignUpPage(); break;
      case 'signup-details-page': SignUpDetailsPage(); break;
      case 'location-add-page': LocationAddPage(); break;
    }
  })

  // FORM SUBMIT
  .on("submit", "#signin-form", function (e) {
    e.preventDefault();
    checkSigninForm();
  })
  
  .on("submit", "#signup-form", function (e) {
    e.preventDefault();
    checkSignupForm();
  })

  .on("submit", "#edit-user-form", function (e) {
    e.preventDefault();
    checkUserEditForm();
  })
  
  .on("submit", "#add-habit-form", function (e) {
    e.preventDefault();
    checkHabitAddForm();
  })

  .on("submit", "#edit-habit-form", function (e) {
    e.preventDefault();
    checkHabitEditForm();
  })

  .on("submit", "#signup-details-form", function (e) {
    e.preventDefault();
    checkSignupDetailsForm();
  })
  
  .on("submit", "#spotted-form", function (e) {
    e.preventDefault();
    checkLocationAddForm();
  })

  .on("submit", "#search-habit-form", function (e) {
    e.preventDefault();
    checkSearchForm();
  })
  
  
  // FORM SUBMIT CLICK
  .on("click",'.js-user-upload',function(e){
    checkUserUploadForm();
  })

  .on("change",".image-uploader input",function(){
    checkUpload(this.files[0])
    .then(d=>{
      console.log(d)
      makeUploaderImage(this,d.result,'uploads/')
   })
 })



  // ANCHOR CLICKS
  .on('click', '.js-logout', function(e) {
    sessionStorage.removeItem('userId');
    checkUserId();
    $("#signin-username").val('')
    $("#signin-password").val('');
  })

  .on('click', '.js-habit-jump', function(e) {
    sessionStorage.habitId = $(this).data('id');
    $.mobile.navigate('#habit-profile-page');
  })

  .on('click', '[data-activate]', function (e) {
    let target = $(this).data('activate');
    $(target).addClass("active")
  })
  .on('click', '[data-deactivate]', function (e) {
    let target = $(this).data('deactivate');
    $(target).removeClass("active")
  })
  .on('click', '[data-toggle]', function (e) {
    let target = $(this).data('toggle');
    $(target).toggleClass("active")
  })
  .on("click",'.js-habit-delete',function(e){
    checkHabitDelete();
  })

 })