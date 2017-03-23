import { connect } from 'react-redux';
import { getGuide, makeGuide, clearGuideErrors } from '../../actions/guide_actions';
import GuideForm from './guide_form';
import { makeStep } from '../../actions/step_actions';
import _ from 'lodash';


const mapStateToProps = (state, ownProps) => {
  let guide = { title: "", body: "", steps: []};
  let loggedIn = Boolean(state.session.currentUser);
  let errors = state.guide.errors;
  let currentUser = state.session.currentUser;
  return { guide, loggedIn, errors, currentUser};
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    makeGuide: guide => dispatch(makeGuide(guide)),
    clearGuideErrors: () => dispatch(clearGuideErrors),
    makeStep: step => dispatch(makeStep(step))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideForm);
