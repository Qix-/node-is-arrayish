'use strict';

module.exports = function isArrayish(obj) {
	return obj instanceof Array || Array.isArray(obj);
};
