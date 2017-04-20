import React from 'react';

class SliderImage extends React.Component {

constructor(){
    super();
  }

componentDidMount(){
    this.animate();
  }

componentWillUnmount(animation){
    clearInterval(this.animation);
  }

animate(){
    $("#slideshow > div:gt(0)").hide();
    this.animation = setInterval(function() {
      $('#slideshow > div:first')
        .fadeOut(2000)
        .next()
        .fadeIn(1000)
        .end()
        .appendTo('#slideshow');
    },  5000);
  }

render(){
    return (
      <div id="slideshow">
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1492710497/randy-tarampi-225537_ef2fu7.jpg"/>
        </div>
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1490355908/japanese-cherry-trees-flowers-spring-japanese-flowering-cherry-54630_aix5o9.jpg"/>
        </div>
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1492710497/luis-davila-66974_vltlii.jpg"/>
        </div>
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1490355893/pexels-photo-207680_mcsyjr.jpg"/>
        </div>
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1492710498/taylor-franz-91172_ylidqq.jpg"/>
        </div>
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1490355907/fall-autumn-red-season_tiyiyl.jpg"/>
        </div>
        <div className="slide-border">
          <img className="slide-image" src="http://res.cloudinary.com/cloud-vinson/image/upload/v1490355868/pexels-photo-68398_wwvak6.jpg"/>
        </div>
      </div>
    );
  }
}

export default SliderImage;
