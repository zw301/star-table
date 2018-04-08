
import React from 'react';
import ReservationIndexItem from './reservation_index_item';

class ReservationIndex extends React.Component {
  constructor(props){
    super(props);
  }


  indexEl(){
    return Object.keys(this.props.reservations).map(idx => (
      <ReservationIndexItem key={idx}
        reservation={this.props.reservations[idx]} />
    ));
  }


  render(){
    return(
      <div className="reservation-index">
        <h1>Reservations</h1><hr/>
        {this.ownerReservations(this.indexEl())}
      </div>
    );
  }
}

export default ReservationIndex;
