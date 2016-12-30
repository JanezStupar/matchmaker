/**
 * Created by janez on 22.12.2016.
 */
import {Manager} from './manager'

const manager = new Manager();

/**
 * We use prepared statements for our queries to avoid SQL injection
 */
interface IPreparedStatement {
  name: string;
  text: string;
  values: Array<any>;
}

/**
 * Base attributes interface, used for model attributes
 */
interface IBaseAttributes {}

abstract class DaoBase {
  protected manager:Manager;

  constructor() {
    this.manager = manager;
  }

  static Manager() {
    return manager;
  }
}

abstract class BaseModel extends DaoBase {
  protected abstract attributes: IBaseAttributes;

  constructor (entity: IBaseAttributes) {
    super();
    this.attributes = entity;
  }

  public toJSON(): IBaseAttributes {
    return this.attributes;
  };
}

export {IPreparedStatement, BaseModel, DaoBase, IBaseAttributes}
