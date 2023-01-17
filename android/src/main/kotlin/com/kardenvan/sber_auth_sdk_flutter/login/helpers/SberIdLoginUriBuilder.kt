package com.kardenvan.sber_auth_sdk_flutter.login.helpers

import android.content.Context
import android.net.Uri
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginParameters
import sberid.sdk.auth.login.SberIDLoginManager

class SberIdLoginUriBuilder constructor(
    private val context: Context, private val parameters: SberIdLoginParameters
) {
    fun build(): Uri {
        val builder = SberIDLoginManager.sberIDBuilder()

        builder
            .clientID(parameters.clientId)
            .scope(parameters.scope)
            .state(parameters.state)
            .nonce(parameters.nonce)
            .redirectUri(parameters.returnUrl)

        if (parameters.codeChallenge != null) {
            builder
                .codeChallenge(parameters.codeChallenge.value)
                .codeChallengeMethod(parameters.codeChallenge.method)
        }

        if (parameters.customTabsRedirectUrl != null) {
            builder.customTabRedirectUri(parameters.customTabsRedirectUrl, context)
        }

        return builder.build()
    }
}