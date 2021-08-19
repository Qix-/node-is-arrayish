# node-is-arrayish
> Determines if an object can be used like an Array

## Example
```javascript
import isArrayish from 'is-arrayish'

isArrayish([]) // true
isArrayish({__proto__: []}) // true
isArrayish({}) // false
isArrayish({length:10}) // false
```

## License
Licensed under the [MIT License](http://opensource.org/licenses/MIT).
You can find a copy of it in [LICENSE](LICENSE).
