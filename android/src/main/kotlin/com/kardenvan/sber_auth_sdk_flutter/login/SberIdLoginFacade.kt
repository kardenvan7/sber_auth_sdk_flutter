package com.kardenvan.sber_auth_sdk_flutter.login

import android.content.Context
import sberid.sdk.auth.login.SberIDLoginManager
import java.util.UUID

object SberIdLoginFacade {
    private val loginManager = SberIDLoginManager()
    private const val scope = "openid name email mobile birthdate gender"

    fun login(context: Context, redirectUrl: String, clientId: String): Boolean {
        val state = UUID.randomUUID().toString()
        val nonce = UUID.randomUUID().toString()

        val uri = SberIDLoginManager.sberIDBuilder()
            .clientID(clientId)
            .scope(scope)
            .state(state)
            .nonce(nonce)
            .redirectUri(redirectUrl)
            .build()

        return loginManager.loginWithSberbankID(context, uri)
    }
}