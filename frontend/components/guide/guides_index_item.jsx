import React from 'react';
import { Link, hashHistory } from 'react-router';

const GuideIndexItem = ({guide}) => {
  if(guide){
    return(
      <li className='guide-index-item-container'>
        <Link to={`/guides/${guide.id}`}>
          <img className="guide-index-img" src={guide.photo_url}/>
        </Link>
        <div className="guide-index-detail">
          <Link to={`/guides/${guide.id}`} className="guide-link">
            {guide.title}</Link>
          <h2>by: {guide.owner.username}</h2>
          <h3>{guide.body}</h3>
        </div>
      </li>
    );
  }
  else{
    return <li></li>;
  }

};


export default GuideIndexItem;
