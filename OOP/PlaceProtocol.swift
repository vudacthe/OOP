//
//  PlaceProtocol.swift
//  OOP
//
//  Created by Vũ Đắc Thế on 4/24/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation

protocol PlaceProtocol {
    var name: String {get set}
    init?(dict: Dictionary<AnyHashable, Any>)
}
