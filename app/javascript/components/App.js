import React from "react";
import { Route, Switch } from 'react-router-dom'
import Companies from "./Companies/Companies";
import Company from "./Company/Company";

const App = () => {
    return (
        <Switch>
            <Route exact path="/" component={Companies}/>
            <Route exact path="/companies/:slug" component={Company}/>
        </Switch>)
}

export default App