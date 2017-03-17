import { connect } from 'react-redux';
import { getGuide, makeGuide, clearErrors } from '../../actions/guide_actions';
import GuideForm from './guide_form';
import _ from 'lodash';


const mapStateToProps = (state, ownProps) => {
  let guide = { title: "", body: "" };
  return { guide };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    getGuide: (id) => dispatch(getGuide(id)),
    makeGuide: guide => dispatch(makeGuide(guide)),
    clearErrors: () => dispatch(clearErrors)
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GuideForm);
