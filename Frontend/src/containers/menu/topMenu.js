import React from "react";
import Grid from '@material-ui/core/Grid';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import IconButton from '@material-ui/core/IconButton';
import Typography from '@material-ui/core/Typography';
import AccountCircle from '@material-ui/icons/AccountCircle';
import Menu from '@material-ui/core/Menu';
import MenuItem from '@material-ui/core/MenuItem';
import { withStyles } from "@material-ui/core/styles";
import _ from "../../util.js";

// TOP MENU
function TopMenu({ classes }) {
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);
  const token = _.getOrSetCookie();

  function handleMenu(event) {
    setAnchorEl(event.currentTarget);
  }

  function handleClose() {
    setAnchorEl(null);
  }

  return (
    <AppBar position="sticky" className={classes.menu}>
      <Toolbar>
        <Grid container justify="space-between" alignItems="center">
          <Grid item xs={10}>
            <Typography variant="h3">
              <a href="/" className={classes.menuTitle}>stori</a>
            </Typography>
          </Grid>
          <Grid item xs={2} className={classes.userIcon}>
            <IconButton
              aria-label="Account of current user"
              aria-controls="menu-appbar"
              aria-haspopup="true"
              onClick={handleMenu}
              color="inherit"
            >
              <AccountCircle />
            </IconButton>
            <Menu
              id="menu-appbar"
              anchorEl={anchorEl}
              anchorOrigin={{
                vertical: 'bottom',
                horizontal: 'center',
              }}
              keepMounted
              transformOrigin={{
                vertical: 'bottom',
                horizontal: 'center',
              }}
              open={open}
              onClose={handleClose}
            >
              { !token && (
                <p>
                  <a href="/login"><MenuItem>Sign In</MenuItem></a>
                  <a href="/register"><MenuItem>Create Account</MenuItem></a>
                </p>
              )}
              { token && (
                <p>
                  <a href="/logout"><MenuItem>Sign Out</MenuItem></a>
                </p>
              )}
            </Menu>
          </Grid>
        </Grid>
      </Toolbar>
    </AppBar>
  );
}

const styles = {
  menu: { background: '#26d291' },
  menuTitle: { background: '-webkit-linear-gradient(45deg, #1e13cc, #0579b1 50%)',
    '-webkit-background-clip': 'text',
    '-webkit-text-fill-color': 'transparent',
    '&:hover': {
      opacity: '0.5'
    }
  },
  userIcon: { textAlign: "right" }
};

export default withStyles(styles)(TopMenu);
