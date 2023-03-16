//
//  SberAuthSdkMethodCallHandler.swift
//  sber_auth_sdk_flutter
//
//  Created by apple on 16.03.2023.
//

import Foundation

class SberAuthSdkMethodCallHandler: NSObject {
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch (call.method) {
            case "getPlatformVersion":
                getPlatformVersion(result: result)
            case "authorizeWithSberId":
                authorizeWithSberId(call: call, result: result)
            default:
                handleMethodError(
                    result: result,
                    message: "Unknown method call"
                )
        }
    }

    private func authorizeWithSberId(
        call: FlutterMethodCall,
        result: FlutterResult
    ) -> Void {
        let controller = UIApplication.shared.delegate?.window??.rootViewController as? FlutterViewController
        
        if (controller == nil) {
            return handleMethodError(
                result: result,
                message: "Context is not set for the app"
            )
        }

        do {
            let callArgs = call.arguments

            if (!(callArgs is [String: Any?])) {
                throw MyError.runtimeError("Method call arguments are invalid")
            }

            let loginParameters = try SberIdLoginParametersFactory.fromMap(
                map: callArgs as! [String: Any?]
            )

            let loginFacade = SberIdLoginFacade()
            let hasLoginBegun = loginFacade.login(
                viewController: controller!,
                parameters: loginParameters
            )

            if (!hasLoginBegun) {
                result(
                    MyError.runtimeError(
                        "Couldn't start SberID Login. This might be caused by absence of SBOL and browsers on the device"
                    )
                )
            } else {
                result(nil)
            }
        } catch MyError.runtimeError(let errorMessage) {
            handleMethodError(result: result, message: errorMessage)
        } catch {
            handleMethodError(result: result, message: error.localizedDescription)
        }
    }

    private func getPlatformVersion(result: FlutterResult) {
        result("Android ${android.os.Build.VERSION.RELEASE}")
    }

    private func handleMethodError(result: FlutterResult, message: String) {
        result(MyError.runtimeError(message))
    }
}
