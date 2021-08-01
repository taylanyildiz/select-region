const db = require('mysql');
const conf = require('./conf.js');

const HOST = conf.mysql.host;
const PORT = conf.mysql.port;

const USER = conf.mysql.user;
const PASSWORD = conf.mysql.password;

const DBNAME = conf.mysql.db;


console.log('DB CONNECTION ...');


const dbConnection = db.createConnection({
    user: USER,
    password: PASSWORD,
    host: HOST,
    port: PORT,
    database: DBNAME,
});

dbConnection.connect((err) => {
    if (err) console.log(err);
    console.log('DB CONNECTİON SUCCESSFULLY');
});




module.exports = dbConnection;