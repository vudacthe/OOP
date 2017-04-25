//
//  PlistService.swift
//  OOP
//
//  Created by Vũ Đắc Thế on 4/24/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation

class PlistService {
    func getDitionaryfrom(plist: String) -> Dictionary<AnyHashable, Any>? {
        var result: Dictionary<AnyHashable, Any>?
        let fileNameComponent = plist.components(separatedBy: ".")
        guard let fileName = Bundle.main.path(forResource: fileNameComponent.first ?? "", ofType: fileNameComponent.last ?? "") else {
            return nil
        }
        guard FileManager.default.fileExists(atPath: fileName) else {
            return nil
        }
        guard let data = FileManager.default.contents(atPath: fileName) else {
            return nil
        }
        do {
            guard let root = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? Dictionary<AnyHashable, Any> else {return nil}
            result = root
        } catch {
            print("Error")
        }
        return result
    }
}
