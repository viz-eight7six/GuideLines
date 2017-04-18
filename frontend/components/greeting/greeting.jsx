import React from 'react';
import { Link, withRouter, hashHistory } from 'react-router';

const links = (props) => {
  let login = () => (
    hashHistory.push("/login")
  );
  let signup = () => (
    hashHistory.push("/signup")
  );
  if(props.currentUser){
    return(
      <ul>
        <label className="btn">
        <input type="checkbox" id="btnControl" onClick={props.logout}/>
           Log Out</label>
      </ul>
    );
  }
  // <Link to='/login'>Log In</Link>
  // <Link to='/signup'>Sign Up</Link>
  else{
    return(
      <ul>
        <label className="btn">
        <input type="checkbox" id="btnControl" onClick={login}/>
           Log In</label>
        <label className="btn">
        <input type="checkbox" id="btnControl" onClick={signup}/>
           Sign Up</label>
      </ul>
    );
  }
};

const Greeting = (props) => {
    return links(props);
};

export default (Greeting);
