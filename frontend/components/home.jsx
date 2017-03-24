import React from 'react';
import GuidesIndexContainer from './guide/guides_index_container';
import SliderImage from './slideshow';

const Home = () => (
  <section>
    <div className="SliderImage-Container">
      <SliderImage/>
      <h2><span>Welcome to Guidelines<span className='spacer'></span>
      <span className='spacer'></span>
      <br/>Feel free to browse our guides!</span></h2>
    </div>
    <GuidesIndexContainer/>
  </section>
);

export default Home;
