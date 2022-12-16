#import "SberAuthSdkFlutterPlugin.h"
#if __has_include(<sber_auth_sdk_flutter/sber_auth_sdk_flutter-Swift.h>)
#import <sber_auth_sdk_flutter/sber_auth_sdk_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sber_auth_sdk_flutter-Swift.h"
#endif

@implementation SberAuthSdkFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSberAuthSdkFlutterPlugin registerWithRegistrar:registrar];
}
@end
