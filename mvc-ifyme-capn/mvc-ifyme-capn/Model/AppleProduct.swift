//
//  AppleProduct.swift
//  mvc-ifyme-capn
//
//  Created by abdelrhman hesham on 3/19/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import Foundation
class AppleProduct {
   public private (set) var model: String
   public private (set) var price: Double
   public private (set) var color: String
    init(model: String , price:Double , color:String) {
        self.model = model
        self.price = price
        self.color = color
    }
}
