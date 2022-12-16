package com.kardenvan.sber_auth_sdk_flutter.view.button

import android.content.Context
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentActivity
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class SberIdLoginButtonViewPlatformFactory :
    PlatformViewFactory(StandardMessageCodec.INSTANCE) {

    override fun create(context: Context?, viewId: Int, args: Any?): PlatformView {
        if (args !is Map<*, *>) throw Exception("Wrong arguments passed for SberIdLoginButtonView")

        val argumentsClass = SberIdLoginButtonParametersFactory.fromMap(args)

        return SberIdLoginButtonPlatformView(
            context!!,
            argumentsClass
        )
    }
}