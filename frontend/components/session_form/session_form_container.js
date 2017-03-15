import { connect } from 'react-redux';
import { login, logout, signup } from '../../actions/session_actions';
import SessionForm from './session_form';


const mapStateToProps = (state, ownProps) => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.errors,
  formType: ownProps.location.pathname.slice(1) === 'login' ? 'login' : "signup"
});

const mapDispatchToProps = (dispatch, ownProps) => {
  let processForm = ownProps.location.pathname.slice(1) === 'login' ? login : signup;

  return {
    processForm: (user) => dispatch(processForm(user))
  };
};



export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
