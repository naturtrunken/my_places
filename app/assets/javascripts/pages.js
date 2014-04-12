// Variables for the map
var map;
var marker = [];
var marker_count = 0;

$(document).ready(function () {
    initmap();
});

// Creates the map.
// ---------------------------------------------------------------------------------------
function initmap() {

    // Create the map
    map = new L.Map('map');

    // Create the OpenStreetMap and Leaflet note.
    var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
    var osmAttrib = 'Map data © OpenStreetMap contributors';
    var osm = new L.TileLayer(osmUrl, {
        minZoom: 4,
        maxZoom: 19,
        attribution: osmAttrib
    });
    map.addLayer(osm);

    map.setView(new L.LatLng(52.518611, 13.408056), 11);
}


