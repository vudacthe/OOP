//
//  City.swift
//  OOP
//
//  Created by Vũ Đắc Thế on 4/24/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation

struct City: PlaceProtocol {
    var name = ""
    var cityCode = 0
    
    init?(name: String, cityCode: Int) {
        guard name != "" else {return nil}
        guard cityCode > 0 else {return nil}
        self.name = name
        self.cityCode = cityCode
    }
    init?(dict: Dictionary<AnyHashable, Any>) {
        guard let name = dict["Name"] as? String else {return nil}
        guard let cityCode = dict["CityCode"] as? Int else {return nil}
        self.init(name: name, cityCode: cityCode)
    }
    
}
