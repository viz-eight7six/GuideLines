import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import {Link, hashHistory} from 'react-router';
import SearchBarContainer from "./search/search_bar";

let createGuide = () => (
  hashHistory.push("/guides/new")
);

const App = ({ children }) => (
  <section className='whole'>
    <header>
      <nav className='main-nav'>
        <nav className="left-nav">
          <ul>
            <Link to='/'>
              <div className='logo'/>Guidelines</Link>
            <SearchBarContainer/>
          </ul>
        </nav>
        <nav className="right-nav">
          <GreetingContainer />
        </nav>
      </nav>
      <nav className='bottom-nav'>
        <nav></nav>
          <label className="btn">
          <input type="checkbox" id="btnControl" onClick={createGuide}/>
             Let's Make Something!</label>
      </nav>
    </header>
    { children }
  </section>
);

export default App;
