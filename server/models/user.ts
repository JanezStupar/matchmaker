/**
 * Created by janez on 22.12.2016.
 */
import {BaseModel, IBaseAttributes} from "./base";

interface IUserAttributes extends IBaseAttributes {
  id: number;
  username: string;
  lolaccount: string;
  dota2account: string;
  lolmmr: number;
  dota2mmr: number;
}

class User extends BaseModel {
  protected attributes: IUserAttributes
}

export {User, IUserAttributes}
