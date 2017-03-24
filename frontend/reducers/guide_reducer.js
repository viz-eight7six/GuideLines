import {RECEIVE_ALL_GUIDES, RECEIVE_GUIDE,
  CREATE_GUIDE,RECEIVE_GUIDE_ERRORS,
  CLEAR_GUIDE_ERRORS, RECEIVE_ALL_COMMENTS, RECEIVE_COMMENT,
    CREATE_COMMENT, DELETE_COMMENT} from "../actions/guide_actions";
import {merge} from 'lodash';

let defaultState = {
  guides: [],
  guide: {
    steps: [],
    owner: {
      username: ""
    },
    title: "",
    body: "",
    photo_url: ""
   },
  errors: []};

const guideReducer = (state = defaultState, action) => {
  switch (action.type) {
    case RECEIVE_ALL_COMMENTS:
      let comments = action.comments;
      return merge({}, state, {comments});
    case RECEIVE_COMMENT:
      let comment = action.comment;
      let newState = merge( {}, state );
      newState.guides[action.comment.guide.id].comments.push(action.comment);
      return newState;
    case CREATE_COMMENT:
      comment = action.comment;
      return merge({}, state, {comment});
    case DELETE_COMMENT:
      newState = merge({}, state);
      let idx = newState.guides[action.id.guide_id].comments.findIndex((c) => (c.id === action.id.id));
      newState.guides[action.id.guide_id].comments.splice(idx, 1);
      return newState;
    case RECEIVE_ALL_GUIDES:
      let guides = action.guides;
      return merge({}, state, {guides});
    case RECEIVE_GUIDE:
      debugger
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
