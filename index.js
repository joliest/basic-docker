const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('How are you there');
});

app.listen(8080, () => {
  console.log('listening on port 8080');
});