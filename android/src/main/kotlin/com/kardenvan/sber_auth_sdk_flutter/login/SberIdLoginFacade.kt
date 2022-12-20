package com.kardenvan.sber_auth_sdk_flutter.login

import android.content.Context
import android.net.Uri
import com.kardenvan.sber_auth_sdk_flutter.login.helpers.SberIdLoginUriBuilder
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginParameters
import sberid.sdk.auth.login.SberIDLoginManager

class SberIdLoginFacade constructor(private val parameters: SberIdLoginParameters) {
    private val loginManager = SberIDLoginManager()

    fun login(context: Context): Boolean {
        val uri = buildUri(context)

        return loginWithSberID(context, uri, parameters.inCustomTabs)
    }

    private fun loginWithSberID(context: Context, uri: Uri, inCustomTabs: Boolean): Boolean {
        return if (inCustomTabs) {
            loginManager.loginWithSberIDToCustomTabs(context, uri)
        } else {
            loginManager.loginWithSberbankID(context, uri)
        }
    }

    private fun buildUri(context: Context): Uri {
        val builder = SberIdLoginUriBuilder(context, parameters)

        return builder.build()
    }
}