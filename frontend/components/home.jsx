import React from 'react';
import GuidesIndexContainer from './guide/guides_index_container';

const Home = () => (
  <section>
    <div className="slideshow-container">
      <h1>lets make something!</h1>
      <div className='slideshow'/>
    </div>
    <GuidesIndexContainer/>
  </section>
);

export default Home;
