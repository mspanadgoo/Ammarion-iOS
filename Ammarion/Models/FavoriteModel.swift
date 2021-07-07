//
//  FavoriteModel.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI

struct FavoriteModel: Decodable, Hashable {
    let basicParams: [BasicParamModel]
    let explanation: String
    let id: Int
    let newsId: Int
    let primaryImage: String
    let registerDate: String
    let title: String
    let urlPath: String
}
