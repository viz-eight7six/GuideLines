import * as stepApi from "../util/step_api_util";
import {hashHistory} from "react-router";


export const RECEIVE_ALL_STEPS = "RECEIVE_ALL_STEPS";
export const RECEIVE_STEP = "RECEIVE_STEP";
export const CREATE_STEP = "CREATE_STEP";
export const RECEIVE_STEP_ERRORS = "RECEIVE_STEP_ERRORS";
export const CLEAR_STEP_ERRORS = "CLEAR_STEP_ERRORS";

export const receiveAllSteps = (steps) => ({
  type: RECEIVE_ALL_STEPS,
  steps
});
export const receiveStep = (step) => ({
  type: RECEIVE_STEP,
  step
});
export const createStep = (step) => ({
  type: CREATE_STEP,
  step
});
export const receiveStepErrors = (errors) => ({
  type: RECEIVE_STEP_ERRORS,
  errors
});
export const clearStepErrors = () => ({
  type: CLEAR_STEP_ERRORS
});

export const getAllSteps = () => dispatch => (
  stepApi.fetchSteps().then(steps =>
    dispatch(receiveAllSteps(steps)))
);

export const getStep = (id) => dispatch => (
  stepApi.fetchStep(id).then(step =>
    dispatch(receiveStep(step)),
      errors => dispatch(receiveStepErrors(errors.responseJSON)))
);
export const makeStep = (newStep) => dispatch => (
  stepApi.createStep(newStep).then(step =>
    dispatch(receiveStep(step)),
      errors => dispatch(receiveStepErrors(errors.responseJSON)))
      // .then((step) => hashHistory.push(`/steps/${step.id}`))
);
export const removeStep = () => dispatch => (
  stepApi.deleteStep().then(step =>
    dispatch(receiveStep(null)),
      errors => dispatch(receiveStepErrors(errors.responseJSON)))
);
