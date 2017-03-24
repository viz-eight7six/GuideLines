import React from 'react';
import { hashHistory } from 'react-router';

class SearchBar extends React.Component {
  constructor (props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = ({
      inputVal: ""
    });
  }

  update(property) {
    return e => {
      e.preventDefault();
      this.setState({[property]: e.target.value});
    };
  }

  clearForm() {
    this.setState({inputVal: ""});
  }

  handleSubmit (e) {
    e.preventDefault();
    this.props.searchGuides(this.state.inputVal);
    hashHistory.push('/');
    return this.clearForm();
  }

  render () {
    return(
      <div>
      <form className="Search-Bar-form">
        <label className="Search">
          <input className="Search-Input" type="text" onChange={this.update('inputVal')}
            placeholder = "How Do I?"/>
        </label>
        <label className="btn">
        <input type="checkbox" id="btnControl" onClick={this.handleSubmit}/>
           Search</label>
      </form>
    </div>
  );
  }
}

export default SearchBar;
