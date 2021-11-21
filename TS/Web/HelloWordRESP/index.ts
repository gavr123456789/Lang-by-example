import express, { Request, Response, NextFunction } from 'express';

const app = express();
const port = 3000;

app.listen(port, () => {
  console.log(`started`);
})

const hello = async (request: Request, response: Response) => {
  response.status(200).json("Hello from Typesctipt!");
}

const json = async (request: Request, response: Response) => {
  response.status(200).json({"name": "Isaac", "books": ["Robot Dreams"]});
}

app.get('/hello', hello);
app.get('/json', json);