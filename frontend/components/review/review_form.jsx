import React from 'react';

class ReviewForm extends React.Component {

  constructor(props){
    super(props);
      this.state = {
        user_id: "",
        //restaurant_id subject to change depends on container
        restaurant_id: this.props.match.params.restaurantId,
        rating: "",
        comment: ""
      };

     //form actions
     this.handleSubmit = this.handleSubmit.bind(this);

     //rating
     // this.updateRadio = this.updateRadio.bind(this);
      this.updateRating = this.updateRating.bind(this);
      this.handleHover = this.handleHover.bind(this);
      this.handleHoverLeave = this.handleHoverLeave.bind(this);

     //radio star builder
     // this.reviewRadio = this.reviewRadio.bind(this);

     //error handling
     this.renderErrors = this.renderErrors.bind(this);
  }

  componentDidMount(){
    this.props.clearErrors();
  }

  update(field) {
   return e => {
     this.setState({
       [field]: e.currentTarget.value
     });
   };
  }

  handleSubmit(e){
    e.preventDefault();
    if(!this.props.currentUser){
      return alert("You need to log in");
    }else{
      this.state.user_id = this.props.currentUser.id;
    }

    this.props.createReview(this.state).then(() => (
      this.setState({
        user_id: "",
        //restaurant_id subject to change depends on container
        restaurant_id: this.props.match.params.restaurantId,
        rating: "",
        comment: ""
      })
    ));
  }

  // updateRadio(field) {
  //   return e => {
  //     this.setState({
  //       [field]: parseInt(e.currentTarget.id.slice(-1))
  //     });
  //   };
  // }

  // reviewRadio(category){
  //  return(
  //    <div className="review-radio">
  //
  //      <div className="stars">
  //        <input type="radio"
  //                value={this.state[category]}
  //                onChange={this.updateRadio(category)}
  //                name={category}
  //                className="star-1"
  //                id="star-1" />
  //        <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-1">1</label>
  //        <input type="radio"
  //                value={this.state[category]}
  //                onChange={this.updateRadio(category)}
  //                name={category}
  //                className="star-2"
  //                id="star-2" />
  //        <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-2">2</label>
  //        <input type="radio"
  //                value={this.state[category]}
  //                onChange={this.updateRadio(category)}
  //                name={category}
  //                className="star-3"
  //                id="star-3" />
  //        <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-3">3</label>
  //        <input type="radio"
  //                value={this.state[category]}
  //                onChange={this.updateRadio(category)}
  //                name={category}
  //                className="star-4"
  //                id="star-4" />
  //        <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-4">4</label>
  //        <input type="radio"
  //                value={this.state[category]}
  //                onChange={this.updateRadio(category)}
  //                name={category}
  //                className="star-5"
  //                id="star-5" />
  //        <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-5">5</label>
  //      </div>
  //    </div>
  //
  //  );
  // }

  //rating star
  updateRating(updatedRating){
    return (e) => this.setState({rating: updatedRating});
  }
  handleHover(i){
   return () => this.setState({hover: true, hoverV: i});
  }

   handleHoverLeave(){
     this.setState({hover: false});
  }


  ratingStars(){
    let starArr = [];

    for (let i = 1; i < 6; i++) {
      let id, maxRating;
      maxRating = this.state.hover ? this.state.hoverV: this.state.rating;
      if (i <= maxRating) id ="full";

      starArr.push(
        <i
          key={i}
          className="fa fa-star"
          id={id}
          onMouseEnter={this.handleHover(i)}
          onMouseLeave={this.handleHoverLeave}
          aria-hidden="true"
          onClick={this.updateRating(i)}>
        </i>);
    }

    return starArr;
  }

  renderErrors() {
    if (this.props.errors == []){ return null; }

    return(
     <ul className="review-errors">
       {this.props.errors.map((error, i) => (
         <li key={`error-${i}`} >
           {error}
         </li>
       ))}
     </ul>
    );

  }

  render(){
    return(
     <div className="review-form-container">
       {this.renderErrors()}
       <form className="review-form">
          <h5>Write Reviews</h5>
          <div className="rating-stars">{this.ratingStars()}</div>

         <div className="review-form-middle">
           <textarea
            placeholder="Please leave your feedback!"
            value={this.state.comment}
            onChange={this.update('comment')}
            className="review-text-input"
           />
         </div>

         <div className="review-form-bottom">
           <input type="submit"
             onClick={this.handleSubmit}
             value="Submit Review"
             className="submit-button"
             id="reservation-submit"
           /><br/>
         </div>
       </form>
     </div>
    );
  }
}

export default ReviewForm;
