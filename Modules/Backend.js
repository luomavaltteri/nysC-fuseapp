
function getJourneys(stopNum){
  return new Promise(function(resolve, reject) {
        setTimeout(function(){
            var status = 0;
            var response_ok = false;
            var responseObject;

            fetch('http://data.itsfactory.fi/journeys/api/1/journeys?stopPointId=' + stopNum, {
                method: 'GET',
                headers: { "Content-type": "application/json"}
            }).then(function(response) {
                status = response.status;  // Get the HTTP status code
                response_ok = response.ok; // Is response.status in the 200-range?
                return response.json();    // This returns a promise
            }).then(function(responseObject) {
                console.log('We have response ');
                //console.log(JSON.stringify(responseObject));
                resolve(responseObject);
            }).catch(function(err) {
                console.log('error: ' + err);
                reject();
            });
        }, 0);
    });

}

module.exports = {
    getJourneys: getJourneys
};
