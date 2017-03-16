import React from 'react';
import GreetingContainer from './greeting/greeting_container';

const App = ({ children }) => (
  <section className='whole'>
    <header>
      <nav className='main-nav'>
        <nav className="left-nav">
          <ul>
            <h1>instructables</h1>
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
