import React, { useState, useEffect } from "react";
import axios from "axios";
import Header from "./Header";

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
        <div className="main">
            <div className="column">
                {
                    responseReceived &&
                    <Header attributes={company.data.attributes} reviews={company.included}/>
                }
                <div className="reviews"></div>
            </div>
            <div className="column">
                <div className="review-form">Review form</div>
            </div>
        </div>
    )
}

export default Company