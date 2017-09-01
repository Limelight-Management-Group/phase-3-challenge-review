const express = require('express')
let app = express()
let bodyParser = require('body-parser')
let ejs = require('ejs')
let port = 3001
let query = require('./database.js')

app.set( 'view engine', 'ejs' );
app.use( bodyParser.json() );

app.get('/', (req, res)=>{
  query.getAllAvailableRooms()
  .then(room=>{
    console.log('this is the room check', room)
  }).then(query.getAllRooms()
  .then(rooms => {
    console.log('these are the rooms',rooms)
    res.send('0')
  })
  )
})

app.get('/viewer', (req, res)=>{
  query.getAllAvailableRooms(true)
  .then(guests=>{
    guests.map((guest) =>{
    console.log('guest', guest)
    res.render('viewer')
    })    
  })
})

app.listen(port, ()=>{
  console.log('part 2 of review server is running on port:', port)
})
