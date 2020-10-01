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

 //  Document ready
 $(() => {

  checkUserId();

  // event delegation
  // no semicolon, so they chain onto document
  $(document)

  // FORM SUBMIT
  .on("submit", "#signin-form", function (e) {
    e.preventDefault();
    checkSigninForm();
  })

  // ANCHOR CLICKS
  .on('click', '.js-logout', function (e) {
    sessionStorage.removeItem('userId');
    checkUserId();
    $("#signin-username").val('')
    $("#signin-password").val('');
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

 })