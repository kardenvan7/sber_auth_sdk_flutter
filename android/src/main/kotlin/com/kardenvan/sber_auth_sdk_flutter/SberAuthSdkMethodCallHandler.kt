package com.kardenvan.sber_auth_sdk_flutter

import android.content.Context
import com.kardenvan.sber_auth_sdk_flutter.login.SberIdLoginFacade
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginParametersFactory
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result

class SberAuthSdkMethodCallHandler constructor(private val context: Context) {
    fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "getPlatformVersion" -> getPlatformVersion(result)
            "authorizeWithSberId" -> authorizeWithSberId(call, result)
            else -> handleUnknownMethodCall(result)
        }
    }

    private fun authorizeWithSberId(call: MethodCall, result: Result) {
        try {
            val callArgs = call.arguments

            if (callArgs !is Map<*, *>) throw Exception("Method call arguments are invalid")

            val loginParameters = SberIdLoginParametersFactory.fromMap(callArgs)

            val loginFacade = SberIdLoginFacade(parameters = loginParameters)
            val hasLoginBegun = loginFacade.login(context)

            if (!hasLoginBegun) {
                result.error(
                    "-99",
                    "Couldn't start SberID Login. This might be caused by absence of SBOL and browsers on the device",
                    null
                )
            } else {
                result.success(null)
            }
        } catch (e: Exception) {
            handleMethodError(result, e)
        }
    }

    private fun getPlatformVersion(result: Result) {
        result.success("Android ${android.os.Build.VERSION.RELEASE}")
    }

    private fun handleMethodError(result: Result, e: Exception) {
        result.error(
            e.message ?: "-1",
            e.localizedMessage ?: "Unknown error",
            e.stackTraceToString()
        )
    }

    private fun handleUnknownMethodCall(result: Result) {
        result.notImplemented()
    }
}