//
//  SberIdParametersFactory.swift
//  sber_auth_sdk_flutter
//
//  Created by apple on 16.03.2023.
//

import Foundation

class SberIdLoginParametersFactory {
    static func fromMap(map: [String: Any?]) throws -> SberIdLoginParameters {
        let returnUrl = map["return_url"]

        if (!(returnUrl is String)) {
            throw MyError.runtimeError("Return Url is invalid: $returnUrl")
        }

        let clientId = map["client_id"]

        if (!(clientId is String)) {
            throw MyError.runtimeError("Client ID is invalid: $clientId")
        }

        let scope = map["scope"]

        if (!(scope is String)) {
            throw MyError.runtimeError("Scope is invalid: $scope")
        }

        let state = map["state"]

        if (!(state is String)) {
            throw MyError.runtimeError("State is invalid: $state")
        }

        let nonce = map["nonce"]

        if (!(nonce is String)) {
            throw MyError.runtimeError("Nonce is invalid: $nonce")
        }

        var codeChallenge: SberIdLoginCodeChallenge? = nil
        let codeChallengeMapOrNull = map["code_challenge"]

        if (
            codeChallengeMapOrNull != nil
            && !(codeChallengeMapOrNull is [String: Any?])
        ) {
            throw MyError.runtimeError("Code challenge is null")
        } else if (codeChallengeMapOrNull is [String: Any?]) {
            codeChallenge = try SberIdLoginCodeChallengeFactory.fromMap(
                map: codeChallengeMapOrNull as! [String: Any?]
            )
        }

        return SberIdLoginParameters(
            clientId: clientId as! String,
            scope: scope as! String,
            state: state as! String,
            nonce: nonce as! String,
            returnUrl: returnUrl as! String,
            codeChallenge: codeChallenge,
            webPageAuthUrl: map["custom_tabs_return_url"] as? String
        )
    }
    
    class SberIdLoginCodeChallengeFactory {
        static func fromMap(map: [String: Any?]) throws -> SberIdLoginCodeChallenge? {
            let value = map["value"]

            if (!(value is String)) {
                throw MyError.runtimeError("Code challenge value is invalid")
            }

            let method = map["method"]

            if (!(method is String)) {
                throw MyError.runtimeError("Code challenge method is invalid")
            }

            return SberIdLoginCodeChallenge(
                value: value as! String,
                method: method as! String
            )
        }
    }
}
