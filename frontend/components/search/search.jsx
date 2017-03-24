import React from 'react';
import GuideIndexItem from '../guide/guides_index_item';



class Search extends React.Component {
  constructor (props) {
    super(props);
  }

  componentWillMount(){
    this.props.searchGuides(searchTerm);
  }

  render(){
    let guides = this.props.searches.map((guide) => (
      <GuideIndexItem key={guide.id} guide={guide}/>
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


export default Search;
