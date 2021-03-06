

const checkSigninForm = async () => {
  let user = $("#signin-username").val();
  let pass = $("#signin-password").val();

  let found_user = await query({
    type: 'check_signin',
    params:[user, pass]
  });

  if (found_user.result.length > 0) {
    sessionStorage.userId = found_user.result[0].id;
  } else {
    sessionStorage.removeItem('userId');
    
    // Trigger failure modal
    $('#signin-error').addClass('active');

    // Clear input fields
    $("#signin-username").val();
    $("#signin-password").val();
  }

  checkUserId();
}

const checkUserId = () => {
  let p = ['#signin-page', '#signup-page', '#signup-details-page',''];

  if (sessionStorage.userId === undefined) {
    if (!p.some(pId => window.location.hash === pId)) {
      $.mobile.navigate('#signin-page');
    }
  } else {
    // if (p.some(pId => window.location.hash === pId)) {
    //   $.mobile.navigate('#map-page');
    // }
    if(p.some(o=>window.location.hash===o)) {
      query({type:'habit_by_user_id',params:[sessionStorage.userId]})
      .then(d=>{
         if(d.result.length) $.mobile.navigate("#map-page");
         else $.mobile.navigate("#list-page");
      })
   }
  }
}