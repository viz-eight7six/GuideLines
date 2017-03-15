import { connect } from 'react-redux';
import { login, logout, signup } from '../../actions/session_actions';
import Greeting from './greeting';


const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  logout: () => dispatch(logout())
});



export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
