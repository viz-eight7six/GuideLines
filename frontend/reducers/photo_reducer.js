import {RECEIVE_ALL_PHOTOS, RECEIVE_PHOTO,
  CREATE_PHOTO,RECEIVE_PHOTO_ERRORS,
  CLEAR_PHOTO_ERRORS} from "../actions/photo_actions";
import {merge} from 'lodash';

const photoReducer = (state = {errors: []}, action) => {
  switch (action.type) {
    case RECEIVE_ALL_PHOTOS:
      let photos = action.photos;
      return merge({}, state, {photos});
    case RECEIVE_PHOTO:
      let photo = action.photo;
      let newState = merge( {}, state, {photo});
      return newState;
    case CREATE_PHOTO:
      photo = action.photo;
      return merge({}, state, {photo});
    case RECEIVE_PHOTO_ERRORS:
      return merge({}, state, action.errors);
    case CLEAR_PHOTO_ERRORS:
    let newGuide = merge({}, state);
    return Object.assign(newGuide, {errors:[]});
    default:
      return state;
  }
};

export default photoReducer;
