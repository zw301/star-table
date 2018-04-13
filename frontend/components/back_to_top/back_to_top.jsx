
import React from 'react';



class BackToTop extends React.Component {

  // scrollFunction() {
  //   if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
  //       document.getElementById("myBtn").style.display = "block";
  //   } else {
  //       document.getElementById("myBtn").style.display = "none";
  //   }
  // }

  // When the user clicks on the button, scroll to the top of the document
  topFunction() {
    const topOfPage = document.getElementById('top-of-page');
    topOfPage.scrollIntoView({ behavior: 'smooth' });
    // document.body.scrollTop = 0; // For Safari
    // document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  }

  render() {
    return (
      <button onClick={this.topFunction} id="myBtn" title="Go to top">TOP</button>
    );
  }
}

export default BackToTop;
