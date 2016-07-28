// Expose the native API to javascript
forge.bolts = {
	version: function (success, error) {
		forge.internal.call('bolts.version', {}, success, error);
	}
};
