import React from 'react';
import { Link, hashHistory } from 'react-router';
import CommentFormContainer from "../comment/comment_form_container";

class GuideShow extends React.Component {

  constructor(props){
    super(props);
    this.state = props;
    this.removeComment = this.removeComment.bind(this);
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
  toIndex() {
    hashHistory.push('/guides');
  }

  removeComment(comment) {
    let id = comment.id;
    this.props.deleteComment(id);
  }

  editGuide() {
    hashHistory.push(`/guides/${this.state.guide.id}/edit`);
  }

render(){
  let steps;
  if(this.props.guide.steps){
    steps = this.props.guide.steps.map((step, idx) => {
        return (
          <li key={idx} className="steps-show">
            <div>
              <h1>Step {idx+1}: {step.title}</h1>
              <br/> <img src={step.photo_url}/>
              <br/>{step.body}
            </div>
            </li>

        );
    });
  }
  let comments;
  if(this.props.guide.comments){
    comments = this.props.guide.comments.map((comment, idx) => {
      let timeStamp = <h1>Just Now</h1>;
      if(comment.created_at){
        timeStamp = <h1> {comment.created_at.toString().slice(0, 10)} </h1>;
      }
      // <h1> {comment.created_at.toString().slice(0, 10)} </h1>
        return (
          <li key={comment.id} >
            <div className="comment-head">
              <div>
                <img className="comment-user-img" src={comment.author.photo_url}/>
                <h1> {comment.author.username}</h1>
              </div>
              <div>
                {timeStamp}<br/>
                <label className="btn">
                  <input type="checkbox" id="btnControl" onClick={this.removeComment.bind(this, comment)}/>
                  delete</label>
              </div>
            </div>
            <div>
              <h1>{comment.body}</h1>
            </div>
          </li>
        );
    });
  }
  // let editButton;
  // if(this.state.guide.owner.id === this.state.current_user.id){
  //   editButton = <label className="btn">
  //     <input type="checkbox" id="btnControl" onClick={this.editGuide}/>
  //     edit</label>;
  // }


  return(
    <section className="guide-full-container">
      <div className="guide-show-header">
        <h1 className="guide-title">{this.props.guide.title}</h1>
        <h2>by: {this.props.guide.owner.username}</h2>
      </div>
      <div className="guide-body">
        <div className="guide-show-container">
          <div className="guide-show">
            <div className="guide-info">
              <img src={this.props.guide.photo_url}/>
              <br/>
              {this.props.guide.body}
              <br/>
            </div>
            <ul>
              {steps}
            </ul>
          </div>
          <div className="comments-show-container">
            <div className="comment-form-container">
              <CommentFormContainer gid={this.props.guide.id}/>
            </div>
            <br/>
            <ul className="comments-show">
              {comments}
            </ul>
          </div>
        </div>
        <div className="guide-creator-info-container">
          <span className="guide-creator-info">
            {this.props.guide.owner.username}
            <img src={this.props.guide.owner.photo_url} height='42' width='42'/>
            <br/>
            <br/>
            <label className="btn">
              <input type="checkbox" id="btnControl" onClick={this.toIndex}/>
              Guide Index</label>
          </span>

        </div>
      </div>
    </section>
    );
  }
}

export default GuideShow;
