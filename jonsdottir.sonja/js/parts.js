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

const makeUserStats = templater(o => `
    <div class="stats-item">
      <div class="stats-name">Current World View</div>
      <div class="stats-value">Gross</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Bad Habit Encounters</div>
      <div class="stats-value">42</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Most Common Bad Habit</div>
      <div class="stats-value">Dog waste</div>
    </div>
    <div class="stats-item">
      <div class="stats-name">Top Place to Avoid</div>
      <div class="stats-value">Market Street, SF</div>
    </div>
`);

const makeUserStatsEncounter = templater(o => `
    <div class="stats-item">
      <div class="stats-name">Bad Habit Encounters</div>
      <div class="stats-value">${o}</div>
    </div>
`);

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