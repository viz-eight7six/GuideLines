import React from 'react';
import { connect } from 'react-redux';
import { getGuide } from '../../actions/guide_actions';
import GuideShow from './guide_show';
import _ from 'lodash';

const mapStateToProps = (state, ownProps) => {
  return (
    {
    guide: state.guide.guide || {
      owner: "", steps: [], photo_url: "", id: 0, title: "", body: ''
    }
  });
};

const mapDispatchToProps = dispatch => ({
  getGuide: (id) => dispatch(getGuide(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideShow);
