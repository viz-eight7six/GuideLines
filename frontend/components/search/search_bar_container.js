import { connect } from 'react-redux';
import SearchBar from './search_bar';
import { searchGuides } from "../../actions/search_actions";

const mapStateToProps = (state) => ({
});

const mapDispatchToProps = (dispatch) => ({
  searchGuides: (searchTerm) => dispatch(searchGuides(searchTerm))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);
