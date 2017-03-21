import { connect } from 'react-redux';
import { getGuide, makeGuide, clearErrors } from '../../actions/guide_actions';
import GuideForm from './guide_form';
import { makeStep } from '../../actions/step_actions';
import _ from 'lodash';


const mapStateToProps = (state, ownProps) => {
  let guide = { title: "", body: "", steps: []};
  let loggedIn = Boolean(state.session.currentUser);
  let errors = state.guide.errors;
  return { guide, loggedIn, errors};
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    makeGuide: guide => dispatch(makeGuide(guide)),
    clearErrors: () => dispatch(clearErrors),
    makeStep: step => dispatch(makeStep(step))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideForm);
