const makeHabitList = templater(o => `
  <li>
    <div class="habitlist-item js-habit-jump" data-id="${o.id}">
      <div class="habitlist-description ${o.color}">
        <div class="habit-name">${o.name}</div>
        <div class="habit-meta">${o.description}</div>
      </div>
      <div class="habitlist-icon">
        <div class="image ${o.color}">
        ${o.img ? `<img src="${o.img}" alt="Habit Image" />` : `<img class="fallback" src="imgs/br-glass.png" alt="Broken glass" />` }
        </div>
      </div>
    </div>
  </li>`);

const makeEmptyList = (phrase) => `
  <div class="empty-list">
    <img src="imgs/missing-data.png"/>
    <h1>No habits</h1>
    <div>${phrase}</div>
  </div>
  `;

const makeUserImg = templater(o => `
  <img class="image" src="${o.img}" alt="Profile Picture" />
`);
const makeUserInitialsImg = templater(o => `
  <div class="initials-img">${o.initials}</div>
`);

const makeUserImgContainer = templater(o => `
  <p>@${o.username}</p>
`);

const makeUserTitleContainer = templater(o => `
  <div class="title-container">
    <h1>${o.name ? o.name : o.username}</h1>
    ${o.pet_peeve ? `<div class="meta">Pet peeve: ${o.pet_peeve}</div>` : ``}
  </div>
`);

const makeUserStats = (o) => `
    <div class="stats-item">
      <div class="stats-name">Current World View</div>
      <div class="stats-value">${o.appalledAvg}</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Bad Habit Encounters</div>
      <div class="stats-value">${o.encounters}</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Most Common Bad Habit</div>
      <div class="stats-value">${o.mostCommon}</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Last incident report</div>
      <div class="stats-value">${o.latest}</div>
    </div>
`;

const makeUserInitials = templater(o => `
  <li><a href="#user-profile-page" class="profile-btn"> ${o.initials} </a></li>
`)

const makeUserThumbnail = templater(o => `
  <li><a href="#user-profile-page" class="profile-btn-pic"> <img class="image" src="${o.img}" alt="Profile Picture" /> </a></li>
`)

const makeHabitImg = o => `
  <div class="image ${o.color}-bg">
    ${o.img ? `<img src="${o.img}" alt="Habit Image" />` : `<img class="fallback" src="imgs/br-glass.png" alt="Broken glass" />`}
  </div>
`;

const makeHabitPlaceholderImg = o => `
  <div class="image">
    <img src="${o.img}" alt="Habit Image" />
  </div>
`;

const makeHabitTitleContainer = templater(o => `
  <h1>${o.name}</h1>
  <div class="meta">${o.description}</div>
`);

const makeHabitStats = (o) =>  `
  <div class="stats-item">
    <div class="stats-name">Average Appalled Rating</div>
    <div class="stats-value">${o.avgAppalled}</div>
  </div>
  <div class="stats-item">
    <div class="stats-name">Incident Counter</div>
    <div class="stats-value">${o.count}</div>
  </div>
  <div class="stats-item">
    <div class="stats-name">Latest Report</div>
    <div class="stats-value">${o.last}</div>
  </div>
  <div class="stats-item">
    <div class="stats-name">Incident Report</div>
    <div class="stats-value">${o.description}</div>
  </div>
`;

const makeUserImgInput = img => `
<input type="hidden" id="user-edit-image" value="${img}">
<label class="image-uploader thumbnail ${img ? 'picked' : ''}" style="background-image:url('${img}')">
   <input type="file" data-role="none" id="user-edit-input">
  </label>
  <p>Edit Image</p>
`;

const makeHabitImgInput = img => `
<input type="hidden" id="habit-edit-image" value="${img}">
<label class="image-uploader thumbnail ${img ? 'picked' : ''}" style="background-image:url('${img}')">
   <input type="file" data-role="none" id="habit-edit-input">
  </label>
  <p>Edit Image</p>
`;

const makeHabitPopup = o => `
  <div>
    <h1>${o.name}</h1>
    <p class="location-addr"><i class="fas fa-map-marker-alt"></i>${o.date_create}</p>
    <p class="location-desc">${o.description}</p>
  </div>
`;

const makeHabitSelections = o => `
  <option value="${o.id}">${o.name}</option>
  `;

  const makeSpottedButton = o => `
  <div class="primary-button-container">
    <a href="#location-add-page" class="primary-button dark">Spotted!</a>
  </div>
  `;

const FormControl = ({displayName, name, namespace, type, value, placeholder}) => {
  return `
  <div class="form-control">
    <label for="edit-habit-name" class="form-label">
      ${displayName}
    </label>
    <input
      id="${namespace}-${name}"
      type="${type}"
      class="form-input"
      data-role="none"
      value="${value}"
      placeholder="${placeholder}" />
  </div>
  `;
}

const makeHabitUpdateForm = o => `
  ${FormControl({
    displayName: 'Habit Name',
    name: 'name',
    namespace: 'edit-habit',
    type: 'text',
    placeholder: 'What shall it be..',
    value: o.name
  })}
  ${FormControl({
    displayName: 'Why do you dislike it?',
    name: 'description',
    namespace: 'edit-habit',
    type: 'text',
    placeholder: 'Do tell..',
    value: o.description
  })}
  <div class="form-control">
    <label for="add-habit-description" class="form-label">
      Pick habit color
    </label>
    <div class="color-container">
      <input data-role="none" ${o.color == 'red' ? 'checked' : ''} class="color-input" type="radio" id="red-edit" name="habit-color-edit" value="red">
      <label for="red-edit" class="color-input red-color"><i class="fas fa-circle"></i></label>
      <input data-role="none" ${o.color == 'blue' ? 'checked' : ''}  class="color-input" type="radio" id="blue-edit" name="habit-color-edit" value="blue">
      <label for="blue-edit" class="color-input blue-color"><i class="fas fa-circle"></i></label>
      <input data-role="none" ${o.color == 'green' ? 'checked' : ''} class="color-input" type="radio" id="green-edit" name="habit-color-edit" value="green">
      <label for="green-edit" class="color-input green-color"><i class="fas fa-circle"></i></label>
      <input data-role="none" ${o.color == 'yellow' ? 'checked' : ''} class="color-input" type="radio" id="yellow-edit" name="habit-color-edit" value="yellow">
      <label for="yellow-edit" class="color-input yellow-color"><i class="fas fa-circle"></i></label>
    </div>
  </div>
`

const makeUserUpdateForm = o => `
  ${FormControl({
    displayName: 'Full Name',
    name: 'fullname',
    namespace: 'edit-user',
    type: 'text',
    placeholder: 'Full Name',
    value: o.name
  })}
  ${FormControl({
    displayName: 'Username',
    name: 'username',
    namespace: 'edit-user',
    type: 'text',
    placeholder: 'Username',
    value: o.username
  })}
  ${FormControl({
    displayName: 'Pet Peeve',
    name: 'petpeeve',
    namespace: 'edit-user',
    type: 'text',
    placeholder: 'Pet Peeve',
    value: o.pet_peeve
  })}
`

const makeSignInForm = () => `
  ${FormControl({
    displayName: 'Username',
    name: 'username',
    namespace: 'signin',
    type: 'text',
    placeholder: 'Username',
    value: ''
  })}
  ${FormControl({
    displayName: 'Password',
    name: 'password',
    namespace: 'signin',
    type: 'password',
    placeholder: 'Password',
    value: ''
  })}
`

const makeSignUpForm = () => `
  ${FormControl({
    displayName: 'Username',
    name: 'username',
    namespace: 'signup',
    type: 'text',
    placeholder: 'Username',
    value: ''
  })}
  ${FormControl({
    displayName: 'Password',
    name: 'password',
    namespace: 'signup',
    type: 'password',
    placeholder: 'Password',
    value: ''
  })}
  ${FormControl({
    displayName: 'Confirm Password ',
    name: 'passwordConfirm',
    namespace: 'signup',
    type: 'password',
    placeholder: 'Confirm Password ',
    value: ''
  })}
`

const makeSignUpDetailsForm = () => `
  ${FormControl({
    displayName: 'Full Name',
    name: 'fullname',
    namespace: 'signup-details',
    type: 'text',
    placeholder: 'Full Name',
    value: ''
  })}
  ${FormControl({
    displayName: 'Pet Peeve',
    name: 'petpeeve',
    namespace: 'signup-details',
    type: 'text',
    placeholder: 'Pet Peeve',
    value: ''
  })}
`

const makePasswordForm = () => `
  ${FormControl({
    displayName: 'Current Password',
    name: 'current',
    namespace: 'edit-password',
    type: 'password',
    placeholder: 'Type your current password',
    value: ''
  })}
  ${FormControl({
    displayName: 'New Password',
    name: 'new',
    namespace: 'edit-password',
    type: 'password',
    placeholder: 'Type your new password',
    value: ''
  })}
  ${FormControl({
    displayName: 'Confirm Password',
    name: 'repeat',
    namespace: 'edit-password',
    type: 'password',
    placeholder: 'Re-enter your new password',
    value: ''
  })}
`

const drawHabitList = (a,empty_phrase="You're not trackin any bad habits yet! <br/> Try clicking the big red plus to add a new bad habit to track.") => {
  $("#list-page .habit-list").html(
    a.length ? makeHabitList(a) : makeEmptyList(empty_phrase)
 )
}

const makeUploaderImage = (el, name, folder='') => {
  $(el).parent().css({'background-image':`url(${folder+name}`}).addClass('picked')
     .prev().val(folder+name);
}