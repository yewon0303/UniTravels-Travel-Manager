//
//  Item.swift
//  unitravelsprac
//
//  Created by Tiyari Harshita on 30/6/19.
//  Copyright © 2019 Tiyari Harshita. All rights reserved.
//

import Foundation
import UIKit

protocol DocumentSerializeable {
    init?(dictionary:[String:Any])
}

struct Item {
    var name: String
    var price: Double
    var payer: String
    
    var dictionary: [String: Any] {
        return [
            "name": name,
            "price": price,
            "payer": payer
        ]
    }
}


extension Item : DocumentSerializeable {
    init?(dictionary: [String : Any]) {
        guard let name = dictionary["name"] as? String,
            let price = dictionary["price"] as? Double,
            let payer = dictionary["payer"] as? String else {return nil}
        
        self.init(name: name, price: price, payer: payer)
        
    }
}
