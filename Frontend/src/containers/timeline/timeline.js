import React from "react";
import Grid from '@material-ui/core/Grid';
import Card from '@material-ui/core/Card';

import { withStyles } from "@material-ui/core/styles";

// TIMELINE
function Timeline({ classes }) {
  return (
    <Grid container className={classes.main}>
      <Grid item xs={12} className={classes.row}>
        <h1>My Timeline</h1>
      </Grid>
      <Grid item xs={12} className={classes.row}>
        <Grid container>
          <Grid item xs={12}>
            <Card>
              test
            </Card>
          </Grid>
        </Grid>
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

export default withStyles(styles)(Timeline);
