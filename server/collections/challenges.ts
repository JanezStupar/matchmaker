/**
 * Created by janez on 23.12.2016.
 */
import {BaseCollection} from './base';
import {IPreparedStatement} from '../models/base';
import {Observable} from "rxjs";
import {Challenge} from "../models/challenge";

class Challenges extends BaseCollection {
  get modelType(): typeof Challenge {
    return Challenge;
  }

  protected _get_sql():IPreparedStatement {
    return <IPreparedStatement>{
      name: "all-challenges",
      text: "select challenges.game, users.username, users.lolaccount, users.dota2account, users.lolmmr, users.dota2mmr \
              from challenges, users \
              where challenges.userId = users.id;",
      values: []
    }
  }
}

export {Challenges}
