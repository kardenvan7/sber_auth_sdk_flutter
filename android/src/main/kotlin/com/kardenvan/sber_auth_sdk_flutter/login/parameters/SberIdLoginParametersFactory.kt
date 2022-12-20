package com.kardenvan.sber_auth_sdk_flutter.login.parameters

class SberIdLoginParametersFactory {
    companion object Factory {
        fun fromMap(map: Map<*, *>): SberIdLoginParameters {
            val redirectUrl = map["redirect_url"]

            if (redirectUrl !is String) throw Exception("Redirect Url argument is invalid")

            val clientId = map["client_id"]

            if (clientId !is String) throw Exception("Client ID argument is invalid")

            return SberIdLoginParameters(
                redirectUrl = redirectUrl,
                clientId = clientId,
                inCustomTabs = map["in_custom_tabs"] as Boolean? ?: false
            )
        }
    }
}