import * as commentApi from "../util/comment_api_util";
import {hashHistory} from "react-router";

export const RECEIVE_ALL_COMMENTS = "RECEIVE_ALL_COMMENTS";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const CREATE_COMMENT = "CREATE_COMMENT";
export const RECEIVE_COMMENT_ERRORS = "RECEIVE_COMMENT_ERRORS";
export const CLEAR_COMMENT_ERRORS = "CLEAR_COMMENT_ERRORS";

export const receiveAllComments = (comments) => ({
  type: RECEIVE_ALL_COMMENTS,
  comments
});
export const receiveComment = (comment) => ({
  type: RECEIVE_COMMENT,
  comment
});
export const createComment = (comment) => ({
  type: CREATE_COMMENT,
  comment
});
export const receiveCommentErrors = (errors) => ({
  type: RECEIVE_COMMENT_ERRORS,
  errors
});
export const clearCommentErrors = () => ({
  type: CLEAR_COMMENT_ERRORS
});

export const getAllComments = () => dispatch => (
  commentApi.fetchComments().then(comments =>
    dispatch(receiveAllComments(comments)))
);

export const getComment = (id) => dispatch => (
  commentApi.fetchComment(id).then(comment =>
    dispatch(receiveComment(comment)),
      errors => dispatch(receiveCommentErrors(errors.responseJSON)))
);
export const makeComment = (newComment) => dispatch => (
  commentApi.createComment(newComment).then(comment =>
    dispatch(receiveComment(comment)),
      errors => dispatch(receiveCommentErrors(errors.responseJSON)))
      // .then((comment) => hashHistory.push(`/comments/${comment.id}`))
);
export const removeComment = () => dispatch => (
  commentApi.deleteComment().then(comment =>
    dispatch(receiveComment(null)),
      errors => dispatch(receiveCommentErrors(errors.responseJSON)))
);
