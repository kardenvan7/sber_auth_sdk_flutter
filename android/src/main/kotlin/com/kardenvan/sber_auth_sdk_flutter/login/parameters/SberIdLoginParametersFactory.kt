package com.kardenvan.sber_auth_sdk_flutter.login.parameters

class SberIdLoginParametersFactory {
    companion object Factory {
        fun fromMap(map: Map<*, *>): SberIdLoginParameters {
            val redirectUrl = map["redirect_url"]

            if (redirectUrl !is String) throw Exception("Redirect Url is invalid")

            val clientId = map["client_id"]

            if (clientId !is String) throw Exception("Client ID is invalid")

            val scope = map["scope"]

            if (scope !is String) throw Exception("Scope is invalid")

            return SberIdLoginParameters(
                redirectUrl = redirectUrl,
                clientId = clientId,
                scope = scope,
                inCustomTabs = map["in_custom_tabs"] as Boolean? ?: false
            )
        }
    }
}