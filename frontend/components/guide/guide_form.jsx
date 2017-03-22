import React from 'react';
import { Link, withRouter } from 'react-router';
import StepFormContainer from '../step/step_form_container';

class GuideForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = this.props.guide;
      this.handleSubmit = this.handleSubmit.bind(this);
      this.addStep = this.addStep.bind(this);
      this.update = this.update.bind(this);
      this.updateSteps = this.updateSteps.bind(this);
      this.setState = this.setState.bind(this);
      this.tempSteps = this.props.guide.steps || [];
      this.deleteStep = this.deleteStep.bind(this);
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
      this.props.clearGuideErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    const guide = Object.assign({}, this.state);
    this.setSteps();
    this.props.makeGuide(guide);
  }

  addStep(e) {
    e.preventDefault();
    let newStep = {title: "", body: ""};
    this.tempSteps.push(newStep);
    this.setState({steps: this.tempSteps});
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  updateSteps(step, i) {
    this.tempSteps.splice(i, 1, step);
  }

  setSteps() {
    this.setState({
      steps: this.tempSteps
    });
  }

  deleteStep(i) {
    this.tempSteps.splice(i, 1);
    this.setSteps();
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

  renderStepForm(){
    const steps = this.tempSteps.map((step, idx) => (
      <StepFormContainer key={idx} id={idx}
        updateSteps={this.updateSteps}
        deleteStep={this.deleteStep}/>
    ));
    return steps;
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
          <h1 className="guide-form-header">New Guide</h1>
        </div>
        <div className="guide-form-container">
        <form className="guide-form-box"
          onSubmit={this.handleSubmit}>
          <div className="guide-form">
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
          {this.renderStepForm()}
          <br/>
          <input type="button" onClick={this.addStep} value="Add Step"></input>
          <input type="submit" value='Create Guide'></input>
        </form>
      </div>
    </div>
    );
  }


  //...
}

export default (GuideForm);
