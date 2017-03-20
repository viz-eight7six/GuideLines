import React from 'react';
import { Link, hashHistory } from 'react-router';

const GuideIndexItem = ({guide}) => {

  return(
    <li>
      <Link to={`/guides/${guide.id}`}>{guide.title}</Link>
    </li>
  );

};


export default GuideIndexItem;
