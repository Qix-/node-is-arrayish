export default function isArrayish(a) {
  return a && "string" !== typeof a && (a instanceof Array || Array.isArray(a) || 0 <= a.length && (a.splice instanceof Function || Object.getOwnPropertyDescriptor(a, a.length - 1) && "String" !== a.constructor.name))
}
