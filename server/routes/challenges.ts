/**
 * Created by janez on 23.12.2016.
 */
import { Router, Response, Request } from "express";
import {Challenges} from "../collections/challenges";
import {Challenge} from "../models/challenge";

const challengesRouter: Router = Router();

challengesRouter.get('/', (request: Request, response: Response) => {
  let challenges:Challenges = new Challenges();
  challenges.get()
    .toArray()
    .do((challenges:Array<Challenge>) => {
      response.json(challenges);
    })
  .subscribe()
});

export {challengesRouter}
