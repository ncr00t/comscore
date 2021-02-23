import React, { useState, useEffect } from "react";
import axios from "axios";
import Company from "./Company";
import styled from 'styled-components'

const Main = styled.div`
  margin-left: auto;
  margin-right: auto;
  margin-width: 1200px;
  text-align: center;
`
const Header = styled.div`
 h1 {
   font-size: 40px;
 }

 padding: 100px 100px 10px 100px;
`

const Description = styled.div`
  font-size: 25px;
  font-weight: 300;
`

const CompaniesList = styled.div`
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 20px;
  width: 100%;
  padding: 20px;
`

const Companies = () => {
    const [companies, setCompanies] = useState([])

    useEffect(() => {
        axios.get('/api/v1/companies.json')
             .then(resp => setCompanies(resp.data.data))
             .catch(resp => console.log(resp))
    }, [companies.length])

    const companiesList = companies.map(company => {
        let attributes = company.attributes
        return (<Company key={attributes.name} attributes={attributes}/> )
    })

    return (
        <Main>
            <Header>
                <h1>Comscore</h1>
            <Description>Evaluate, share your reviews and choose the best companies!</Description>
            </Header>
            <CompaniesList>
                {companiesList}
            </CompaniesList>
        </Main>
    )
}

export default Companies