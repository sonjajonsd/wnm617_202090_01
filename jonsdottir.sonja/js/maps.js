const COLOR_VARIABLES = {
    "red": '#FF574A',
    "blue": '#579cb2',
    "green": '#A1CCA5',
    "yellow": '#FFC271',
}
// const COLOR_VARIABLES = {
//     "red": '#fe5f55',
//     "blue": '#777da7',
//     "green": '#94c9a9',
//     "yellow": '#E8AA14',
// }
// const COLOR_VARIABLES = {
//     "red": '#ff574a',
//     "blue": '#407cf9',
//     "green": '#8ec73f',
//     "yellow": '#ffc73a',
// }

const makeMap = async(target, center={lat:37.786505,lng:-122.399374}) => {
  await checkData(()=>window.google);

  let map_el = $(target);

  if(!map_el.data("map"))
     map_el.data({
          "map": new google.maps.Map(map_el[0], {
           center: center,
           zoom: 12,
           disableDefaultUI: true
        }),
        "infoWindow": new google.maps.InfoWindow({content:''})
      }
     );

  return map_el;
}

// https://stackoverflow.com/questions/24413766/how-to-use-svg-markers-in-google-maps-api-v3
const template = `<?xml version="1.0" encoding="utf-8"?>
<!-- Generator: Adobe Illustrator 24.3.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 196 320.91"><defs><style>.cls-1{fill:{{ color }};stroke:#fff;stroke-miterlimit:10;stroke-width:12px;}.cls-2{fill:#013b57;}</style></defs><path class="cls-1" d="M280.83,146.76c0,47.86-78.2,191.81-93.44,219.4a2.91,2.91,0,0,1-5.11,0C167,338.57,88.83,194.62,88.83,146.76a96,96,0,1,1,192,0Z" transform="translate(-86.83 -48.76)"/><circle class="cls-2" cx="98" cy="101.24" r="50"/></svg>`;

const makeMarkers = (map_el, map_locs,setBounds=true) => {
  let map = map_el.data("map");
  let markers = map_el.data("markers");

  if (markers) markers.forEach(m => m.setMap(null));

  markers = [];

  
  map_locs.forEach(o =>{
    let m = new google.maps.Marker({
      position:o,
      map:map,
      icon:{
        url: 'data:image/svg+xml;charset=UTF-8,' + encodeURIComponent(template.replace('{{ color }}', COLOR_VARIABLES[o.color || 'red'])),
        scaledSize: {
           width:50,
           height:50  
        }
     }
    });
    markers.push(m);
  })

  map_el.data("markers", markers);
  if(setBounds) setTimeout(() => setMapBounds(map_el, map_locs), 150);
}

const setMapBounds = (map_el, map_locs) => {
  let map = map_el.data("map");
  let zoom = 14;

  if(map_locs.length == 1) {
    map.setCenter(map_locs[0]);
    map.setZoom(zoom);
  } else if (map_locs.length == 0) {
    if (window.location.protocol!=="https:") {
      return;
    } else {
      navigator.geolocation.getCurrentPosition( (p) =>{
        let pos = {
          lat: p.coords.latitude,
          lng: p.coords.longitude,
        };
        map.setCenter(pos);
        map.setZoom(zoom);
      },(...args) => {
        console.log("error?", args);
      }, {
        enableHighAccuracy:false,
        timeout: 5000,
        maximumAge: 0
      });
    }

  } else {
    let bounds = new google.maps.LatLngBounds(null);
    map_locs.forEach(o=>{
      bounds.extend(o);
    })
    map.fitBounds(bounds);
  }
}








const mapStyles = [
  {
      "elementType": "labels.text",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "landscape.natural",
      "elementType": "geometry.fill",
      "stylers": [
          {
              "color": "#f5f5f2"
          },
          {
              "visibility": "on"
          }
      ]
  },
  {
      "featureType": "administrative",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "transit",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "poi.attraction",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "landscape.man_made",
      "elementType": "geometry.fill",
      "stylers": [
          {
              "color": "#ffffff"
          },
          {
              "visibility": "on"
          }
      ]
  },
  {
      "featureType": "poi.business",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "poi.medical",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "poi.place_of_worship",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "poi.school",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "poi.sports_complex",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "road.highway",
      "elementType": "geometry",
      "stylers": [
          {
              "color": "#ffffff"
          },
          {
              "visibility": "simplified"
          }
      ]
  },
  {
      "featureType": "road.arterial",
      "stylers": [
          {
              "visibility": "simplified"
          },
          {
              "color": "#ffffff"
          }
      ]
  },
  {
      "featureType": "road.highway",
      "elementType": "labels.icon",
      "stylers": [
          {
              "color": "#ffffff"
          },
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "road.highway",
      "elementType": "labels.icon",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "road.arterial",
      "stylers": [
          {
              "color": "#ffffff"
          }
      ]
  },
  {
      "featureType": "road.local",
      "stylers": [
          {
              "color": "#ffffff"
          }
      ]
  },
  {
      "featureType": "poi.park",
      "elementType": "labels.icon",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "poi",
      "elementType": "labels.icon",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "water",
      "stylers": [
          {
              "color": "#71c8d4"
          }
      ]
  },
  {
      "featureType": "landscape",
      "stylers": [
          {
              "color": "#e5e8e7"
          }
      ]
  },
  {
      "featureType": "poi.park",
      "stylers": [
          {
              "color": "#8ba129"
          }
      ]
  },
  {
      "featureType": "road",
      "stylers": [
          {
              "color": "#ffffff"
          }
      ]
  },
  {
      "featureType": "poi.sports_complex",
      "elementType": "geometry",
      "stylers": [
          {
              "color": "#c7c7c7"
          },
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "water",
      "stylers": [
          {
              "color": "#a0d3d3"
          }
      ]
  },
  {
      "featureType": "poi.park",
      "stylers": [
          {
              "color": "#91b65d"
          }
      ]
  },
  {
      "featureType": "poi.park",
      "stylers": [
          {
              "gamma": 1.51
          }
      ]
  },
  {
      "featureType": "road.local",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "road.local",
      "elementType": "geometry",
      "stylers": [
          {
              "visibility": "on"
          }
      ]
  },
  {
      "featureType": "poi.government",
      "elementType": "geometry",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "landscape",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "road",
      "elementType": "labels",
      "stylers": [
          {
              "visibility": "off"
          }
      ]
  },
  {
      "featureType": "road.arterial",
      "elementType": "geometry",
      "stylers": [
          {
              "visibility": "simplified"
          }
      ]
  },
  {
      "featureType": "road.local",
      "stylers": [
          {
              "visibility": "simplified"
          }
      ]
  },
  {
      "featureType": "road"
  },
  {
      "featureType": "road"
  },
  {},
  {
      "featureType": "road.highway"
  }
];