import React from 'react';
import { Link, withRouter } from 'react-router';

class StepForm extends React.Component {
  constructor(props) {
      super(props);
      this.state = this.props.step;
      this.handleSubmit = this.handleSubmit.bind(this);
      this.returnStep = this.returnStep.bind(this);
      this.update = this.update.bind(this);
      this.setState = this.setState.bind(this);
  }

  componentDidUpdate(){
    return this.redirectIfNotLoggedIn();
  }



  redirectIfNotLoggedIn(){
    if (!this.props.loggedIn){
      return this.props.router.push('/login');
    }
  }

  // componentWillReceiveProps(newProps) {
  //     this.props.clearErrors();
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

  returnStep () {
    let step = this.state;
    return this.props.updateSteps(this.state);
  }


  render() {
    return (
      <div className="step-form-wrapper">
        <div className="step-header-bar">
          <h1 className="step-form-header">New Step</h1>
        </div>
        <div className="step-form-container">
        <form className="step-form-box">
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
            <br/>
            <input type="button" onClick={this.returnStep} value="save step"></input>
          </div>
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
