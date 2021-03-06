import axios from "axios";


//LOCATIONS

//retrieve location data
function getLocations() {
  return new Promise(function (resolve, reject) {
    console.log("sending getLocations");
    axios.get("http://localhost:3001/adminAPI/locations").then(data => {
      resolve(data);
    });
  });
}

//add, edit, remove, rename field for all locations
//action must be "set", "unset", "push", "pull", "rename"
function changeLocations(action = "set", locationObject) {
  locationObject.action = action;
  return new Promise(function (resolve, reject) {
    console.log("sending addLocationField");
    axios.put("http://localhost:3001/adminAPI/locations/", locationObject).then(data => {
      resolve(data);
    });
  });
}

//retrieve data for one location
function getOneLocation(locationName) {
  return new Promise(function (resolve, reject) {
    console.log("sending getOneLocation");
    axios.get("http://localhost:3001/adminAPI/locations/" + locationName).then(data => {
      resolve(data);
    });
  });
}

//edit location data
function editLocation(action, locationName, locationObject) {
  locationObject.action = action;
  return new Promise(function (resolve, reject) {
    console.log("sending editLocation");
    axios.put("http://localhost:3001/adminAPI/locations/" + locationName, locationObject).then(data => {
      resolve(data);
    });
  });
}

//create a new location
function createLocation(locationObject) {
  return new Promise(function (resolve, reject) {
    console.log("sending createLocation");
    axios.post("http://localhost:3001/adminAPI/locations/", locationObject).then(data => {
      resolve(data);
    });
  });
}

//delete location
function deleteLocation(locationName) {
  return new Promise(function (resolve, reject) {
    console.log("sending deleteLocation");
    axios.delete("http://localhost:3001/adminAPI/locations/" + locationName).then(data => {
      resolve(data);
    });
  });
}


//PLAYERS

//get all players
function getPlayers(){
  return new Promise(function (resolve, reject) {
    console.log("sending getPlayers");
    axios.get("http://localhost:3001/adminAPI/players").then(data => {
      resolve(data);
    });
  });
}


export {
  getLocations,
  getOneLocation,
  editLocation,
  createLocation,
  changeLocations,
  deleteLocation,
  getPlayers
};

