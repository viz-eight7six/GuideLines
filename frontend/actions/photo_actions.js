import * as photoApi from "../util/photo_api_util";
import {hashHistory} from "react-router";

export const RECEIVE_ALL_PHOTOS = "RECEIVE_ALL_PHOTOS";
export const RECEIVE_PHOTO = "RECEIVE_PHOTO";
export const CREATE_PHOTO = "CREATE_PHOTO";
export const RECEIVE_PHOTO_ERRORS = "RECEIVE_PHOTO_ERRORS";
export const CLEAR_PHOTO_ERRORS = "CLEAR_PHOTO_ERRORS";

export const receiveAllPhotos = (photos) => ({
  type: RECEIVE_ALL_PHOTOS,
  photos
});
export const receivePhoto = (photo) => ({
  type: RECEIVE_PHOTO,
  photo
});
export const createPhoto = (photo) => ({
  type: CREATE_PHOTO,
  photo
});
export const receivePhotoErrors = (errors) => ({
  type: RECEIVE_PHOTO_ERRORS,
  errors
});
export const clearPhotoErrors = () => ({
  type: CLEAR_PHOTO_ERRORS
});
//
// export const getAllPhotos = () => dispatch => (
//   photoApi.fetchPhotos().then(photos =>
//     dispatch(receiveAllPhotos(photos)))
// );
//
// export const getPhoto = (id) => dispatch => (
//   photoApi.fetchPhoto(id).then(photo =>
//     dispatch(receivePhoto(photo)),
//       errors => dispatch(receivePhotoErrors(errors.responseJSON)))
// );
export const makePhoto = (newPhoto) => dispatch => (
  photoApi.create(newPhoto).then(photo =>
    dispatch(receivePhoto(photo)),
      errors => dispatch(receivePhotoErrors(errors.responseJSON)))
      // .then((photo) => hashHistory.push(`/photos/${photo.id}`))
);
export const removePhoto = () => dispatch => (
  photoApi.remove().then(photo =>
    dispatch(receivePhoto(null)),
      errors => dispatch(receivePhotoErrors(errors.responseJSON)))
);
