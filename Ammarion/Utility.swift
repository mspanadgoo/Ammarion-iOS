//
//  Utility.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import Foundation

struct Utility {
    func getHTTPHeaders() -> [String: String] {
        var headerFields = [String: String]()
        
        headerFields["appData"] = getAppData()
        headerFields["Token"] = ""
        
        return headerFields
    }
    
    func getAppData() -> String {
        guard let json = try? JSONEncoder().encode(MysRequestContextModel(culture: "", deviceName: "", imei: "", manufacturer: "", modelNumber: "", osVersion: "", platform: "", requestAgent: "", store: "", token: "", userId: 0, username: "", validtoken: false)) else { return "" }
        return json.base64EncodedString()
    }
}
