import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter, Route, Switch } from "react-router-dom";

import CssBaseline from "@material-ui/core/CssBaseline";
import { MuiThemeProvider } from "@material-ui/core/styles";
import './index.css';

import DashboardLoader from "./containers/dashboard/dashboardLoader.js";
import TimelineLoader from "./containers/timeline/timelineLoader.js";

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
