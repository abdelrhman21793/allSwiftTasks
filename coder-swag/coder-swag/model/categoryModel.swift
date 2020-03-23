//
//  category.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/21/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import Foundation

struct categoryModelStruct {
    

private(set) public var titleInCategoryModel: String!
private(set) public var imageNameIncategouryModel: String!
    
init(title: String, imageName: String){
    self.titleInCategoryModel = title
    self.imageNameIncategouryModel = imageName
}
}
