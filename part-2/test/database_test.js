const expect = require( 'chai' ).expect
const query = require('../database.js')

describe( 'getAllGuests()', ()=> {
  it( 'List every guest for hotel', ()=> {
    return query.getAllGuests()
    .then( results => {
      console.log('these are the results guest', results)
      expect(results[0].name).to.equal('Aurthur Velti')
      expect(results[1].name).to.equal('Kurtis Pougher')
    })
  })
})
describe( 'getAllRooms()', ()=> {
  it( 'List every rooms, whether available or not', ()=> {
    return query.getAllRooms()
    .then( results => {
      console.log('these are the results rooms', results)
      expect(results[0].room_number).to.equal('2A')
      expect(results[1].room_number).to.equal('2C')
      expect(results.length).to.equal(18)
    })
  })
})
describe( 'getAllBookingsByRoomId(room_id)', ()=> {
  it( 'List every booking by room id', ()=> {
    return query.getAllBookingsByRoomId(1)
    .then( results => {
      console.log('these are the results booked rooms', results)
      expect(results[0].name).to.equal('Charlton Millson')
      expect(results[0].room_number).to.equal('2D') 
    })
  })
})
describe( 'getAllAvailableRooms()', ()=> {
  it( 'List every room that is available', ()=> {
    return query.getAllAvailableRooms()
    .then( results => {
      console.log('these are the results booked rooms', results)
      expect(results[0].name).to.equal('Aurthur Velti')
      expect(results[0].room_number).to.equal('2A')
      expect(results.length).to.equal(15) 
    })
  })
})
describe( 'getUpcomingBookings()', ()=> {
  it( 'Get all upcoming bookings in ASC order', ()=> {
    return query.getUpcomingBookings()
    .then( results => {
      console.log('these are the results booked rooms', results)
      expect(results[0].name).to.equal('Aurthur Velti')
      expect(results[0].room_number).to.equal('2A')
      expect(results.length).to.equal(15) 
    })
  })
})