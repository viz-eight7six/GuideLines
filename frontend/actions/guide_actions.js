import * as guideApi from "../util/guide_api_util";
import {hashHistory} from "react-router";

export const RECEIVE_ALL_GUIDES = "RECEIVE_ALL_GUIDES";
export const RECEIVE_GUIDE = "RECEIVE_GUIDE";
export const CREATE_GUIDE = "CREATE_GUIDE";
export const RECEIVE_GUIDE_ERRORS = "RECEIVE_GUIDE_ERRORS";
export const CLEAR_GUIDE_ERRORS = "CLEAR_GUIDE_ERRORS";

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
export const receiveGuideErrors = (errors) => ({
  type: RECEIVE_GUIDE_ERRORS,
  errors
});
export const clearGuideErrors = () => ({
  type: CLEAR_GUIDE_ERRORS
});

export const getAllGuides = () => dispatch => (
  guideApi.fetchGuides().then(guides =>
    dispatch(receiveAllGuides(guides)))
);

export const getGuide = (id) => dispatch => (
  guideApi.fetchGuide(id).then(guide =>
    dispatch(receiveGuide(guide)),
      errors => dispatch(receiveGuideErrors(errors.responseJSON)))
);
export const makeGuide = (newGuide) => dispatch => (
  guideApi.createGuide(newGuide).then(guide =>
    dispatch(receiveGuide(guide)),
      errors => dispatch(receiveGuideErrors(errors.responseJSON)))
      .then(res => hashHistory.push(`/guides/${res.guide.id}`))
);
export const removeGuide = () => dispatch => (
  guideApi.deleteGuide().then(guide =>
    dispatch(receiveGuide(null)),
      errors => dispatch(receiveGuideErrors(errors.responseJSON)))
);
