import React, { useState, useEffect } from "react";
import axios from "axios";
import Company from "./Company";

const Companies = () => {
    const [companies, setCompanies] = useState([])

    useEffect(() => {
        axios.get('/api/v1/companies.json')
             .then(resp => { setCompanies(resp.data.data) })
             .catch(resp => console.log(resp))
    }, [companies.length])

    const companiesList = companies.map(company => {
        let attributes = company.attributes
        return (<Company key={attributes.name} attributes={attributes}/> )
    })

    return (
        <div className="main">
            <div className="header">
                <h1>ComScore</h1>
            </div>
            <div className="companiesList">
                <ul>{companiesList}</ul>
            </div>
        </div>
    )
}

export default Companies