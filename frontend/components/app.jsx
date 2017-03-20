import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import {Link} from 'react-router';

const App = ({ children }) => (
  <section className='whole'>
    <header>
      <nav className='main-nav'>
        <nav className="left-nav">
          <ul>
            <Link to='/'>Guidelines</Link>
          </ul>
        </nav>
        <nav className="right-nav">
          <GreetingContainer />
        </nav>
      </nav>
    </header>
    { children }
  </section>
);

export default App;
