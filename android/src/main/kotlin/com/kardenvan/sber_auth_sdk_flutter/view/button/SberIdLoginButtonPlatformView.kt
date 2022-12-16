package com.kardenvan.sber_auth_sdk_flutter.view.button

import android.content.Context
import android.view.View
import com.kardenvan.sber_auth_sdk_flutter.core.PluginLogger
import com.kardenvan.sber_auth_sdk_flutter.login.SberIdLoginFacade
import io.flutter.plugin.platform.PlatformView

class SberIdLoginButtonPlatformView constructor(
    context: Context,
    sberIdLoginButtonParameters: SberIdLoginButtonParameters,
): PlatformView {
    private val buttonView: SberIdLoginButtonView

    init {
        buttonView = SberIdLoginButtonView(
            context = context,
            attrs = null,
            defStyleAttr = 0,
            sberIdLoginButtonParameters
        )
    }

    override fun getView(): View {
        return buttonView
    }

    override fun dispose() {
        TODO("Not yet implemented")
    }
}

