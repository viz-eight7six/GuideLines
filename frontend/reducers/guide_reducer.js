import {RECEIVE_ALL_GUIDES, RECEIVE_GUIDE,
  CREATE_GUIDE,RECEIVE_ERRORS,
  CLEAR_ERRORS} from "../actions/guide_actions";
import {merge} from 'lodash';

const guideReducer = (state = {errors: []}, action) => {
  switch (action.type) {
    case RECEIVE_ALL_GUIDES:
      let guides = action.guides;
      return merge({}, state, {guides});
    case RECEIVE_GUIDE:
      let guide = action.guide;
      return merge({}, state, {guide});
    case CREATE_GUIDE:
      guide = action.guide;
      return merge({}, state, {guide});
    case RECEIVE_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};

export default guideReducer;
