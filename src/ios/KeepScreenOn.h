#import <Cordova/CDV.h>

@interface KeepScreenOn : CDVPlugin {}

- (void) enable:(CDVInvokedUrlCommand*)command;

- (void) disable:(CDVInvokedUrlCommand*)command;

@end