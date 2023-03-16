//
//  SberIdLoginParameters.swift
//  sber_auth_sdk_flutter
//
//  Created by apple on 16.03.2023.
//

import Foundation

struct SberIdLoginParameters {
    let clientId: String
    let scope: String
    let state: String
    let nonce: String
    let returnUrl: String
    let codeChallenge: SberIdLoginCodeChallenge?
    let webPageAuthUrl: String?
}

struct SberIdLoginCodeChallenge {
    let value: String
    let method: String
}
