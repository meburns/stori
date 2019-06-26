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
      url: `${process.env.REACT_APP_STORI_API_URL}/test/user`, // TODO: replace with actual user api endpoint
      data: formData,
      crossDomain: true
    })
      .then(res => {
        let data = res.data;
        _.setCookie(data.token);
      })
      .catch(e => {
        console.log(e);
      });
  }

  render() {
    return <User handleSubmit={this.handleSubmit}/>;
  }
}

export default UserLoader;
