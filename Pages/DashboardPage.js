var Context = require("Modules/Context");
var Observable = require("FuseJS/Observable");

var stopNumber = Observable();

function goToHomePage() {
  Context.provideInfo(stopNumber.value);
}


module.exports = {
  list: Context.info,

  stopNumber: stopNumber,

  goToHomePage: goToHomePage
};