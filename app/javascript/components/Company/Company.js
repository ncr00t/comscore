import React, { useState, useEffect } from "react";
import axios from "axios";
import Header from "./Header";
import styled from 'styled-components'

const Main = styled.div`
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  margin: auto;
`

const Content = styled.div`
  padding-left: 50px;
`

const Column = styled.div`
  overflow: scroll;
  background: #fff;
  height: 100vh;

  &:last-child {
    background: #007bff;
  }
`

const Company = (props) => {
    const [company, setCompany] = useState([])
    const [review, setReview] = useState([])
    const [responseReceived, setResponseReceived] = useState(false)

    useEffect(() => {
        const slug = props.match.params.slug.toString();
        const url = '/api/v1/companies/' + slug;
        axios.get(url)
             .then(resp => {
                 setCompany(resp.data)
                 setResponseReceived(true)
             })
             .catch(resp => console.log(resp))
    }, [])

    return (
        <Main>
            <Column>
                <Content>
                    {
                        responseReceived &&
                        <Header attributes={company.data.attributes}
                                reviews={company.included}/>
                    }
                    <div className="reviews"></div>
                </Content>
            </Column>
            <Column>
                <div className="review-form">Review form</div>
            </Column>
        </Main>
    )
}

export default Company