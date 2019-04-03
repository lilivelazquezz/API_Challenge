const express = require('express');
const app = express();
const PORT = 3000; // <- change port here


app.use(express.json());

const {
    Pool
  } = require('pg')
  const pool = new Pool({
    host: 'localhost',
    database: 'city_report',
    port: 5432
  })
  
  pool.connect();

app.get('/', (req, res) =>
   res.send(`Node and express server is running on port ${PORT}`)
);
app.listen(PORT, () =>
    console.log(`your server is running on port ${PORT}`) 
);

  app.get('/fire_violations', async (req, res)=>{

    // open pool
    const client = await pool.connect();
    //save results of the query
    var fireHazardResults = await client.query("SELECT * FROM fire_violations");

    //query to database

    res.json(fireHazardResults.rows);
    // closed pool
    client.release();
}); 

app.get('/fire_violations', async (req, res)=>{
    // console.log(req.params);
    // console.log(req.body);
    // open pool
    const client = await pool.connect();
    var fire_violationsResults = await client.query("SELECT * FROM city_report WHERE id=$1",[req.params.id]);

    // rows is to mark a amount of rows
    res.json(fire_violationsResults.rows[0]);
        // closed pool
        client.release();
}); 






app.get('/permits', async (req, res)=>{

    // open pool
    const client = await pool.connect();
    //save results of the query
    var permitsResults = await client.query("SELECT * FROM permits");

    //query to database

    res.json(permitsResults.rows);
    // closed pool 
});





