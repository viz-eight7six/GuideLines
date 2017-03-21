import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import {Link} from 'react-router';

const App = ({ children }) => (
  <section className='whole'>
    <header>
      <nav className='main-nav'>
        <nav className="left-nav">
          <ul>
            <Link to='/'>
              <div className='logo'/>Guidelines</Link>
          </ul>
        </nav>
        <nav className="right-nav">
          <GreetingContainer />
        </nav>
      </nav>
      <nav className='bottom-nav'>
        <nav></nav>
        <h1>Let's Make Something!</h1>
      </nav>
    </header>
    { children }
  </section>
);

export default App;
