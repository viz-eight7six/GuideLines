import React from 'react';
import { Link, hashHistory } from 'react-router';

const GuideIndexItem = ({guide}) => {

  return(
    <li className='guide-index-item-container'>
      <Link to={`/guides/${guide.id}`}>
        <img className="guide-index-img" src={guide.photo_url}/>
      </Link>
      <div className="guide-index-detail">
          <Link to={`/guides/${guide.id}`} className="guide-link">
            {guide.title}</Link>
          <h2>by: {guide.owner.username}</h2>
      </div>
    </li>
  );

};


export default GuideIndexItem;
