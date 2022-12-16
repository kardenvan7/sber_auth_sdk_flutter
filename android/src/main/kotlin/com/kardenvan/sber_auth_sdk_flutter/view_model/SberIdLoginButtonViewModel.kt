package com.kardenvan.sber_auth_sdk_flutter.view_model

import com.kardenvan.sber_auth_sdk_flutter.view.button.SberIdLoginButtonType

data class SberIdLoginButtonViewModel constructor(
    val clientId: String,
    val type: String
)