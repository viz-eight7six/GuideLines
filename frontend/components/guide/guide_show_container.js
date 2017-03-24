import React from 'react';
import { connect } from 'react-redux';
import { getGuide, deleteComment} from '../../actions/guide_actions';
import GuideShow from './guide_show';
import _ from 'lodash';
import { createSelector } from 'reselect';

const guidesSelector = state => state.guide.guides;

const mapStateToProps = (state, ownProps) => {
  let comments = [];
  if (state.guide.guides[ownProps.params.guideId]){
    comments = state.guide.guides[ownProps.params.guideId].comments;
  }

  let guides = guidesSelector(state);
  return (
    {
    guide: guides[ownProps.params.guideId] || state.guide.guide,
    comments,
    newComment: state.comment.comment || "",
    current_user: state.session.current_user
  });
};

const mapDispatchToProps = dispatch => ({
  getGuide: (id) => dispatch(getGuide(id)),
  deleteComment: (id) => dispatch(deleteComment(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideShow);
