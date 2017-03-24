import React from 'react';
import { Link, withRouter } from 'react-router';
import ContactForm from '../guide/contact_form';
import Modal from 'react-modal';
import ModalStyle from "./modal_style.js";

class PhotoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      photos: this.props.photos,
      modalOpen: false,
      url: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.getPhotoUrl = this.getPhotoUrl.bind(this);
  }
  // this.returnPhoto = this.returnPhoto.bind(this);
  // this.setState = this.setState.bind(this);

  // this.removePhoto = this.removePhoto.bind(this);
  // componentDidUpdate(){
  //   // return this.returnPhoto();
  // }

  openModal() {
		this.setState({
			modalOpen: true,
		});
	}

	closeModal() {
		this.setState({modalOpen: false});
	}


  redirectIfNotLoggedIn(){
    if (!this.props.loggedIn){
      return this.props.router.push('/login');
    }
  }

  // componentWillReceiveProps(newProps) {
  //     this.returnPhoto();
  // }

  handleSubmit(e) {
    e.preventDefault();
    const photo =  {photo:{url: this.state.url}};
    // this.props.makePhoto({photo});
    // this.props.router.push('/photos');
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }



  // renderErrors(){
  //   if(this.props.errors){
  //     let errors = this.props.errors.map((error, i) => (
  //       <li key={i} className='errors'>{error}</li>
  //     ));
  //     return (
  //       <ul>
  //         {errors}
  //       </ul>
  //     );
  //   }
  // }

  componentWillReceiveProps(nextProps){
    if (this.props !== nextProps){
      this.setState(nextProps.photos);
    }
  }

  getPhotoUrl(photoUrl){
    this.setState({url: photoUrl});
    const photo =  {url: this.state.url};
    this.props.getPhoto(this.state.url);
    this.props.makePhoto(photo);
  }

  // <input type="button" onClick={this.openModal} value="Upload Photo"/>
  render() {
    let button = (
        <label className="btn">
        <input type="checkbox" id="btnControl" onClick={this.openModal}/>
           Upload Photo</label>
    );

    if(this.state.url !== ""){
      button = <img className="photo-form-pic" src={this.state.url}></img>;
    }

    return (
      <div className="photo-form-wrapper">
        <div className="photo-header-bar">
          <div >
    				<nav className="photo-upload-modal">
    					{button}
    				</nav>
    				<Modal
    					contentLabel="Modal"
    					isOpen={this.state.modalOpen}
    					onRequestClose={this.closeModal}
    					style={ModalStyle}>
  					<ContactForm getPhotoUrl={this.getPhotoUrl}/>
  				</Modal>
        </div>
      </div>
    </div>
    );
  }

  // {this.renderErrors()}
  // <input type="submit" value='Create Photo'></input>

  //...
}

export default (PhotoForm);
