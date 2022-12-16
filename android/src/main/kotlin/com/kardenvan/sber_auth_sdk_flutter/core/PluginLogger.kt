package com.kardenvan.sber_auth_sdk_flutter.core

import android.util.Log

object PluginLogger {
    private const val tag: String = "SberAuthSdkFlutter"

    fun log(message: String) {
        Log.d(tag, message)
    }
}