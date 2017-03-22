import {RECEIVE_ALL_COMMENTS, RECEIVE_COMMENT,
  CREATE_COMMENT,RECEIVE_COMMENT_ERRORS,
  CLEAR_COMMENT_ERRORS} from "../actions/comment_actions";
import {merge} from 'lodash';

const commentReducer = (state = {errors: []}, action) => {
  switch (action.type) {
    case RECEIVE_ALL_COMMENTS:
      let comments = action.comments;
      return merge({}, state, {comments});
    case RECEIVE_COMMENT:
      let comment = action.comment;
      return merge({}, state, {comment});
    case CREATE_COMMENT:
      comment = action.comment;
      return merge({}, state, {comment});
    case RECEIVE_COMMENT_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_COMMENT_ERRORS:
    let newGuide = merge({}, state);
    return Object.assign(newGuide, {errors:[]});
    default:
      return state;
  }
};

export default commentReducer;
