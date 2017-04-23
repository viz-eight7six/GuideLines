import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import {Link, hashHistory} from 'react-router';
import SearchBarContainer from "./search/search_bar_container";

let createGuide = () => (
  hashHistory.push("/guides/new")
);

const App = ({ children }) => (
  <section className='whole'>
    <header>
      <nav className='main-nav'>
        <nav className='bottom-nav'>
          <label className="btn">
            <input type="checkbox" id="btnControl" onClick={createGuide}/>
            Create Guide!</label>
        </nav>
          <nav className="left-nav">
            <ul>
              <Link to='/'>
                <div className='logo'/>Guidelines</Link>
              </ul>
            </nav>
            <SearchBarContainer/>
        <nav className="right-nav">
          <GreetingContainer />
        </nav>
      </nav>
    </header>
    { children }
  </section>
);

export default App;
