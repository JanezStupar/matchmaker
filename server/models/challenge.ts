/**
 * Created by janez on 23.12.2016.
 */
import {BaseModel, IBaseAttributes} from "./base";

enum GAMES {
  'DOTA2',
  'LOL'
}

interface IChallengeAttributes extends IBaseAttributes {
  id: number;
  userid: number;
  game: GAMES;
  createdat: Date;
  stake: number;
  token: string;
}

class Challenge extends BaseModel {
  protected attributes: IChallengeAttributes;
}

export {Challenge, GAMES, IChallengeAttributes}
