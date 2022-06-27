import express from 'express';

import connectToDatabase from './helpers.mjs'

const app = express();

app.get('/', (req, res) => {
  res.send('<h2>Hi there... welcome to learning docker and kubernetes in 2022 later half !</h2>');
});

await connectToDatabase();

app.listen(3000);
