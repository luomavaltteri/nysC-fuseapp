var Observable = require("FuseJS/Observable");
var Backend = require("./Backend");

//var stopNum = '3523';
var info = Observable();

function handleCalls(data, stopNum){
  var stopInfo = {};

  for (i = 0; i < data.calls.length; ++i) {
    if(data.calls[i].stopPoint.shortName == stopNum){
      stopInfo.arrivalTime = data.calls[i].arrivalTime;
      stopInfo.lineName = data.headSign;
      stopInfo.dayTypes = data.dayTypes[0];
      break;
    }
  }

  return stopInfo;
}

function getSchedule(data, stopNum){
  var dataObject = data;
  var returnInfo = [];

  console.log("getSchedule");

  dataObject.body.forEach(function(element) {
    returnInfo.push(handleCalls(element, stopNum));
  });

  //console.log(JSON.stringify(returnInfo));

  return returnInfo;
}

function provideInfo(stopInput) {
  console.log("provideInfo");
  Backend.getJourneys(stopInput)
    .then(function(newInfo) {
      console.log("then newInfo from " + stopInput);
      console.log(JSON.stringify((getSchedule(newInfo, stopInput))[0]));
      info.replaceAll(getSchedule(newInfo, stopInput));
    })
    .catch(function(error) {
      console.log("Couldn't get info: " + error);
    });
}

provideInfo();

module.exports = {
    info: info,

    provideInfo: provideInfo
};