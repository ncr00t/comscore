import React from 'react'
import { BrowserRouter as Router, Link } from "react-router-dom";

const Company = (props) => {
    let companyAttributes = props.attributes

    return (
        <div className="company-card">
            <div className="company-logo">
                <img src={companyAttributes.logo_url} alt={companyAttributes.name}/>
            </div>
            <div className="company-name">{companyAttributes.name}</div>
            <div className="company-rank">{companyAttributes.average_rank}</div>
            <div className="company-link">
                <a href={'/companies/{companyAttributes.slug}'}>View Company</a>
            </div>
        </div>
    )
}

export default Company