import React from 'react';
import { Link, withRouter } from 'react-router';

const links = (props) => {
  if(props.currentUser){
    return(
      <nav>
        <button onClick={props.logout}>Logout</button>
      </nav>
    );
  }
  else{
    return(
      <nav>
        <Link to='/login'>Login</Link>
        <Link to='/signup'>signup</Link>
      </nav>
    );
  }
};

const Greeting = (props) => {
    return links(props);
};

export default (Greeting);
