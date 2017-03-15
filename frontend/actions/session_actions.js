import * as sessionApi from "../util/session_api_util";

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});
export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

export const login = user => dispatch => (
  sessionApi.login(user).then(currentUser =>
    dispatch(receiveCurrentUser({currentUser})))
);

export const signup = user => dispatch => (
  sessionApi.signup(user).then(currentUser =>
    dispatch(receiveCurrentUser({currentUser})))
);

export const logout = () => dispatch => (
  sessionApi.logout().then(user =>
    dispatch(receiveCurrentUser(null)))
);
