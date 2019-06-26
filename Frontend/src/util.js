function getOrSetCookie() {
  const search_params = new URLSearchParams(window.location.search);
  const param_token = search_params.get("token");
  let auth_token;
  var value = "; " + document.cookie;
  var parts = value.split("; auth_token=");
  if (parts.length === 2) {
    auth_token = parts.pop().split(";").shift();
  }

  const token = param_token || auth_token;
  if (token) {
    document.cookie = "auth_token=" + token + ";";
  }

  return token;
}

function setCookie(token) {
  document.cookie = "auth_token=" + token + ";";
}

function deleteCookie() {
  document.cookie = "auth_token=; expires=Thu, 01 Jan 1970 00:00:01 GMT;";
}

function updateURL(url) {
  window.location = url;
}

module.exports = {
  getOrSetCookie: getOrSetCookie,
  setCookie: setCookie,
  deleteCookie: deleteCookie,
  updateURL: updateURL
};
