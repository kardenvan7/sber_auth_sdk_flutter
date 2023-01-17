package com.kardenvan.sber_auth_sdk_flutter

import android.content.Context
import android.content.Intent
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
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        callHandler = SberAuthSdkMethodCallHandler(binding.activity)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        callHandler.onMethodCall(call, result)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        callHandler.setContext(null)
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        callHandler.setContext(binding.activity)
    }

    override fun onDetachedFromActivity() {
        callHandler.setContext(null)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        callHandler.setContext(null)
        channel.setMethodCallHandler(null)
    }
}
