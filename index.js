'use strict';

module.exports = function isArrayish(obj) {
	return obj instanceof Array || Array.isArray(obj) ||
		(obj.length >= 0 && obj.splice instanceof Function);
};
