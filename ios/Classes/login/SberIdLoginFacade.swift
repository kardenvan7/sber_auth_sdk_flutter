//
//  SberIdLoginFacade.swift
//  sber_auth_sdk_flutter
//
//  Created by apple on 16.03.2023.
//

import Foundation
import SberbankSDK

class SberIdLoginFacade {
    func login(
        viewController: UIViewController, parameters: SberIdLoginParameters
    ) -> Bool {
        let request = buildRequest(parameters: parameters)

        return loginWithSberId(
            request: request,
            viewController: viewController,
            webPageAuthUrl: parameters.webPageAuthUrl
        )
    }
    
    func loginWithSberId(
        request: SBKAuthRequest,
        viewController: UIViewController,
        webPageAuthUrl: String?
    ) -> Bool {
        if (webPageAuthUrl != nil) {
            return SBKAuthManager.soleLoginWebPageAuth(
                sberIdRequest: request,
                svcRedirectUrlString: webPageAuthUrl!,
                viewController: viewController
            )
        } else {
            SBKAuthManager.auth(
                withSberId: request,
                viewController: viewController
            )
            
            return true
        }
    }
    
    func buildRequest(parameters: SberIdLoginParameters) -> SBKAuthRequest {
        let request = SBKAuthRequest()

        request.clientId = parameters.clientId
        request.nonce = parameters.nonce
        request.scope = parameters.scope
        request.state = parameters.state
        request.redirectUri = parameters.returnUrl
        
        if (parameters.codeChallenge != nil) {
            request.codeChallenge = SBKUtils.createChallenge(parameters.codeChallenge!.value)
            request.codeChallengeMethod = parameters.codeChallenge!.method
        }
        
        return request
    }
}
