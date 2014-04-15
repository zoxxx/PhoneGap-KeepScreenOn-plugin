package com.mediamatrixdoo.keepscreenon;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;
import org.json.JSONArray;
import org.json.JSONException;

import android.view.WindowManager.LayoutParams;

public class KeepScreenOn extends CordovaPlugin {

	@Override
	public boolean execute(String action, JSONArray args, CallbackContext callback) throws JSONException {
		// grab the correct methods
		if(action.equalsIgnoreCase("enable")) {
			cordova.getActivity().runOnUiThread( new Runnable() {
				public void run() {
					cordova.getActivity().getWindow().addFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);
				}
			});
			return true;
		} else if(action.equalsIgnoreCase("disable")) {
			cordova.getActivity().runOnUiThread( new Runnable() {
				public void run() {
					cordova.getActivity().getWindow().clearFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);
				}
			});
			return true;
		} else {
			callback.error("Unknown Action: " + action);
			return false;
		}
	}
}