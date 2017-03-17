import { connect } from 'react-redux';
import { getAllGuides, getGuide,
  makeGuide, removeGuide } from '../../actions/guide_actions';
import GuidesIndex from './guides_index';
import _ from 'lodash';


const mapStateToProps = (state, ownProps) => ({
  guides: _.values(state.guide.guides)
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  getAllGuides: () => dispatch(getAllGuides()),
});



export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuidesIndex);
