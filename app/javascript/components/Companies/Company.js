import React from 'react'
import { BrowserRouter as Router, Link } from "react-router-dom";
import styled from "styled-components";

const CompanyCard = styled.div`
  border: 1px solid #efefef;
  background: #fff;
  text-align: center;
`
const CompanyName = styled.div`
  padding: 20px 0 10px 0;
`
const CompanyLogo = styled.div`
  text-align: center;
  width: 50px;
  margin-left: auto;
  margin-right: auto;
  padding: 10px;

  img {
    border: 1px solid #efefef;
    border-radius: 100%;
    height: 50px;
    width: 50px;
  }
`
const CompanyLink = styled.div`
  margin: 30px 0 20px 0;
  height: 50px;

  a {
    background: #007bff;
    color: #fff;
    border-radius: 4px;
    padding: 10px 50px;
    text-decoration: none;
    width: 100%;
  }
`

const Company = (props) => {
    let companyAttributes = props.attributes

    return (
        <CompanyCard>
            <CompanyLogo>
                <img src={companyAttributes.logo_url} alt={companyAttributes.name}/>
            </CompanyLogo>
            <CompanyName>{companyAttributes.name}</CompanyName>
            <div className="company-rank">{companyAttributes.average_rank}</div>
            <CompanyLink>
                <Link to={'/companies/'+companyAttributes.slug}>View Company</Link>
            </CompanyLink>
        </CompanyCard>
    )
}

export default Company