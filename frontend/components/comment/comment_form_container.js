import { connect } from 'react-redux';
import { getComment, clearCommentErrors } from '../../actions/comment_actions';
import CommentForm from './comment_form';
import {createComment, deleteComment} from '../../actions/guide_actions';
import _ from 'lodash';


const mapStateToProps = (state, ownProps) => {
  let comment = { body: "" };
  let loggedIn = Boolean(state.session.currentUser);
  // let errors = state.comment.errors;
  let updateComments = ownProps.updateComments;
  return { comment, loggedIn, updateComments};
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    createComment: comment => dispatch(createComment(comment)),
    clearCommentErrors: () => dispatch(clearCommentErrors)
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CommentForm);
