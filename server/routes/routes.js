const mysql = require('../config/mysql');

module.exports = (app) =>{

    app.get('/', async (req,res) =>{
        res.send('hello world')
    })

}