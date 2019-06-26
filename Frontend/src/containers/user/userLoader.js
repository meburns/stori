import React from "react";
import axios from "axios";

import _ from "../../util.js";
import User from "./user.js";

// USER LOADER
class UserLoader extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    const data = new FormData(event.target);
    let formData = { 'username': data.get('username'), 'password': data.get('password')};

    axios({
      method: "POST",
      url: `${process.env.REACT_APP_STORI_API_URL}/auth/signin`,
      data: formData,
      crossDomain: true
    })
      .then(res => {
        let data = res.data;
        let token = data.accessToken;
        _.setCookie(token);
        _.updateURL("/");
      })
      .catch(e => {
        console.log(e);
      });
  }

  render() {
    if (this.props.match.path === "/logout") {
      _.deleteCookie();
    }
    return <User handleSubmit={this.handleSubmit}/>;
  }
}

export default UserLoader;
