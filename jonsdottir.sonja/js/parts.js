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

const makeEmptyList = () => `<li>
  <li>
    You're not trackin any bat habits.. yet!
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
    <h1>${o.name}</h1>
    <div class="meta">Pet peeve: ${o.pet_peeve}</div>
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

const makeHabitImg = templater(o => `
  <i class="${o.icon}"></i>
`);

const makeHabitTitleContainer = templater(o => `
  <h1>${o.name}</h1>
  <div class="meta">${o.description}</div>
`);

const makeHabitStats = templater(o => `
  <div class="overscroll">
    <div class="stats-item">
      <div class="stats-name">Appalled Rating</div>
      <div class="stats-value">${o.appalled_result}</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Incident Counter</div>
      <div class="stats-value">${o.incident_count}</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Last Location</div>
      <div class="stats-value">Pine Street, SF</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Common Location</div>
      <div class="stats-value">Market Street, SF</div>
    </div>
  </div>
`);