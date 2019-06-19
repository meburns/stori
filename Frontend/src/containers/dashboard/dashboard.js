import React from "react";
import Grid from '@material-ui/core/Grid';
import Typography from '@material-ui/core/Typography';
import { withStyles } from "@material-ui/core/styles";

import rData from "./dashboard.json";

function getRows(classes) {
  let rows = [];
  for (let i=0; i < rData.rows.length; i++) {
    let row = rData.rows[i];

    rows.push(
      <Grid item xs={12} key={i} className={classes.row} style={{ background: `url(${process.env.PUBLIC_URL}${row.backgroundImage}) no-repeat center center fixed` }}>
        <Grid container className={classes.main}>
          <Grid item xs={12} className={classes.topRow}>
            <a href={row.link} className={classes.link}>
              <Typography variant="h1">
                {row.name}
              </Typography>
            </a>
          </Grid>
          <Grid item xs={12} className={classes.bottomRow}>
            <Typography variant="h5">{row.description}</Typography>
          </Grid>
        </Grid>
      </Grid>
    );
  }

  return (
    <Grid container className={classes.main}>
      {rows}
    </Grid>
  );
}

// DASHBOARD
function Dashboard({ classes }) {
  return (getRows(classes));
}

const styles = {
  row: {
    "-webkit-background-size": "cover",
    "-moz-background-size": "cover",
    "-o-background-size": "cover",
    "background-size": "cover",
    "&:nth-child(even)": {
      textAlign: "right"
    }
  },
  topRow: { opacity: '0.9', background: "#353535", color: "#FFF", padding: "20px 40px", minHeight: "100px" },
  bottomRow: { opacity: '0.7', background: "#353535", color: "#FFF", padding: "20px", minHeight: "400px" },
  link: {
    color: "inherit !important",
    textDecoration: "none",
    "& *": {
      'transition-duration': '0.5s'
    },
    "&:hover *": {
      opacity: "0.7",
      padding: "0px 40px"
    }
  }
};

export default withStyles(styles)(Dashboard);
