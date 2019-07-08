import React from "react";
// import axios from "axios";
import { setLocalStorage, getLocalStorage } from "../../util.js";

import Timeline from "./timeline.js";
const initialData = [
  {
    id: '1',
    name: 'column #1',
    data: [
      { id: '1', content: 'value #1' },
      { id: '2', content: 'value #2' },
      { id: '3', content: 'value #3' }
    ]
  },
  {
    id: '2',
    name: 'column #2',
    data: [
      { id: '4', content: 'value #4' },
      { id: '5', content: 'value #5' },
      { id: '6', content: 'value #6' }
    ]
  },
  {
    id: '3',
    name: 'column #3',
    data: [
      { id: '7', content: 'value #7' },
      { id: '8', content: 'value #8' },
      { id: '9', content: 'value #9' }
    ]
  }
];

// TIMELINE LOADER
class TimelineLoader extends React.Component {
  constructor(props) {
    super(props);
    let data = getLocalStorage("timelineData");

    if (!data) {
      data = JSON.stringify(initialData);
      setLocalStorage("timelineData", data);
    }

    this.state = {
      data: data
    };
  }

  render() {
    return <Timeline data={this.state.data} />;
  }
}

export default TimelineLoader;
