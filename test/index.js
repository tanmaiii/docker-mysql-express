import express from "express";
import mysql from "mysql2";
import dotenv from "dotenv";
const app = express();
dotenv.config();

export const db = mysql.createConnection({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT || 3306,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  multipleStatements: true,
});

export const promiseDb = db.promise();

db.connect(function (err, result) {
  if (err) {
    console.log(
      `❌ Error connecting SQL with port ${process.env.DB_HOST + ":" + process.env.DB_PORT} ` +
        err.stack
    );
  } else {
    console.log("✅ Connect Mysql success", result && result);
  }
});

const PORT = process.env.PORT || 8888;

app.get("/", (req, res) => {
  res.send(
    `
      <div>
        <ul>
           <li>Hello, world ${process.env.APP_NAME}!</li>
           <li>DB_HOST : ${process.env.DB_HOST}</li>
           <li>DB_USER : ${process.env.DB_USER}</li>
           <li>DB_PASS : ${process.env.DB_PASS}</li>
           <li>DB_NAME : ${process.env.DB_NAME}</li>
           <li>DB_PORT : ${process.env.DB_PORT}</li>
        </ul>
      </div>
    `
  );
});

app.get("/mysql", (req, res) => {
  db.query("SELECT * FROM users", function (err, result) {
    if (err) {
      res.send(err);
    } else {
      res.status(200).json(result);
    }
  });
});

app.listen(PORT, () => {
  console.log(`✅ Backend run with port ${PORT}`);
});
