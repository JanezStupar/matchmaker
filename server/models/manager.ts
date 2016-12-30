/**
 * Created by janez on 22.12.2016.
 */
import * as config from '../config';
import {IMain, IDatabase} from 'pg-promise';
import * as pgPromise from 'pg-promise';

var pgp:IMain = pgPromise({
  // Initialization Options
});

export class Manager {
  db:IDatabase<any>;
  constructor () {
    this.db = pgp(config.dbUri);
  }
}
