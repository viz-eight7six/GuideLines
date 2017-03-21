import {combineReducers} from 'redux';
import SessionReducer from './session_reducer';
import GuideReducer from './guide_reducer';
import StepReducer from './step_reducer';

export default combineReducers({
  session: SessionReducer,
  guide: GuideReducer,
  step: StepReducer
});
