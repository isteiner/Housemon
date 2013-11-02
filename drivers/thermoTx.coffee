module.exports =

  announcer: 51

  descriptions:
    temp:
      title: 'Temperature T22'
      unit: '°C'
      scale: 1
      min: 0
      max: 100
    gas:
      title: 'Gas Counter'
      unit: 'm3'
      min: 0
      max: 9999999

  feed: 'rf12.packet'

  decode: (raw, cb) ->
    cb
      temp: raw.readUInt16LE(1, true)
      gas: raw.readUInt32LE(3, true)
 
