module.exports =

  announcer: 50

  descriptions:
    L1:
      title: 'Power Phase 1'
      unit: 'W'
      min: 0
      max: 8000
    L2:
      title: 'Power Phase 2'
      unit: 'W'
      min: 0
      max: 8000
    L3:
      title: 'Power Phase 3'
      unit: 'W'
      min: 0
      max: 8000
    Power:
      title: 'Power Total'
      unit: 'W'
      min: 0
      max: 10000

  feed: 'rf12.packet'

  decode: (raw, cb) ->
    cb
      L1: raw.readUInt16LE(1, true)
      L2: raw.readUInt16LE(3, true)
      L3: raw.readUInt16LE(5, true)
      Power: raw.readUInt16LE(1, true)+raw.readUInt16LE(3, true)+raw.readUInt16LE(5, true)
 
