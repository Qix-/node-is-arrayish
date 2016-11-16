should = require 'should'
isArrayish = require '../'

Error.stackTraceLimit = Infinity

it 'should check if things are like arrays', ->
  (isArrayish 1).should.equal no
  (isArrayish 'hello').should.equal no
  (isArrayish {}).should.equal no
  (isArrayish null).should.equal no
  (isArrayish undefined).should.equal no

  (isArrayish length: 123, splice: (->)).should.equal yes
  (isArrayish length: 3, 0: 1, 1: 15, 2: 17).should.equal yes
  (isArrayish []).should.equal yes
  (isArrayish __proto__: []).should.equal yes
  (isArrayish __proto__: Array.prototype).should.equal yes
  if Object.setPrototypeOf
    (isArrayish Object.setPrototypeOf {}, []).should.equal yes
    (isArrayish Object.setPrototypeOf {}, Array.prototype).should.equal yes

  (isArrayish [1, 3, 4, 5]).should.equal yes
