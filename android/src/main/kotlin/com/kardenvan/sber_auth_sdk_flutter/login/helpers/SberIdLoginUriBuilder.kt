package com.kardenvan.sber_auth_sdk_flutter.login.helpers

import android.content.Context
import android.net.Uri
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginParameters
import sberid.sdk.auth.login.SberIDLoginManager
import java.util.*

class SberIdLoginUriBuilder constructor(
    private val context: Context, private val parameters: SberIdLoginParameters
) {
    fun build(): Uri {
        val state = generateRandomState()
        val nonce = generateRandomNonce()

        val builder = SberIDLoginManager.sberIDBuilder()

        builder
            .clientID(parameters.clientId)
            .scope(parameters.scope)
            .state(state)
            .nonce(nonce)
            .redirectUri(parameters.redirectUrl)

        if (parameters.inCustomTabs) builder.customTabRedirectUri(parameters.redirectUrl, context)

        return builder.build()
    }

    private fun generateRandomState(): String {
        return UUID.randomUUID().toString()
    }

    private fun generateRandomNonce(): String {
        return UUID.randomUUID().toString()
    }
}