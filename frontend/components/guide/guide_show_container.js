import React from 'react';
import { connect } from 'react-redux';
import { getGuide } from '../../actions/guide_actions';
import GuideShow from './guide_show';
import _ from 'lodash';

const mapStateToProps = (state, ownProps) => {
  return (
    {
    guide: state.guide.guides[ownProps.params.guideId] || state.guide.guide,
    comments: state.guide.guides[ownProps.params.guideId].comments,
    newComment: state.comment.comment
  });
};

const mapDispatchToProps = dispatch => ({
  getGuide: (id) => dispatch(getGuide(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideShow);
