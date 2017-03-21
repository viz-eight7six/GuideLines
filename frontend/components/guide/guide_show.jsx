import React from 'react';
import { Link } from 'react-router';

class GuideShow extends React.Component {

  componentDidMount(){
    this.props.getGuide(this.props.guide.id);
  }

render(){
  let steps;
  if(this.props.guide.steps){
    steps = this.props.guide.steps.map((step, idx) => {
        return (
          <li key={idx} className="steps-show">
            <h1>Step {idx+1}: {step.title}</h1>
            <br/> <img src={step.photo_url}/>
            <br/>{step.body}
            </li>

        );
    });
  }
  return(
    <section className="guide-full-container">
      <div className="guide-show-header">
        <h1 className="guide-title">{this.props.guide.title}</h1>
        <h2>by: {this.props.guide.owner.username}</h2>
      </div>
      <div className="guide-body">
        <div className="guide-show-container">
          <br/>
          <img src={this.props.guide.photo_url}/>
          <br/>
          {this.props.guide.body}
          <br/>
          <ul>
            {steps}
          </ul>
          <Link to="/guides">back to index</Link>
        </div>
        <div className="guide-creator-info-container">
          <span className="guide-creator-info">
            {this.props.guide.owner.username}
            <img src={this.props.guide.owner.photo_url} height='42' width='42'/>

          </span>

        </div>
      </div>
    </section>
    );
  }
}

export default GuideShow;
