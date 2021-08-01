const controller = require('../controllers/region_controller.js');


module.exports = (app) => {
    const field = '/reqion';
    app.post(field+'/countries',controller.getCountries);
    app.post(field + '/states',controller.getStates);
    app.post(field + '/cities',controller.getCities);
}