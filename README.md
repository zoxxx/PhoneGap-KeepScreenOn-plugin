PhoneGap-KeepScreenOn-plugin
============================
 
Keeps the display on - disable idle timer screen locking - avoid shutting screen off while app is running.

Cross-platform plugin for Cordova / PhoneGap >= 3.0

#### Supported platforms

Android, iOS, Amazon FireOS

#### Installation

For Cordova:

	cordova plugin add git://github.com/zoxxx/PhoneGap-KeepScreenOn-plugin.git

For PhoneGap

	phonegap local plugin add git://github.com/zoxxx/PhoneGap-KeepScreenOn-plugin.git
	
#### Using the plugin

To activate screen on feature:

	keepscreenon.enable();
	
To deactivate screen on feature:

	keepscreenon.disable();
	
To toggle current state:

	keepscreenon.toggle(); 