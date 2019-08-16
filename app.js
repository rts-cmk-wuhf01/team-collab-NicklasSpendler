const express = require('express');

const app = express();

const bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));


const logger = require('morgan');
app.use(logger('dev', {
   // hvis ALLE requests skal ses i loggen, udkommenter næste linje
    skip: req => (!req.url.endsWith(".html") && req.url.indexOf('.') > -1)
}));

// sæt viewengine til ejs 
app.set('view engine', 'ejs');
// peg på den mappe hvor alle views filerne er placeret
app.set('views', './server/views');

require('./server/routes/routes.js')(app);

app.use(express.static('public'));

const port = 3000;
app.listen(port, (error) => {
    if (error) console.log(error);
    console.log('\x1b[35m%s\x1b[0m', '================================================================'); // udskriver en lilla streg i konsol
    console.log('Server is listening on port %s, address: %s', port, 'http://localhost:' + port);
});


app.locals.dateAndTime = require('date-and-time')