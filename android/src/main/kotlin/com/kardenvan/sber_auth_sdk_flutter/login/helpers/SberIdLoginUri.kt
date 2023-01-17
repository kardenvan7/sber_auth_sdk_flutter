package com.kardenvan.sber_auth_sdk_flutter.login.helpers

import android.content.Context
import android.net.Uri
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginCodeChallenge
import com.kardenvan.sber_auth_sdk_flutter.login.parameters.SberIdLoginParameters
import sberid.sdk.auth.login.SberIDLoginManager

class SberIdLoginUri private constructor(
    val context: Context,
    clientId: String,
    scope: String,
    state: String,
    nonce: String,
    returnUrl: String,
    codeChallenge: SberIdLoginCodeChallenge? = null,
    customTabsRedirectUri: String? = null,
) {
    val isWithCustomTabs: Boolean = customTabsRedirectUri != null
    val uri: Uri

    init {
        val builder = SberIDLoginManager.sberIDBuilder()

        builder
            .clientID(clientId)
            .scope(scope)
            .state(state)
            .nonce(nonce)
            .redirectUri(returnUrl)

        if (codeChallenge != null) {
            builder
                .codeChallenge(codeChallenge.value)
                .codeChallengeMethod(codeChallenge.method)
        }

        if (customTabsRedirectUri != null) {
            builder.customTabRedirectUri(customTabsRedirectUri, context)
        }

        uri = builder.build()
    }

    companion object Factory {
        fun fromParameters(context: Context, parameters: SberIdLoginParameters): SberIdLoginUri {
            return SberIdLoginUri(
                context = context,
                clientId = parameters.clientId,
                scope = parameters.scope,
                state = parameters.state,
                nonce = parameters.nonce,
                returnUrl = parameters.returnUrl,
                codeChallenge = parameters.codeChallenge,
                customTabsRedirectUri = parameters.customTabsRedirectUrl,
            )
        }
    }
}