package com.kardenvan.sber_auth_sdk_flutter

import android.util.Log
import com.kardenvan.sber_auth_sdk_flutter.core.PluginLogger
import com.kardenvan.sber_auth_sdk_flutter.view.button.SberIdLoginButtonViewPlatformFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** SberAuthSdkFlutterPlugin */
class SberAuthSdkFlutterPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var callHandler: SberAuthSdkMethodCallHandler

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "sber_auth_sdk_flutter")
        channel.setMethodCallHandler(this)

        flutterPluginBinding.platformViewRegistry.registerViewFactory(
            "sber_id_login_button",
            SberIdLoginButtonViewPlatformFactory(),
        )
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        PluginLogger.log("ATTACHED TO ACTIVITY")
        callHandler = SberAuthSdkMethodCallHandler(binding.activity)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        callHandler.onMethodCall(call, result)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        TODO("Not yet implemented")
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        TODO("Not yet implemented")
    }

    override fun onDetachedFromActivity() {
        TODO("Not yet implemented")
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
