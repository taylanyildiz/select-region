const db = require('../configs/db_configs.js');


const getCountries = (req, res) => {
    let countries = { countries: [] };
    const sql = `SELECT * FROM countries`;
    db.query(sql, (err, result) => {
        countries.countries = result;
        res.json(countries);
    });
}

const getStates = (req, res) => {
    let states = { states: [] };
    const sql = `SELECT * FROM states WHERE states.country_id = ${req.body.country_id}`;
    db.query(sql, (err, result) => {
        if (err) {
            console.error(err);
            res.status(400).json({ message: err });
        }
        states.states = result;
        res.status(200).json(states);
    });
}

const getCities = (req, res) => {
    const sql = 'SELECT * FROM cities WHERE cities.states_id = ' + req.body.states_id;
    const cities = { cities: [] };
    db.query(sql, (err, result) => {
        if (err) {
            console.error(err);
            res.status(400).json({ message: err });
        }
        cities.cities = result;
        res.status(200).json(cities);
    });
}

module.exports = {
    getCountries,
    getStates,
    getCities,
};