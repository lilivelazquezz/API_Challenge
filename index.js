const express = require('express');
const app = express();
const PORT = 4000; // <- change port here
// code goes here



// At the bottom of the doument
app.get('/', (req, res) =>
    res.send(`Node and express server is running on port ${PORT}`)
);
app.listen(PORT, () =>
    console.log(`your server is running on port ${PORT}`) 
);