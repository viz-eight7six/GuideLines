import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
          username: "",
          password: ""
      };
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
        <li key={i}>{error}</li>
      ));
      return (
        <ul>
          {errors}
        </ul>
      );
    }
  }

  render() {
    return (
      <div>
      <h1>{this.props.formType}</h1>
      <form onSubmit={this.handleSubmit}>
        <label>Username
          <input type="text" value={this.state.username}
            onChange={this.update('username')}
            />
        </label>
        <br/>
        <label>Password
          <input type="password" value={this.state.password}
            onChange={this.update('password')}
            />
        </label>
        {this.renderErrors()}
        <br/>
        <input type="submit" value="Submit"></input>
      </form>
    </div>
    );
  }


  //...
}

export default withRouter(SessionForm);
