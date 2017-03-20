import React from 'react';
import { connect } from 'react-redux';
import { getStep } from '../../actions/step_actions';
import StepShow from './step_show';
import _ from 'lodash';

const mapStateToProps = (state, ownProps) => ({
  steps: state.step.steps
});

const mapDispatchToProps = dispatch => ({
  getStep: (id) => dispatch(getStep(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StepShow);
