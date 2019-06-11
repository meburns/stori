import React from "react";
import Grid from '@material-ui/core/Grid';
import Card from '@material-ui/core/Card';
import { Container, Draggable } from 'react-smooth-dnd';
import { withStyles } from "@material-ui/core/styles";

const initialData = [
  {
    id: '1',
    name: 'column #1',
    data: [
      { id: '1', value: 'value #1' },
      { id: '2', value: 'value #2' },
      { id: '3', value: 'value #3' }
    ]
  },
  {
    id: '2',
    name: 'column #2',
    data: [
      { id: '4', value: 'value #4' },
      { id: '5', value: 'value #5' },
      { id: '6', value: 'value #6' }
    ]
  },
  {
    id: '3',
    name: 'column #3',
    data: [
      { id: '7', value: 'value #7' },
      { id: '8', value: 'value #8' },
      { id: '9', value: 'value #9' }
    ]
  }
];

// TIMELINE
class Timeline extends React.Component {
  render() {
    return (
      <Grid container>
        <Grid item xs={12}>
          <h1>My Timeline</h1>
        </Grid>
        <Grid item xs={12}>
          <Grid container>
            <Grid item xs={12}>
              <div>
                not working yet
              </div>
            </Grid>
          </Grid>
        </Grid>
      </Grid>
    )
  };
}

const styles = {
  main: { padding: "10px" },
  row: {
    minHeight: "200px",
    "&:nth-child(even)": {
      textAlign: "right"
    }
  }
};

export default withStyles(styles)(Timeline);
