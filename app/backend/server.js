const express = require('express');
const { Pool } = require('pg');
const app = express();
const PORT = 4000;

const pool = new Pool({
  host: 'db',
  user: 'postgres',
  password: 'postgres',
  database: 'mydb'
});

app.get('/data', async (req, res) => {
  try {
    const result = await pool.query('SELECT message FROM greetings LIMIT 1;');
    res.send(result.rows[0].message);
  } catch (err) {
    res.send("DB error: " + err.message);
  }
});

app.listen(PORT, () => console.log(`Backend running on port ${PORT}`));
