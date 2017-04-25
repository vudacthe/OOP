//
//  DataService.swift
//  OOP
//
//  Created by Vũ Đắc Thế on 4/24/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation
class DataService {
    static let shared: DataService = DataService()
    private var _cities: [City]!
    private var _districts: [District]!
    var cities: [City] {
        set {
            _cities = newValue
        }get {
            if _cities == nil {
                update(places: &_cities, fromFileName: "Cities.plist", rootKey: "Cities")
            }
            return _cities
        
        }
        
    }
    var districts: [District] {
        set {
            _districts = newValue
        } get {
            if _districts == nil {
                update(places: &_districts, fromFileName: "Districts.plist", rootKey: "Districts")
            }
            return _districts
        }
    }
    var selectedCity: City? {
        didSet {
            if selectedCity != nil {
                selectedDistrictByCodeCity = districts.filter{$0.cityCode == selectedCity!.cityCode}
            } else {
                selectedDistrictByCodeCity = nil
            }
        }
    }
    
    var selectedDistrictByCodeCity: [District]?
    func update<T: PlaceProtocol>(places: inout [T]!, fromFileName fileName: String, rootKey: String){
        places = []
        guard let root = PlistService().getDitionaryfrom(plist: fileName) else {return}
        
        guard let placeDictionaties = root[rootKey] as? [Dictionary<AnyHashable, Any>] else {return}
        
        for dict in placeDictionaties {
            if let place = T(dict: dict) {
                places.append(place)
            }
        }
    }
    
}
