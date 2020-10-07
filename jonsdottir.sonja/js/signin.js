

const checkSigninForm = () => {
  let user = $("#signin-username").val();
  let pass = $("#signin-password").val();

  if (user == 'user' && pass == 'pass') {
    sessionStorage.userId = 3;
  } else {
    sessionStorage.removeItem('userId');
    
    // Trigger failure modal
    $('#notification-trigger').click();

    // Clear input fields
    $("#signin-username").val();
    $("#signin-password").val();
  }

  checkUserId();
}

const checkUserId = () => {
  let p = ['#signin-page', '#signup-page', ''];

  if (sessionStorage.userId === undefined) {
    if (!p.some(pId => window.location.hash === pId)) {
      $.mobile.navigate('#signin-page');
    }
  } else {
    if (p.some(pId => window.location.hash === pId)) {
      $.mobile.navigate('#map-page');
    }
  }
}