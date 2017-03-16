import React from 'react';
import { Link, withRouter } from 'react-router';

const links = (props) => {
  if(props.currentUser){
    return(
      <ul>
        <button onClick={props.logout}>Logout</button>
      </ul>
    );
  }
  else{
    return(
      <ul>
        <Link to='/login'>Log In</Link>
        &nbsp;or&nbsp;
        <Link to='/signup'>Sign Up</Link>
      </ul>
    );
  }
};

const Greeting = (props) => {
    return links(props);
};

export default (Greeting);
