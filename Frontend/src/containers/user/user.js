import React from "react";
import Grid from '@material-ui/core/Grid';

import { withStyles } from "@material-ui/core/styles";

// USER
function User({ handleSubmit, classes }) {
  return (
    <Grid container className={classes.main} justify="center">
      <form onSubmit={handleSubmit}>
        <Grid item xs={10} className={classes.row}>
          <h1>Login</h1>
        </Grid>
        <Grid item xs={5} className={classes.row}>
          <label>Email</label>
        </Grid>
        <Grid item xs={5} className={classes.row}>
          <input type="text" />
        </Grid>
        <Grid item xs={5} className={classes.row}>
          <label>Password</label>
        </Grid>
        <Grid item xs={5} className={classes.row}>
          <input type="password" />
        </Grid>
        <Grid item xs={5} className={classes.row}>
          <input type="submit"/>
        </Grid>
      </form>
    </Grid>
  );
}

const styles = {
  main: { padding: "10px" }
};

export default withStyles(styles)(User);
