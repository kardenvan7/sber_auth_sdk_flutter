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

            val state = map["state"]

            if (state !is String) throw Exception("State is invalid")

            val nonce = map["nonce"]

            if (nonce !is String) throw Exception("Nonce is invalid")

            var codeChallenge: SberIdLoginCodeChallenge? = null
            val codeChallengeMapOrNull = map["code_challenge"]

            if (codeChallengeMapOrNull != null && codeChallengeMapOrNull !is Map<*, *>) {
                throw Exception("Code challenge is invalid")
            } else if (codeChallengeMapOrNull is Map<*, *>) {
                codeChallenge = SberIdLoginCodeChallengeFactory.fromMap(codeChallengeMapOrNull)
            }

            return SberIdLoginParameters(
                redirectUrl = redirectUrl,
                clientId = clientId,
                scope = scope,
                state = state,
                nonce = nonce,
                codeChallenge = codeChallenge,
                inCustomTabs = map["in_custom_tabs"] as Boolean? ?: false
            )
        }
    }

    class SberIdLoginCodeChallengeFactory {
        companion object Factory {
            fun fromMap(map: Map<*, *>): SberIdLoginCodeChallenge {
                val value = map["value"]

                if (value !is String) throw Exception("Code challenge value is invalid")

                val method = map["method"]

                if (method !is String) throw Exception("Code challenge method is invalid")

                return SberIdLoginCodeChallenge(
                    value = value,
                    method = method,
                )
            }
        }
    }
}