//
//  ProductModel.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/23/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import Foundation

struct ProductModelStruct {
    private(set) public var titleInProductModel :String
    private(set) public var priceInProductModel :String
    private(set) public var imageNameInProductModel :String
    
    init(title :String , price :String , imageName:String) {
        self.titleInProductModel = title
        self.priceInProductModel = price
        self.imageNameInProductModel = imageName
    }

    
}
