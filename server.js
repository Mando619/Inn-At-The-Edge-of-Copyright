const express = require("express");
const path = require("path");
const PORT = process.env.PORT || 3001;
const app = express();
const mongoose = require("mongoose");
const db = require("./models");
const dotenv = require("dotenv").config()
const cors = require("cors");
const backEngine = require("./controller/backEngine");
const APIBackroutes = require("./routes/API/backEngineAPI");



// Define middleware here
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());
// Serve up static assets (usually on heroku)
if (process.env.NODE_ENV === "production") {
  app.use(express.static("client/build"));
}

// Define API routes here
/* API ROUTES */

app.use("/API", APIBackroutes);

app.route("/getData").get(function(req, res) {
  db.Action.find({}, function(err, result) {
    if (err) {
      res.send(err);
    } else {
      res.send(result);
    }
  });
});



//connect to mongoDB
mongoose.connect(process.env.URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true
});
mongoose.set('useCreateIndex', true);
const connection = mongoose.connection;


//log once mongoDB is open
connection.once("open", function() {
  console.log("\nConnected to mongoose\n\n--------------begin log--------------\n");
});


// Send every other request to the React app
// Define any API routes before this runs
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "./client/build/index.html"));
});

app.listen(PORT, () => {
  console.log(`🌎 ==> API server now on port ${PORT}!`);
});
