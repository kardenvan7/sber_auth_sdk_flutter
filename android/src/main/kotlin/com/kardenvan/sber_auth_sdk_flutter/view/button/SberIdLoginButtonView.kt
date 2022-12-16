package com.kardenvan.sber_auth_sdk_flutter.view.button

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import com.kardenvan.sber_auth_sdk_flutter.R
import com.kardenvan.sber_auth_sdk_flutter.core.PluginLogger
import com.kardenvan.sber_auth_sdk_flutter.databinding.SberIdLoginButtonViewBinding
import com.kardenvan.sber_auth_sdk_flutter.login.SberIdLoginFacade
import com.kardenvan.sber_auth_sdk_flutter.view_model.SberIdLoginButtonViewModel
import sberid.sdk.auth.view.SberIDButton

class SberIdLoginButtonView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0,
    parameters: SberIdLoginButtonParameters
) : View(context, attrs, defStyleAttr) {
    private var binding: SberIdLoginButtonViewBinding

    private val sberIdButton: SberIDButton
        get(): SberIDButton {
            return binding.sberIdLoginButton
        }

    init {
        val loginParameters = parameters.loginParameters
        val viewParameters = parameters.viewParameters

        val clientId = loginParameters.clientId

        val viewModel = SberIdLoginButtonViewModel(
            clientId = clientId,
            type = viewParameters.buttonType.value,
        )

        binding = DataBindingUtil.inflate(
            LayoutInflater.from(context),
            R.layout.sber_id_login_button_view,
            this.parent as ViewGroup?,
            false
        )

        binding.buttonviewmodel = viewModel

        sberIdButton.setOnClickListener {
            onButtonClicked(context, loginParameters.redirectUrl, clientId)
        }

        sberIdButton.setHideObserver { _, _ ->
            buttonHideObserver()
        }
    }

    private fun buttonHideObserver() {
        PluginLogger.log("SberIdLoginButtonView hidden")
    }

    private fun onButtonClicked(context: Context, redirectUrl: String, clientId: String) {
        sberIdButton.setLoaderState(true)

        SberIdLoginFacade.login(
            context = context,
            redirectUrl = redirectUrl,
            clientId = clientId,
        )

        sberIdButton.setLoaderState(false)
    }
}