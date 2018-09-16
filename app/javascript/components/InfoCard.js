import React from "react"
import PropTypes from "prop-types"
class InfoCard extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div class='card'>
          <div class='card-image'>
            <img src={this.props.imgSrc}/>

            </div>
            <div class='card-content'>
              <span class='card-title'>{this.props.header}</span>
              <p>{this.props.desc}</p>
              <a href={this.props.path} class='btn btn-secondary'>Learn More</a>
            </div>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

InfoCard.propTypes = {
    header: PropTypes.string,
    desc: PropTypes.string,
    path: PropTypes.string,
    imgSrc: PropTypes.string
};
export default InfoCard
