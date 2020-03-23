//
//  DataService.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/21/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import Foundation
class DataServise  {
    static  let instance = DataServise()
   
    
    private let categoryArray = [ categoryModelStruct(title : "SHIRTS" , imageName : "shirts.png"),
                                  categoryModelStruct(title : "HOODIES" , imageName : "hoodies.png"),
                                  categoryModelStruct(title : "HATS" , imageName : "hats.png"),
                                  categoryModelStruct(title : "DIGITAL" , imageName : "digital.png")
    ]
    private let hatArray = [
    ProductModelStruct(title: "DevsLoop LOGO Hat Original ", price: "20", imageName: "hat01.png"),
    ProductModelStruct(title: "DevsLoop LOGO Hat Black", price: "40", imageName: "hat02.png"),
    ProductModelStruct(title: "DevsLoop LOGO HAt white", price: "10", imageName: "hat03.png"),
    ProductModelStruct(title: "DevsLoop LOGO Hat SnapBack", price: "90", imageName: "hat04.png"),
    ]
    
    private let hoodiesArray = [
        ProductModelStruct(title: "DevsLoop LOGO hoodie Original ", price: "120", imageName: "hoodie01.png"),
        ProductModelStruct(title: "DevsLoop LOGO hoodie Black", price: "400", imageName: "hoodie02.png"),
        ProductModelStruct(title: "DevsLoop LOGO hoodie white", price: "120", imageName: "hoodie03.png"),
        ProductModelStruct(title: "DevsLoop LOGO hoodie SnapBack", price: "190", imageName: "hoodie04.png"),
    ]
    private let shirtsArray = [
        ProductModelStruct(title: "DevsLoop LOGO shirt Original ", price: "10", imageName: "shirt01.png"),
        ProductModelStruct(title: "DevsLoop LOGO shirt Black", price: "20", imageName: "shirt02.png"),
        ProductModelStruct(title: "DevsLoop LOGO shirt white", price: "10", imageName: "shirt03.png"),
        ProductModelStruct(title: "DevsLoop LOGO shirt SnapBack", price: "70", imageName: "shirt04.png"),
    ]
    private let digitalGoods = [ProductModelStruct]()
    func getCategory()  -> [categoryModelStruct] {
        return categoryArray
    }
    func getProduct(forCategouryTitle title :String) -> [ProductModelStruct] {
        switch title {
        case "SHIRTS":
            return getHats()
        case "HOODIES":
            return getShirts()
        case "HATDS":
            return getHoodies()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
         
        }
    }
        func getShirts() -> [ProductModelStruct]{
            return shirtsArray
        }
        func getHoodies() -> [ProductModelStruct]{
            return hoodiesArray
        }
        func getHats() -> [ProductModelStruct]{
            return hatArray
        }
        func getDigital() -> [ProductModelStruct]{
            return digitalGoods
        }
    
}
