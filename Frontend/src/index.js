import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter, Route, Switch } from "react-router-dom";

import _ from "./util.js";

import CssBaseline from "@material-ui/core/CssBaseline";
import { MuiThemeProvider } from "@material-ui/core/styles";
import './index.css';

import DashboardLoader from "./containers/dashboard/dashboardLoader.js";
import TimelineLoader from "./containers/timeline/timelineLoader.js";

const token = _.getOrSetCookie();
console.log(token);

const App = () => (
  <MuiThemeProvider>
    <CssBaseline />
    <BrowserRouter>
      <Switch>
        <Route path="/timeline" component={TimelineLoader} />
        <Route path="/" component={DashboardLoader} />
      </Switch>
    </BrowserRouter>
  </MuiThemeProvider>
);

ReactDOM.render(<App />, document.getElementById('root'));
