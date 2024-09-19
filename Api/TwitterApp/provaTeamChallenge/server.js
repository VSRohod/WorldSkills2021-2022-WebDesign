const express = require('express')
const Twit = require('twit')
const app = express()

var T = new Twit({
    consumer_key: 'DN4drcP5PvwjQctS3Nf9b6HMX',
    consumer_secret: 'RdQvGnqJRvduNlOVd3S4y8822snx3Jpp3rgdzvm54WBzzQJno1',
    access_token: '1267979647247056897-fvW6GocRKDFGfyNVNhCacbbWcMn9As',
    access_token_secret: 'PiRL3xNYrRe4jhtM84PsQx71AIz626LJPJh1c82De7dRa',
    timeout_ms: 60 * 1000,
    strictSSL: true,
})

//TOP TRENDS
app.get('/toptrends',(request, response) =>{
    T.get('https://api.twitter.com/1.1/trends/place.json?id=1'), (err,data,response) => {
        for(let eachData of data){
            console.log(eachData)
        }
    }
    response.sendStatus(200)
})

//TWEETS
app.get('/twetts',(request, response) =>{
    T.get('https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=DarkamiGem&count=3'), (err,data,response) => {
        for(let eachData of data){
            console.log(eachData)
        }
    }
    response.sendStatus(200)
})

app.listen(1111)