import {RECEIVE_CURRENT_USER, RECEIVE_ERRORS, CLEAR_ERRORS} from "../actions/session_actions";
import merge from 'lodash/merge';

const sessionReducer = (state = {currentUser: null, errors: []}, action) => {
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      console.log("hello");
      let currentUser = action.currentUser;
      return merge({}, state, {currentUser});
    case RECEIVE_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};

export default sessionReducer;
