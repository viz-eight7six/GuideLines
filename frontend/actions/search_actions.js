import * as SearchApiUtil from '../util/search_api_util.js';
import { receiveAllGuides } from "./guide_actions";
export const RECEIVE_SEARCH = 'RECEIVE_SEARCH';

export const receiveSearch = (searchResults) => ({
  type: RECEIVE_SEARCH,
  searchResults
});

export const searchGuides = (searchTerm) => dispatch => (
  SearchApiUtil.searchGuides(searchTerm)
  .then((guides => dispatch(receiveAllGuides(guides))))
);
