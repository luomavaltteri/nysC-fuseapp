var Context = require("Modules/Context");

function goToHomePage() {
  Context.provideInfo();
}


module.exports = {
  list: Context.info._values,

  goToHomePage: goToHomePage
};