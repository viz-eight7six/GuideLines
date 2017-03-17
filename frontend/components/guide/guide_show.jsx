import React from 'react';
import { Link } from 'react-router';

class GuideShow extends React.Component {

  componentDidMount(){
    this.props.getGuide(this.props.guide.id);
  }

render(){
  return(
    <div>
      {this.props.guide.title}
      {this.props.guide.body}
      <Link to="/guides">back to index</Link>/>
    </div>
    );
  }
}

export default GuideShow;
