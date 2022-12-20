package com.kardenvan.sber_auth_sdk_flutter.login.parameters

data class SberIdLoginParameters constructor(
    val redirectUrl: String,
    val clientId: String,
    val scope: String,
    val inCustomTabs: Boolean = false,
)