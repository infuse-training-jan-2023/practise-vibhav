const axios = require('axios');

const url = process.env.URL 
axios.get(url)
  .then(function (response) {
    console.log(JSON.stringify(response.data, undefined, 2))
  })
  .catch(function (error) {
  	console.log(error);
  })
