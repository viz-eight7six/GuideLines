import React from 'react';
import { Link, withRouter } from 'react-router';
import GuideIndexItem from './guides_index_item';



class GuideIndex extends React.Component {

  componentDidMount(){
    this.props.getAllGuides();
  }

  render(){
    let guides = this.props.guides.map((guide, idx) => (
      <GuideIndexItem key={idx} guide={guide}/>
    ));
    return (
      <div className="guide-list-container">
        <ul>
          {guides}
        </ul>
      </div>
      );
  }
}




export default (GuideIndex);
