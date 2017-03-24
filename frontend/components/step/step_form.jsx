import React from 'react';
import { Link, withRouter } from 'react-router';
import PhotoFormContainer from "../photo/photo_form_container";

class StepForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = this.props.step;
      this.handleSubmit = this.handleSubmit.bind(this);
      this.returnStep = this.returnStep.bind(this);
      this.update = this.update.bind(this);
      this.setState = this.setState.bind(this);
      this.removeStep = this.removeStep.bind(this);
      this.getPhoto = this.getPhoto.bind(this);
  }

  componentDidUpdate(){
    return this.returnStep();
  }


  redirectIfNotLoggedIn(){
    if (!this.props.loggedIn){
      return this.props.router.push('/login');
    }
  }

  // componentWillReceiveProps(newProps) {
  //     this.returnStep();
  // }

  handleSubmit(e) {
    e.preventDefault();
    const step =  {step:{title: this.state.title, body: this.state.body}};
    this.props.makeStep({step});
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

  componentWillReceiveProps(nextProps){
    if (this.props !== nextProps){
      this.setState(nextProps.step);
    }
  }

  returnStep () {
    return this.props.updateSteps(this.state, this.props.id);
  }

  removeStep () {
    this.props.deleteStep(this.props.id);
  }

  getPhoto(url){
    this.setState({photo_url: url});
  }


  render() {
    return (
      <div className="step-form-wrapper">
        <div className="step-header-bar">
          <h1 className="step-form-header">Step {this.props.id + 1}</h1>
        </div>
        <div className="step-form-container">
        <form className="step-form-box">
          <div className="step-form">
            <PhotoFormContainer getPhoto={this.getPhoto}/>
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
            <br/>
            {this.renderErrors()}
          </div>
          <label className="btn">
          <input type="checkbox" id="btnControl" onClick={this.removeStep}/>
             Remove Step</label>
        </form>
      </div>
    </div>
    );
  }

  // {this.renderErrors()}
  // <input type="submit" value='Create Step'></input>

  //...
}

export default (StepForm);
