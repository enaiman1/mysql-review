var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "mysqlReview"
});

connection.connect(function (err) {
  if (err) throw err;
  runSearch();
});

function runSearch() {
  inquirer
    .prompt({
      name: "action",
      type: "rawlist",
      message: "What would you like to do?",
      choices: [

        "Find movies by name",
        "Find find movies within a specific time frame",
        "Find top 10 movies",
        "Exit App"
      ]
    })
    .then(function (answer) {
      switch (answer.action) {
        case "Find movies by name":
          movieSearch();
          break;

        case "Find find movies within a specific time frame":
          rangeSearch();
          break;

        case "Find top 10 movies":
          ratingSearch();
          break;

        case "Exit App":
          quit()
          break;
      }
    });
}

const movieSearch = () => {
  inquirer
    .prompt({
      name: "title",
      type: "input",
      message: "What movie would you like to search for?"
    })
    .then(function (answer) {
      var query = `
      SELECT 
      title, 
      year, 
      genre, 
      movie_score 
      FROM movies 
      WHERE ?
      `;
      connection.query(query, { title: answer.title }, function (err, res) {
        for (var i = 0; i < res.length; i++) {
          console.log('-------------------------');
          console.log(`Title: ${res[i].title} || Year: ${res[i].year}|| Genre: ${res[i].genre} || Score: ${res[i].movie_score}`);
          console.log('-------------------------');;
        }
        runSearch();
      });
    });
}


const rangeSearch = () => {
  inquirer
    .prompt([
      {
        name: "start",
        type: "input",
        message: "Enter starting year: ",
        validate: function (value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      },
      {
        name: "end",
        type: "input",
        message: "Enter ending year: ",
        validate: function (value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      }
    ])
    .then(function (answer) {
      var query = `
      SELECT 
      title, year, genre, movie_score 
      FROM movies 
      WHERE year 
      BETWEEN ? AND ?
      `;
      connection.query(query, [answer.start, answer.end], function (err, res) {
        for (var i = 0; i < res.length; i++) {

          console.log(`Title: ${res[i].title} || Year: ${res[i].year}|| Genre: ${res[i].genre} || Score: ${res[i].movie_score}`);
          console.log('-------------------------');
        }
        runSearch();
      });
    });
}

const ratingSearch = () => {
  var query = `
  SELECT 
  title, year, movie_score 
  FROM movies 
  ORDER by movie_score 
  DESC limit 10`;
  connection.query(query, function (err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(`Title: ${res[i].title} || Year: ${res[i].year}|| Score: ${res[i].movie_score}`);
    }
    runSearch();
  });
}


const quit = () => {
  console.log("Goodbye!");
  process.exit();
}



