import {RECEIVE_CURRENT_USER, RECEIVE_ERRORS, CLEAR_ERRORS} from "../actions/session_actions";
import {merge} from 'lodash';

const sessionReducer = (state = {currentUser: null, errors: []}, action) => {
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      let currentUser = action.currentUser;
      return merge({}, state, {currentUser});
    case RECEIVE_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_ERRORS:
      let newState = merge({}, state);
      return Object.assign(newState, {errors: []});
    default:
      return state;
  }
};

export default sessionReducer;
