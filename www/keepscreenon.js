var keepScreenOn = {

	// Set a global screen locked variable
	screenOnFlag: false,

	/*
	* Acquire a screenlock (prevent the device from screen idle)
	*/
	enable: function()
	{
		cordova.exec(null, null, 'KeepScreenOn', 'enable', []);
		keepScreenOn.screenOnFlag = true;
	},

	/*
	* Release the screenlock (enable the device screen to idle)
	*/
	disable: function()
	{
		cordova.exec(null, null, 'KeepScreenOn', 'disable', []);
		keepScreenOn.screenOnFlag = false;
	},

	/*
	*	Toggle the screenlock
	*/
	toggleKeepScreenOn: function() {
		if(this.screenOnFlag) {
			this.disable();
		} else {
			this.enable();
		}
	}
}