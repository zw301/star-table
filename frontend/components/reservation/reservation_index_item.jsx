import React from 'react';

class ReservationIndexItem extends React.Component {
  constructor(props){
    super(props);
    // this.reservation = this.props.reservation;
    // this.stringToDate = this.stringToDate.bind(this);
    // this.stringToTime = this.stringToTime.bind(this);
  }

  stringToTime(time){
    return time.slice(11,16);
  }

  stringToDate(date){
    return date.slice(0,10);
  }

  render(){
    return(
      <div className="reservation-index-item">
      reservation index item
      </div>
    );
  }
}

export default ReservationIndexItem;
