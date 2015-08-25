should = require 'should'
isArrayish = require '../'

Error.stackTraceLimit = Infinity

it 'should check if things are like arrays', ->
  (isArrayish 1).should.equal no
  (isArrayish 'hello').should.equal no
  (isArrayish {}).should.equal no
  (isArrayish length: 123).should.equal no

  (isArrayish []).should.equal yes
  (isArrayish __proto__: []).should.equal yes
  (isArrayish __proto__: Array.prototype).should.equal yes
  (isArrayish Object.setPrototypeOf {}, []).should.equal yes
  (isArrayish Object.setPrototypeOf {}, Array.prototype).should.equal yes
