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
     this.updateRadio = this.updateRadio.bind(this);

     //radio star builder
     this.reviewRadio = this.reviewRadio.bind(this);

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

  updateRadio(field) {
    return e => {
      this.setState({
        [field]: parseInt(e.currentTarget.id.slice(-1))
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

  reviewRadio(category){
   return(
     <div className="review-radio">

       <div className="stars">
         <input type="radio"
                 value={this.state[category]}
                 onChange={this.updateRadio(category)}
                 name={category}
                 className="star-1"
                 id="star-1" />
         <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-1">1</label>
         <input type="radio"
                 value={this.state[category]}
                 onChange={this.updateRadio(category)}
                 name={category}
                 className="star-2"
                 id="star-2" />
         <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-2">2</label>
         <input type="radio"
                 value={this.state[category]}
                 onChange={this.updateRadio(category)}
                 name={category}
                 className="star-3"
                 id="star-3" />
         <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-3">3</label>
         <input type="radio"
                 value={this.state[category]}
                 onChange={this.updateRadio(category)}
                 name={category}
                 className="star-4"
                 id="star-4" />
         <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-4">4</label>
         <input type="radio"
                 value={this.state[category]}
                 onChange={this.updateRadio(category)}
                 name={category}
                 className="star-5"
                 id="star-5" />
         <label onClick={e=>e.preventDefault()} className="star" htmlFor="star-5">5</label>
       </div>
     </div>

   );
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
          {this.reviewRadio("rating")}

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
