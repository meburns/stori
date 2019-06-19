import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter, Route, Switch } from "react-router-dom";

import _ from "./util.js";

import CssBaseline from "@material-ui/core/CssBaseline";
import './index.css';

import TopMenuLoader from "./containers/menu/topMenuLoader.js";
import DashboardLoader from "./containers/dashboard/dashboardLoader.js";
import TimelineLoader from "./containers/timeline/timelineLoader.js";
import UserLoader from "./containers/user/userLoader.js";

const token = _.getOrSetCookie();

const App = () => (
  <div>
    <CssBaseline />

    {!token && (
      <BrowserRouter>
        <Switch>
          <Route path="/login" component={UserLoader} />
          <Route path="/" component={DashboardLoader} />
        </Switch>
      </BrowserRouter>
    )}
    {token && <TopMenuLoader/>}
    {token && (
      <BrowserRouter>
        <Switch>
          <Route path="/timeline" component={TimelineLoader} />
          <Route path="/login" component={UserLoader} />
          <Route path="/logout" component={UserLoader} />
          <Route path="/" component={DashboardLoader} />
        </Switch>
      </BrowserRouter>
    )}

  </div>
);

ReactDOM.render(<App />, document.getElementById('root'));
