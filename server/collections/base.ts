/**
 * Created by janez on 23.12.2016.
 */
import {BaseModel, IPreparedStatement, DaoBase} from '../models/base';
import {Observable} from 'rxjs/Rx';
import {queryResult} from 'pg-promise';

abstract class BaseCollection extends DaoBase {
  abstract get modelType(): any;

  protected abstract _get_sql(): IPreparedStatement

  /**
   * Return all the models
   * @returns {any}
   */
  public get():Observable<BaseModel> {
    return Observable
      .fromPromise(
        BaseModel.Manager().db.many(this._get_sql())
      )
      .flatMap((resultset:queryResult[]) => {
        return Observable.from(resultset)
      })
      .map((entry:queryResult) => {
        return new this.modelType(entry)
      });
  }
}

export {BaseCollection}
