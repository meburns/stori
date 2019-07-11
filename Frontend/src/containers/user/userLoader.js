import React from "react";
import axios from "axios";

import _ from "../../util.js";
import Login from "./login.js";
import Register from "./register.js";

// USER LOADER
class UserLoader extends React.Component {
  constructor(props) {
    super(props);

    this.handleLogin = this.handleLogin.bind(this);
    this.handleRegister = this.handleRegister.bind(this);
  }

  handleLogin(event) {
    event.preventDefault();
    const data = new FormData(event.target);
    let formData = { 'username': data.get('username'), 'password': data.get('password')};
    _.setLocalStorage("username", data.get('username'));

    axios({
      method: "POST",
      url: `${process.env.REACT_APP_STORI_API_URL}/auth/signin`,
      data: formData,
      crossDomain: true
    })
      .then(res => {
        let data = res.data;
        let token = data.accessToken;
        _.setLocalStorage("auth_token", "Bearer " + token);
        _.updateURL("/");
      })
      .catch(e => {
        console.log(e);
      });
  }

  handleRegister(event) {
    event.preventDefault();
    const data = new FormData(event.target);
    let formData = {
      "name": data.get("name"),
      'username': data.get("username"),
      "email": data.get("email"),
      "role": ["admin"],
      "password": data.get("password")
    };

    axios({
      method: "POST",
      url: `${process.env.REACT_APP_STORI_API_URL}/auth/signup`,
      data: formData,
      crossDomain: true
    })
      .then(res => {
        console.log(res);
        _.updateURL("/login");
      })
      .catch(e => {
        console.log(e);
      });
  }

  render() {
    if (this.props.match.path === "/logout") {
      _.deleteLocalStorage("auth_token");
    }
    if (this.props.match.path === "/register") {
      return <Register handleSubmit={this.handleRegister}/>;
    } else {
      return <Login handleSubmit={this.handleLogin}/>;
    }
  }
}

export default UserLoader;
