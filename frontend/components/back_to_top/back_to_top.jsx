
import React from 'react';


class BackToTop extends React.Component {

  topFunction() {
    const topOfPage = document.getElementById('top-of-page');
    topOfPage.scrollIntoView({ behavior: 'smooth' });
  }

  render() {
    return (
      <button onClick={this.topFunction} id="backToTop" title="Go to top">TOP</button>
    );
  }
}

export default BackToTop;
