import React from 'react';

class ReservationIndexItem extends React.Component {
  constructor(props){
    super(props);
    this.reservation = this.props.reservation;
  }



  render(){
    const reservation = this.props.reservation;
    return(
      <div className="reservation-index-item">
        <h1>Date: {reservation.date}</h1>
        <h1>Time: {reservation.time}:00</h1>
        <h1>Table for {reservation.seats}</h1>
      </div>
    );
  }
}

export default ReservationIndexItem;
