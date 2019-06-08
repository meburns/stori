import React from "react";
import Grid from '@material-ui/core/Grid';

import { withStyles } from "@material-ui/core/styles";

// DASHBOARD
function Dashboard({ classes }) {
  return (
    <Grid container className={classes.main}>
      <Grid item xs={12} className={classes.row}>
        <h1>Dashboard</h1>
      </Grid>
      <Grid item xs={12} className={classes.row}>
        <h1>Row #1</h1>
      </Grid>
      <Grid item xs={12} className={classes.row}>
        <h1>Row #2</h1>
      </Grid>
      <Grid item xs={12} className={classes.row}>
        <h1>Row #3</h1>
      </Grid>
      <Grid item xs={12} className={classes.row}>
        <h1>Row #4</h1>
      </Grid>
    </Grid>
  );
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

export default withStyles(styles)(Dashboard);
