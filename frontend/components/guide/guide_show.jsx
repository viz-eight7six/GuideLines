import React from 'react';
import { Link } from 'react-router';
import CommentFormContainer from "../comment/comment_form_container";

class GuideShow extends React.Component {

  constructor(props){
    super(props);
    this.state = props;
  }

  componentDidMount(){
    this.props.getGuide(this.props.guide.id);
  }

  componentWillReceiveProps(nextProps){
    if(this.props.newComment !== nextProps.newComment){
      this.props.getGuide(this.props.guide.id);
    }
  }

  // componentDidUpdate(){
  //   this.props.getGuide(this.props.guide.id);
  // }

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
  let comments;
  if(this.props.guide.comments){
    comments = this.props.guide.comments.map((comment, idx) => {
        return (
          <li key={idx} >
            <div className="comment-head">
              <div>
                <img className="comment-user-img" src={comment.author.photo_url}/>
                <h1> {comment.author.username}</h1>
              </div>
              <div>
                <h1> {comment.created_at} </h1>
              </div>
            </div>
            <div>
              <h1>{comment.body}</h1>
            </div>
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
          <span className="guide-show">
            <br/>
            <img src={this.props.guide.photo_url}/>
            <br/>
            {this.props.guide.body}
            <br/>
            <ul>
              {steps}
            </ul>
          </span>
          <span className="comments-show-container">
            <div className="comment-form-container">
              <CommentFormContainer gid={this.props.guide.id}/>
            </div>
            <br/>
            <ul className="comments-show">
              {comments}
            </ul>
          </span>
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
