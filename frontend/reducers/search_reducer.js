import { RECEIVE_SEARCH } from "../actions/search_actions";
import merge from 'lodash/merge';

const searchReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_SEARCH:
      return merge({}, state, action.searchResults);
    default:
      return state;
  }
};

export default searchReducer;
