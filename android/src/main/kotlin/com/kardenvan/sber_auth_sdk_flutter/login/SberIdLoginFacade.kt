package com.kardenvan.sber_auth_sdk_flutter.login

import android.content.Context
import com.kardenvan.sber_auth_sdk_flutter.login.helpers.SberIdLoginUri
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginParameters
import sberid.sdk.auth.login.SberIDLoginManager

class SberIdLoginFacade {
    private val loginManager = SberIDLoginManager()

    fun login(context: Context, parameters: SberIdLoginParameters): Boolean {
        val uri = buildUri(context, parameters)

        return loginWithSberID(uri)
    }

    private fun loginWithSberID(uri: SberIdLoginUri): Boolean {
        return if (uri.isWithCustomTabs) {
            loginManager.loginWithSberIDToCustomTabs(uri.context, uri.uri)
        } else {
            loginManager.loginWithSberbankID(uri.context, uri.uri)
        }
    }

    private fun buildUri(context: Context, parameters: SberIdLoginParameters): SberIdLoginUri {
        return SberIdLoginUri.fromParameters(context, parameters)
    }
}