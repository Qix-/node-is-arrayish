import {ok} from 'node:assert'
import isArrayish from '../mod.js'

ok(!isArrayish(1))
ok(!isArrayish('hello'))
ok(!isArrayish({}))
ok(!isArrayish(null))
ok(!isArrayish(undefined))
ok(isArrayish({ __proto__: [] }))
ok(isArrayish({ __proto__: Array.prototype }))
ok(isArrayish([]))
ok(isArrayish([1, 3, 4, 5]))
ok(isArrayish({ length: 123, splice: (function() {}) }))
ok(isArrayish({ length: 3, 0: 1, 1: 15, 2: 17 }))

if (Object.setPrototypeOf) {
  ok(isArrayish(Object.setPrototypeOf({}, [])))
  ok(isArrayish(Object.setPrototypeOf({}, Array.prototype)))
}
