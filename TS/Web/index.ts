import express, { Request, Response, NextFunction } from 'express';

const app = express();
const port = 3000;

app.listen(port, () => {
  console.log(`sas`);
});

const getLocationsWithTimezones = async (request: Request, response: Response, next: NextFunction) => {
  console.log(request.url);
  response.status(200).json("Hello Typesctipt!");
};

app.get('/hello', getLocationsWithTimezones);