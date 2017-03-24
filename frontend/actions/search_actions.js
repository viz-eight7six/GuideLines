import * as GuideApiUtil from '../util/guide_api_util';
import { receiveAllGuides } from "./guide_actions";
export const RECEIVE_SEARCH = 'RECEIVE_SEARCH';

export const receiveSearch = (searchResults) => ({
  type: RECEIVE_SEARCH,
  searchResults
});

export const searchGuides = (searchTerm) => dispatch => (
  GuideApiUtil.fetchGuides(searchTerm)
  .then((guides => dispatch(receiveAllGuides(guides))))
);
