
require('./configs/db_configs.js');

const express = require('express');
const bodyParser = require('body-parser');
const app = express();

const router = express.Router();

const API_VERSION = '/api/v1';
const PORT = process.env.PORT || 3050;

app.use(bodyParser.json());
app.use(API_VERSION, router);


require('./routers/region_router.js')(router);


router.post('/user' + '/get-user', (req, res) => {
    console.log(req.body.name);
    res.json({
        'mal': req.body.name,
        'daha mal': 'OZGE',
    })
});


app.listen(PORT, () => console.log('Server Running'));
