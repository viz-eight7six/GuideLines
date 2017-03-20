import React from 'react';
import { Link, withRouter } from 'react-router';

class StepForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = this.props.step;
      this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidUpdate(){
    return this.redirectIfNotLoggedIn();
  }



  redirectIfNotLoggedIn(){
    if (!this.props.loggedIn){
      return this.props.router.push('/login');
    }
  }

  componentWillReceiveProps(newProps) {
      this.props.clearErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    const step = Object.assign({}, this.state);
    this.props.makeStep(step);
    // this.props.router.push('/steps');
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
  //   if(this.props.formType === 'step'){
  //     redirectLink = (<Link to='/signup'>Sign Up</Link>);
  //   }
  //   else{
  //     redirectLink = (<label>Already a member? &nbsp; &nbsp;
  //       <Link to='/step'>Log In</Link>
  //       </label>);
  //   }
  //   return redirectLink;
  // }

  render() {
    return (
      <div className="step-form-wrapper">
        <div className="step-header-bar">
          <h1 className="step-form-header">New Step</h1>
        </div>
        <div className="step-form-container">
        <form className="step-form-box"
          onSubmit={this.handleSubmit}>
          <div className="step-form">
            <label>
              <input type="text" className="string-input" value={this.state.title}
                onChange={this.update('title')}
                placeholder='Title'
                />
            </label>
            <br/>
            <label>
              <br/>
              <textarea className="textarea-input" value={this.state.body}
                onChange={this.update('body')}
                placeholder='Description'
                />
            </label>
            {this.renderErrors()}
            <br/>
          </div>
          <input type="submit" value='Create Step'></input>
        </form>
      </div>
    </div>
    );
  }


  //...
}

export default (StepForm);
