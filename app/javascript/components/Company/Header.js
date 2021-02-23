import React from 'react'
import styled from 'styled-components'

const Main = styled.div`
  font-size: 30px;
  padding: 50px 100px 50px 0;
  
  img {
    border: 1px solid rgba(0,0,0,0.1);
    border-radius: 100%;
    width: 100px;
    height: 100px;
  }
`

const AmountReviews = styled.div`
  font-size: 18px;
  padding: 10px 0;
`

const Total = styled.div`
  font-size: 18px;
  font-weight: bold;
  padding: 10px 0;
`

const Header = (props) => {
    const {name, logo_url, average_rank} = props.attributes
    const amountReviews = props.reviews.length

    return (
        <Main>
            <h1> <img src={logo_url} alt={name} /> {name} </h1>
            <AmountReviews> {amountReviews} reviews</AmountReviews>
            <div className="starRank"></div>
            <Total>{average_rank} out of 5</Total>
        </Main>
    )
}

export default Header