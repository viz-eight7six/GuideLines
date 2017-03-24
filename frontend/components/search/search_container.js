import { connect } from 'react-redux';
import Search from './search';
import { searchGuides } from "../../actions/search_actions";

const mapStateToProps = (state) => ({
  searches: state.searches
});

const mapDispatchToProps = (dispatch) => ({
  searchGuides: (searchTerm) => dispatch(searchGuides(searchTerm))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search);
