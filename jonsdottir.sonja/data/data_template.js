// USERS
[
  '{{repeat(10)}}',
  {
    id:'{{index(1)}}',
    name: '{{firstName()}} {{surname()}}',
    username: function() {
		return 'user'+this.id;
    },
    email: function() {
		return this.username+'@gmail.com';
    },
    password: 'md5(pass)',
    img: function(tags) {
      return 'https:via.placeholder.com/400/' + tags.integer(700,999) + '/fff/?text=' + this.username;
    },
    pet_peeve: '{{random("Rude people","Littering","Cursing!","Tardiness")}}',
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]

// HABITS
[
  '{{repeat(50)}}',
  {
    id:'{{index(1)}}',
    user_id: '{{integer(1,10)}}',
    name: '{{company()}}',
    incident_count: '{{integer(0,40)}}',
    appalled_rating: '{{integer(1,5)}}',
    appalled_result: function(tags) {
      var result = ["","All good","Okay","Mehh","Not good","Gross"]
      return result[this.appalled_rating];
    },
	icon: '{{random("fas fa-comment-slash","fas fa-poo","fa fa-car-crash","fas fa-glass-cheers")}}',
    description: '{{lorem(3,"sentences")}}',
    
    img: function(tags) {
      return 'https:via.placeholder.com/400/' + tags.integer(700,999) + '/fff/?text=' + this.name;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]

// LOCATIONS
[
  '{{repeat(150)}}',
  {
    id:'{{index(1)}}',
    habit_id: '{{integer(1,50)}}',
    lat: '{{floating(37.786530, 37.709665)}}',
    lng: '{{floating(-122.514790, -122.358158)}}',
    appalled_rating: '{{integer(1,5)}}',
    description: '{{lorem(3,"sentences")}}',
    address: '{{integer(100, 999)}} {{street()}}',
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]