import React from "react";
import Grid from '@material-ui/core/Grid';

import { withStyles } from "@material-ui/core/styles";

// USER Register
function Register({ handleSubmit, classes }) {
  return (
    <Grid container className={classes.main} justify="center">
      <form onSubmit={handleSubmit}>
        <Grid item xs={10} className={classes.row}>
          <h1>Register</h1>
        </Grid>
        <Grid item xs={7} className={classes.row}>
          <label>
            Name <input name="name" type="text" />
          </label>
        </Grid>
        <Grid item xs={7} className={classes.row}>
          <label>
            Username <input name="username" type="text" />
          </label>
        </Grid>
        <Grid item xs={7} className={classes.row}>
          <label>
            Email <input name="email" type="text" />
          </label>
        </Grid>
        <Grid item xs={7} className={classes.row}>
          <label>
            Password <input name="password" type="password" />
          </label>
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

export default withStyles(styles)(Register);
