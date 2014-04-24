#import "KeepScreenOn.h"

@implementation KeepScreenOn

- (void)enable:(CDVInvokedUrlCommand*)command;
{
    CDVPluginResult* pluginResult = nil;
    
    UIApplication* app = [UIApplication sharedApplication];
    
    if( ![app isIdleTimerDisabled] ) {
        [app setIdleTimerDisabled:true];
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"IdleTime Disabled"];
    }
    else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)disable:(CDVInvokedUrlCommand*)command;
{
    CDVPluginResult* pluginResult = nil;

    UIApplication* app = [UIApplication sharedApplication];
    
    if( [app isIdleTimerDisabled] ) {
        [app setIdleTimerDisabled:false];
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"IdleTime Enabled"];
    }
    else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
}

@end