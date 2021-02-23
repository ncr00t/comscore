import React from 'react'

const Header = (props) => {
    const {name, logo_url, average_rank} = props.attributes
    const amountReviews = props.reviews.length

    return (
        <div className="main">
            <h1> <img src={logo_url} alt={name} /> {name} </h1>
            <div className="amountReviews"> {amountReviews} reviews</div>
            <div className="starsRank"></div>
            <div className="total">{average_rank} out of 5</div>
        </div>
    )
}

export default Header