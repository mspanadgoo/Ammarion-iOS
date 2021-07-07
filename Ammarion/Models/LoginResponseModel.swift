//
//  LoginModel.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI

struct LoginResponseModel: Decodable, Hashable {
    let code: Int
    let configModel: ConfigModel
    let dateTime: String
    let favorites: [FavoriteModel]
    let menus: [MenuModel]
    let message: String
    let messages: [String]
    let permissions: [PermissionModel]
    let status: Bool
    let token: String
    let totalPages: Int
    let userId: String
}
