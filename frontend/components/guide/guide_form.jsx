import React from 'react';
import { Link, withRouter } from 'react-router';

class GuideForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = props.guide;
      this.handleSubmit = this.handleSubmit.bind(this);
  }

  // componentDidUpdate(){
  //   return this.redirectIfLoggedIn();
  // }

  componentWillReceiveProps(newProps) {
      this.props.clearErrors();
  }

  // redirectIfLoggedIn(){
  //   if (this.props.loggedIn){
  //     return this.props.router.push('/');
  //   }
  // }

  handleSubmit(e) {
    e.preventDefault();
    const guide = this.state;
    this.props.makeGuide(guide);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  renderErrors(){
    if(this.props.errors){
      let errors = this.props.errors.map((error, i) => (
        <li key={i} className='errors'>{error}</li>
      ));
      return (
        <ul>
          {errors}
        </ul>
      );
    }
  }
  // renderFooterLink(){
  //   let redirectLink;
  //   if(this.props.formType === 'guide'){
  //     redirectLink = (<Link to='/signup'>Sign Up</Link>);
  //   }
  //   else{
  //     redirectLink = (<label>Already a member? &nbsp; &nbsp;
  //       <Link to='/guide'>Log In</Link>
  //       </label>);
  //   }
  //   return redirectLink;
  // }

  render() {
    return (
      <div className="guide-form-wrapper">
        <div className="guide-header-bar">
          <h1 className="guide-form-header">"New Guide"</h1>
        </div>
        <div className="guide-form-container">
        <form className="guide-form-box"
          onSubmit={this.handleSubmit}>
          <div className="guide-form">
            <label>
              <input type="text" value={this.state.title}
                onChange={this.update('title')}
                placeholder='Title'
                />
            </label>
            <br/>
            <label>
              <textarea value={this.state.body}
                onChange={this.update('body')}
                placeholder='body'
                />
            </label>
            {this.renderErrors()}
            <br/>
          </div>
          <input type="submit" value='Create Guide'></input>
        </form>
      </div>
    </div>
    );
  }


  //...
}

export default withRouter(GuideForm);
