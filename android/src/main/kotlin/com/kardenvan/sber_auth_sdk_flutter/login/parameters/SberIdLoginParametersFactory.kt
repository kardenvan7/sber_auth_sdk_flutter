package com.kardenvan.sber_auth_sdk_flutter.login.parameters

class SberIdLoginParametersFactory {
    companion object Factory {
        fun fromMap(map: Map<*, *>): SberIdLoginParameters {
            val returnUrl = map["return_url"]

            if (returnUrl !is String) throw Exception("Return Url is invalid: $returnUrl")

            val clientId = map["client_id"]

            if (clientId !is String) throw Exception("Client ID is invalid: $clientId")

            val scope = map["scope"]

            if (scope !is String) throw Exception("Scope is invalid: $scope")

            val state = map["state"]

            if (state !is String) throw Exception("State is invalid: $state")

            val nonce = map["nonce"]

            if (nonce !is String) throw Exception("Nonce is invalid: $nonce")

            var codeChallenge: SberIdLoginCodeChallenge? = null
            val codeChallengeMapOrNull = map["code_challenge"]

            if (codeChallengeMapOrNull != null && codeChallengeMapOrNull !is Map<*, *>) {
                throw Exception("Code challenge is null")
            } else if (codeChallengeMapOrNull is Map<*, *>) {
                codeChallenge = SberIdLoginCodeChallengeFactory.fromMap(codeChallengeMapOrNull)
            }

            return SberIdLoginParameters(
                returnUrl = returnUrl,
                clientId = clientId,
                scope = scope,
                state = state,
                nonce = nonce,
                codeChallenge = codeChallenge,
                customTabsRedirectUrl = map["custom_tabs_return_url"] as String?,
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