//
//  MenuModel.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI

struct MenuModel: Decodable, Hashable {
    let basicParams: [BasicParamModel]
    let caption: String
    let explanation: String
    let icon: String
    let id: Int
    let link: String
    let name: String
    let parentId: Int
    let platform: String
    let primaryImage: String
    let registerDate: String
    let title: String
    let type: String
    let urlPath: String
    let visible: Bool
}
