import React from 'react';

class ReservationForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      customer_id: "",
      restaurant_id: this.props.match.params.restaurantId,
      seats: 2,
      time: "",
      date: "",
      booking: ""
    };
  }

  componentDidMount(){
    this.props.clearReservationErrors();
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }



  renderErrors() {
    if (this.props.errors !== []){
      return(
        <ul className="reservation-errors">
          {this.props.errors.map((error, i) => (
            <li key={`error-${i}`} >
              {error}
            </li>
          ))}
        </ul>
      );
    } else {
      return;
    }
  }


  render(){
    let date = new Date();
    let minDate = date.toISOString().slice(0,10);
    return(
      <div className="rest-show-background">
        <h1>Make a reservation</h1><hr/>
        {this.renderErrors()}
      </div>
    );
  }
}

export default ReservationForm;
