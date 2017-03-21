import * as guideApi from "../util/guide_api_util";
import {hashHistory} from "react-router";

export const RECEIVE_ALL_GUIDES = "RECEIVE_ALL_GUIDES";
export const RECEIVE_GUIDE = "RECEIVE_GUIDE";
export const CREATE_GUIDE = "CREATE_GUIDE";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const receiveAllGuides = (guides) => ({
  type: RECEIVE_ALL_GUIDES,
  guides
});
export const receiveGuide = (guide) => ({
  type: RECEIVE_GUIDE,
  guide
});
export const createGuide = (guide) => ({
  type: CREATE_GUIDE,
  guide
});
export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});
export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export const getAllGuides = () => dispatch => (
  guideApi.fetchGuides().then(guides =>
    dispatch(receiveAllGuides(guides)))
);

export const getGuide = (id) => dispatch => (
  guideApi.fetchGuide(id).then(guide =>
    dispatch(receiveGuide(guide)),
      errors => dispatch(receiveErrors(errors.responseJSON)))
);
export const makeGuide = (newGuide) => dispatch => (
  guideApi.createGuide(newGuide).then(guide =>
    dispatch(receiveGuide(guide)),
      errors => dispatch(receiveErrors(errors.responseJSON)))
      .then(res => hashHistory.push(`/guides/${res.guide.id}`))
);
export const removeGuide = () => dispatch => (
  guideApi.deleteGuide().then(guide =>
    dispatch(receiveGuide(null)),
      errors => dispatch(receiveErrors(errors.responseJSON)))
);
