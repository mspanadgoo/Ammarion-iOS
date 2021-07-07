//
//  BasicParamModel.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI

struct BasicParamModel: Decodable, Hashable {
    let culture: String
    let deviceName: String
    let imei: String
    let manufacturer: String
    let modelNumber: String
    let osVersion: String
    let platform: String
    let requestAgent: String
    let store: String
    let token: String
    let userId: Int
    let username: String
    let validtoken: Bool
}
