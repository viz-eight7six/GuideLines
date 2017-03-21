import {RECEIVE_ALL_STEPS, RECEIVE_STEP,
  CREATE_STEP,RECEIVE_STEP_ERRORS,
  CLEAR_STEP_ERRORS} from "../actions/step_actions";
import {merge} from 'lodash';

const stepReducer = (state = {errors: []}, action) => {
  switch (action.type) {
    case RECEIVE_ALL_STEPS:
      let steps = action.steps;
      return merge({}, state, {steps});
    case RECEIVE_STEP:
      let step = action.step;
      return merge({}, state, {step});
    case CREATE_STEP:
      step = action.step;
      return merge({}, state, {step});
    case RECEIVE_STEP_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_STEP_ERRORS:
      return [];
    default:
      return state;
  }
};

export default stepReducer;
