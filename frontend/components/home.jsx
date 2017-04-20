import React from 'react';
import GuidesIndexContainer from './guide/guides_index_container';
import SliderImage from './slideshow';

const Home = () => (
  <section>
    <div className="SliderImage-Container">
      <SliderImage/>
      <h2><span>Welcome to Guidelines</span></h2>
      <h2><br/><br/><br/><span>Feel free to browse our guides!</span></h2>
    </div>
    <GuidesIndexContainer/>
  </section>
);

export default Home;
