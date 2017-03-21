import {RECEIVE_ALL_GUIDES, RECEIVE_GUIDE,
  CREATE_GUIDE,RECEIVE_GUIDE_ERRORS,
  CLEAR_GUIDE_ERRORS} from "../actions/guide_actions";
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
    case RECEIVE_GUIDE_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_GUIDE_ERRORS:
      let newGuide = merge({}, state);
      return Object.assign(newGuide, {errors:[]});
    default:
      return state;
  }
};

export default guideReducer;
