import React from 'react';
import { Link, withRouter, hashHistory } from 'react-router';

class CommentForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = this.props.comment;
      this.state.guide_id = this.props.gid;
      this.handleSubmit = this.handleSubmit.bind(this);
      this.update = this.update.bind(this);
      this.setState = this.setState.bind(this);
  }

  componentDidUpdate(){

  }



  redirectIfNotLoggedIn(){
    if (!this.props.loggedIn){
      return this.props.router.push('/login');
    }
  }

  // componentWillReceiveProps(newProps) {
  //     this.returnComment();
  // }

  handleSubmit(e) {
    e.preventDefault();
    const comment = this.state;
    this.props.createComment(comment);
    this.props.router.push(`/guides/${this.state.guide_id}`);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  // renderErrors(){
  //   if(this.props.errors){
  //     let errors = this.props.errors.map((error, i) => (
  //       <li key={i} className='errors'>{error}</li>
  //     ));
  //     return (
  //       <ul>
  //         {errors}
  //       </ul>
  //     );
  //   }
  // }

  // returnComment () {
  //   return this.props.updateComments(this.state, this.props.id);
  // }
  //
  // removeComment () {
  //   return this.props.deleteComment(this.props.id);
  // }


  render() {
    return (
      <div className="comment-form-wrapper">
        <div className="comment-header-bar">
          <h1 className="comment-form-header">Write a Comment</h1>
        </div>
        <div className="comment-form-container">
        <form className="comment-form-box" onSubmit={this.handleSubmit}>
          <div className="comment-form">
            <label>
              <br/>
              <textarea className="textarea-input" value={this.state.body}
                  onChange={this.update('body')}
                placeholder='Description'
                />
            </label>
            <br/>
            <input type="submit" value="Submit Comment"></input>
          </div>
        </form>
      </div>
    </div>
    );
  }

  // {this.renderErrors()}
  // <input type="submit" value='Create Comment'></input>

  //...
}

export default withRouter(CommentForm);