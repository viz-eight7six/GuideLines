import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
          username: "",
          password: ""
      };
      this.loginDemoUser = this.loginDemoUser.bind(this);
      this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidUpdate(){
    return this.redirectIfLoggedIn();
  }

  componentWillReceiveProps(newProps) {
    if (this.props.formType !== newProps.formType) {
      this.props.clearErrors();
    }
  }

  redirectIfLoggedIn(){
    if (this.props.loggedIn){
      this.props.clearErrors();
      return this.props.router.push('/');
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm(user);
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
  renderFooterLink(){
    let redirectLink;
    if(this.props.formType === 'login'){
      redirectLink = (<Link to='/signup'>Sign Up</Link>);
    }
    else{
      redirectLink = (<label>Already a member? &nbsp; &nbsp;
        <Link to='/login'>Log In</Link>
        </label>);
    }
    return redirectLink;
  }

  loginDemoUser(){
    const demoUser = {
      username: "demo_user", password: "password"
    };
    this.props.clearErrors();
    this.props.login(demoUser);
  }

  render() {
    return (
      <div className="login-wrapper">
        <div className="login-header-bar">
          <h1 className="login-form-header">{this.props.formType}</h1>
        </div>
        <div className="login-form-container">
        <form className="login-form-box"
          onSubmit={this.handleSubmit}>
          <div className="login-form">
            <label>
              <input type="text" value={this.state.username}
                onChange={this.update('username')}
                placeholder='Username'
                />
            </label>
            <br/>
            <label>
              <input type="password" value={this.state.password}
                onChange={this.update('password')}
                placeholder='Password'
                />
            </label>
            {this.renderErrors()}
            <br/>
          </div>
          <input type="submit" value={this.props.formType}></input>
          <input type="button" value="Demo" onClick={this.loginDemoUser}></input>
        </form>

        <div className="login-footer-bar">
          {this.renderFooterLink()}
        </div>
        <span>Welcome to Guidelines</span>
      </div>
    </div>
    );
  }


  //...
}

export default withRouter(SessionForm);
