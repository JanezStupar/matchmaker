import { Router, Response, Request } from 'express';
import {challengesRouter} from './challenges';

const publicRouter: Router = Router();

publicRouter.get('/simple', (request: Request, response: Response) => {
  response.json({
    title: 'Greetings.',
    text: 'Hello Angular 2'
  });
});

publicRouter.use('/challenges', challengesRouter);

export { publicRouter }
