import { connect } from 'react-redux';
import { makePhoto, removePhoto, clearPhotoErrors } from '../../actions/photo_actions';
import PhotoForm from './photo_form';
import _ from 'lodash';


const mapStateToProps = (state, ownProps) => {
  let photos = state.session.currentUser.photos;
  let loggedIn = Boolean(state.session.currentUser);
  // let errors = state.photo.errors;
  return { photos, loggedIn };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    makePhoto: photo => dispatch(makePhoto(photo)),
    clearPhotoErrors: () => dispatch(clearPhotoErrors),
    removePhoto: () => dispatch(removePhoto())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PhotoForm);
