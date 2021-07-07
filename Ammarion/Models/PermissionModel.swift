//
//  PermissionModel.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI

struct PermissionModel: Decodable, Hashable {
    let basicParams: [BasicParamModel]
    let createAction: String
    let deleteAction: String
    let explanation: String
    let groupId: Int
    let id: Int
    let menuId: Int
    let otherAction: Bool
    let primaryImage: String
    let readAction: String
    let registerDate: String
    let title: String
    let updateAction: Bool
    let urlPath: String
}
