{/* <a href="#habit-profile-page" class="habitlist-item" > */}
const makeHabitList = templater(o => `<li>
  <li>
    <div class="habitlist-item js-habit-jump" data-id="${o.id}">
      <div class="habitlist-description">
        <div class="habit-name">${o.name}</div>
        <div class="habit-meta">${o.description}</div>
      </div>
      <div class="habitlist-icon">
        <div class="image">
          <i class="${o.icon}"></i>
        </div>
      </div>
    </div>
  </li>`);

const makeEmptyList = () => `
  <li>
    You're not trackin any bad habits yet!
    Try clicking the big red plus to add a new bad habit to track.
  </li>`;

const makeUserImg = templater(o => `
<img class="image" src="${o.img}" alt="Profile Picture" />
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

const makeUserStats = (o) => {
  return `
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
`;}

const makeUserInitials = templater(o => `
  <li><a href="#user-profile-page" class="profile-btn"> ${o.initials} </a></li>
`)

const makeHabitImg = o => `
  <i class="${o.feeling}"></i>
`;
// const makeHabitImg = templater(o => `
//   <i class="${o.icon}"></i>
// `);

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

const makeHabitPopup = o => `
  <div>
    <h1>${o.name}</h1>
    <p class="location-addr"><i class="fas fa-map-marker-alt"></i>${o.date_create}</p>
    <p class="location-desc">${o.description}</p>
  </div>
`;
  // <div class="form-button js-habit-jump" data-id="${o.habit_id}" style="width:100%">Go to habit page</div>

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

const drawHabitList = (a,empty_phrase="You're not trackin any bad habits yet! Try clicking the big red plus to add a new bad habit to track.") => {
  $("#list-page .habit-list").html(
    a.length ? makeHabitList(a) : empty_phrase
 )
}

const makeUploaderImage = ({namespace,folder,name}) => {
  console.log(namespace,folder,name)
  $(`#${namespace}-image`).val(folder+name);
  $(`#${namespace}-page .image-uploader`)
     .css({'background-image':`url(${folder+name}`})
}