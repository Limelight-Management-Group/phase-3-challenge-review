const express = require('express')
let app = express()
let bodyParser = require('body-parser')

// direct requests to the public directory
app.use( express.static( __dirname + '/public' ) );
// set up template
// app.use( bodyParser.json() );
app.use( bodyParser.urlencoded( {
  extended: false
} ) );

app.get('/', (req, res) =>{
  res.sendStatus(200)
  console.log('working')
})

app.get('/api/shout/:word', (req, res) =>{
  let params = req.params.word
  console.log('these are the params', params)
  let upcased = params.toUpperCase()
  res.send(upcased + ' !!!')
    // let params = wordparams.toUpperCase()

})

app.post('/api/array/merge', (req, res) =>{
  console.log('starting the merge post function')
  var {a, b} = req.body
  console.log('a', typeof a)
  console.log('b',b)
  if ( !Array.isArray(JSON.parse(a)) || !Array.isArray(JSON.parse(b))) {
    console.log('yes, we are running this code.')
    res.status(400).send('{"error":"Both keys in request body must be of type Array."}')
    // res.status(400).send('Current password does not match');

  }else {
    // res.set('Content-Type', 'application/json')
    let result = []
    for(var i = 0; i < a.length || i < b.length; i++){

      // console.log('the value',a)
      if(a[i]){
       result.push(a[i])
    }
    if(b[i]){
      result.push(b[i])
    }
    console.log('a', a)
    console.log('b', b)
    }
    // let resultz = a.concat(b)
    res.send(result)
  }
})

let port = 3000
app.listen(port, () =>{
  console.log('phase server is live on port:', port)
})