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

// TOP MENU
function TopMenu({ classes }) {
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);

  function handleMenu(event) {
    setAnchorEl(event.currentTarget);
  }

  function handleClose() {
    setAnchorEl(null);
  }

  return (
    <AppBar position="sticky" className={classes.menu}>
      <Toolbar>
        <Grid container justify="flex-end" alignItems="center">
          <Grid item xs={10}>
            <Typography variant="h3">
              stori
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
              <MenuItem onClick={handleClose}>Sign In</MenuItem>
              <MenuItem onClick={handleClose}>Create Account</MenuItem>
            </Menu>
          </Grid>
        </Grid>
      </Toolbar>
    </AppBar>
  );
}

const styles = {
  menu: { background: '#479a7c' },
  userIcon: { textAlign: "right" }
};

export default withStyles(styles)(TopMenu);
