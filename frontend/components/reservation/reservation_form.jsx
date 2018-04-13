import React from 'react';
import {connect} from 'react-redux';




class ReservationForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      user_id: "",
      restaurant_id: this.props.match.params.restaurantId,
      seats: 2,
      time: "18:00",
      date: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.renderErrors = this.renderErrors.bind(this);

    //helper methods
    this.timePickerBuilder = this.timePickerBuilder.bind(this);
    this.seatsBuilder = this.seatsBuilder.bind(this);
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }


  handleSubmit(e){
    e.preventDefault();

    if(this.props.currentUser){
      this.state.customerId = this.props.currentUser.id;
    }



    let fetchInfo = {
      user_id: this.state.customerId,
      restaurant_id: this.state.restaurant_id,
      seats: this.state.seats,
      date: this.state.date,
      time: this.state.time
    };

    this.props.createReservation(fetchInfo).then(() => {
      this.props.clearErrors();
      this.props.history.push(`/users/${this.props.currentUser.id}`);
    });

    // this.props.createReservation(fetchInfo).then(() =>
    //   this.props.clearErrors()
    // );
  }

  renderErrors() {
    return(
      <ul className="error-ul">
        {this.props.errors.map((error, idx) => (
          <li key={`error-${idx}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }


  timePickerBuilder(){
    let timeArr = [];
    let openTime = this.props.restaurants[this.state.restaurant_id].openTime;
    openTime = parseInt(openTime.split(":")[0]);
    let closeTime = this.props.restaurants[this.state.restaurant_id].closeTime;
    closeTime = parseInt(closeTime.split(":")[0]);

    for(let i = openTime; i < closeTime; i++){
        timeArr.push(i);
    }

    let selectTime = timeArr.map(time => (
      <option
        key={time}
        value={time}
        defaultValue={time === 18 ? "selected" : ""}
      > {time < 10 ? ("0" + time + ":00") : (time + ":00")}
      </option>
    ));

    return selectTime;
  }

   seatsBuilder(){
     let numPpl = [];

     for(let i = 1; i < 21; i++){
       numPpl.push(i);
     }

     let numList = numPpl.map(num => (
       <option
         key={num}
         value={num}
         defaultValue={num === 2 ? "selected" : ""}
         >
         {num === 1 ? (num + " person") : (num + " people")}
       </option>
     ));

     return numList;
   }

  render(){
    let date = new Date();
    let minDate = date.toISOString().slice(0,10);
    return (
      <div className="reservation-show">
        <h5>Make a reservation</h5>
        {this.renderErrors()}
        <form>
          <select className="reservation-input  input-1"
                  onChange={this.update('seats')}>
            {this.seatsBuilder()}
          </select>

          <select className="reservation-input  input-2"
                  onChange={this.update('time')}>
            {this.timePickerBuilder()}
          </select>

          <input type="date"
            min={minDate}
            value={this.state.date}
            onChange={this.update('date')}
            className="reservation-input  input-2"
          />

          { this.props.currentUser ?
          (
            <input type="submit"
            onClick={this.handleSubmit}
            value="Book a Table"
            className="submit-button"
            id="reservation-submit"/>
          )
          :
          (
            <input type="submit"
              onClick={this.handleSubmit}
              value="Book a Table"
              className="submit-button"
              disabled="disabled"
              background="grey"
              id="disabled-btn"/>
          )
          }

          { this.props.currentUser ?
            (
              <p className="offer"><i className="fa fa-check-square"></i>  Special offers available. <span>See details</span></p>
            ):(
              <p className="offer need-login">Please Log In to make a reservation!</p>
            )
          }

        </form>
      </div>
    );
  }
}

export default ReservationForm;
