import React from 'react';
import { Link } from 'react-router';

class GuideShow extends React.Component {

  componentDidMount(){
    this.props.getGuide(this.props.guide.id);
  }

render(){
  let steps = this.props.guide.steps.map(step => (
    <li><strong>{step.title}</strong><br/>{step.body}</li>
  ));
  return(
    <div>
      {this.props.guide.title}
      <br/>
      {this.props.guide.body}
      <br/>
      <h1>Steps</h1>
        <ul>
          {steps}
        </ul>

      <Link to="/guides">back to index</Link>/>
    </div>
    );
  }
}

export default GuideShow;
