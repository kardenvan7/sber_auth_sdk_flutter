package com.kardenvan.sber_auth_sdk_flutter.login.parameters

data class SberIdLoginParameters constructor(
    val clientId: String,
    val scope: String,
    val state: String,
    val nonce: String,
    val redirectUrl: String,
    val codeChallenge: SberIdLoginCodeChallenge?,
    val inCustomTabs: Boolean = false,
)

data class SberIdLoginCodeChallenge constructor(
    val value: String,
    val method: String,
)