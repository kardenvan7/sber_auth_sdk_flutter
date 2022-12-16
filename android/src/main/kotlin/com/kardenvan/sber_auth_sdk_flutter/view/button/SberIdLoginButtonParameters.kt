package com.kardenvan.sber_auth_sdk_flutter.view.button

import com.kardenvan.sber_auth_sdk_flutter.login.parameters.*

data class SberIdLoginButtonParameters constructor(
    val loginParameters: SberIdLoginParameters,
    val viewParameters: SberIdLoginButtonViewParameters,
)

data class SberIdLoginButtonViewParameters constructor(
    val buttonType: SberIdLoginButtonType
)

enum class SberIdLoginButtonType constructor(val value: String) {
    DEFAULT("default_type"),
    WHITE("white_type")
}

class SberIdLoginButtonViewParametersFactory {
    companion object Factory {
        fun fromMap(map: Map<*, *>): SberIdLoginButtonViewParameters {
            val type = SberIdLoginButtonType.values().firstOrNull {
                it.value == map["button_type"]
            } ?: SberIdLoginButtonType.DEFAULT

            return SberIdLoginButtonViewParameters(
                buttonType = type
            )
        }
    }
}

class SberIdLoginButtonParametersFactory {
    companion object Factory {
        fun fromMap(map: Map<*, *>): SberIdLoginButtonParameters {
            val loginParameters = SberIdLoginParametersFactory.fromMap(
                map["login_parameters"] as Map<*, *>
            )

            val viewParameters = SberIdLoginButtonViewParametersFactory.fromMap(
                map["view_parameters"] as Map<*, *>
            )

            return SberIdLoginButtonParameters(
                loginParameters = loginParameters,
                viewParameters = viewParameters
            )
        }
    }
}