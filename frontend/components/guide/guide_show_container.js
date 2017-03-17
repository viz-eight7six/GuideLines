import React from 'react';
import { connect } from 'react-redux';
import { getGuide } from '../../actions/guide_actions';
import GuideShow from './guide_show';
import _ from 'lodash';

const mapStateToProps = (state, ownProps) => ({
  guide: state.guide.guides[ownProps.params.guideId]
});

const mapDispatchToProps = dispatch => ({
  getGuide: (id) => dispatch(getGuide(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideShow);
