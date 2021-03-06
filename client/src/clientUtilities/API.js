import axios from "axios";

//populate actions from action collection in db
function getActions() {
    return new Promise(function(resolve, reject){
        console.log("sending GET");
        axios.get("http://localhost:3001/frontAPI/getData").then(data => {
            resolve(data);
        })
    })
}

export {
    getActions
};

