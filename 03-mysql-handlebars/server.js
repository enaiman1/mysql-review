const express = require("express");
const exphbs = require("express-handlebars");
const mysql = require("mysql");

const app = express();

// Set the port of our application
// process.env.PORT lets the port be set by Heroku
const PORT = process.env.PORT || 8080;

// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

let connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "MySql",
  database: "mysqlReview"
});

connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }

  console.log("connected as id " + connection.threadId);
});

// Use Handlebars to render the main index.html page with the the top 10 horror and romance movies
app.get("/", (req, res) =>{
  connection.query(
    `
    code goes here
    `
    , (err, data) => {
    if (err) {
      return res.status(500).end();
    }
    res.render("index", { movie: data });
  });
});

// Delete a movie
app.delete("/api/movies/:id", (req, res) => {
  connection.query(
    `
  code goes here
  `, 
  [req.params.id], (err, result) => {
    if (err) {
      // If an error occurred, send a generic server failure
      return res.status(500).end();
    }
    else if (result.affectedRows === 0) {
      // If no rows were changed, then the ID must not exist, so 404
      return res.status(404).end();
    }
    res.status(200).end();

  });
});

// add a new movie
app.post("/api/movies", (req, res) => {
  connection.query(
    `
  code goes here
  
  `, 
  [req.body.title, req.body.year, req.body.genre, req.body.movieScore], (err, result) => {
    if (err) {
      return res.status(500).end();
    }

    // Send back the ID of the new movie
    res.json({ id: result.insertId });
    console.log({ id: result.insertId });
  });
});

// Retrieve all movies
app.get("/api/movies", (req, res) => {
  connection.query("SELECT * FROM movies;", (err, data) => {
    if (err) {
      return res.status(500).end();
    }

    res.json(data);
  });
});



// Start our server so that it can begin listening to client requests.
app.listen(PORT, function() {
  // Log (server-side) when our server has started
  console.log("Server listening on: http://localhost:" + PORT);
});
