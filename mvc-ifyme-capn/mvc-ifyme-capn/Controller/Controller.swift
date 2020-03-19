//
//  ViewController.swift
//  mvc-ifyme-capn
//
//  Created by abdelrhman hesham on 3/19/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class Controller: UIViewController {

    @IBOutlet weak var iphoneNameLabel: UILabel!
    @IBOutlet weak var iphoneColorLabel: UILabel!
    @IBOutlet weak var iphonePriceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
let appleProduct = AppleProduct(model: "iphone", price: 500, color: "black")
        iphoneNameLabel.text = appleProduct.model
        iphoneColorLabel.text = appleProduct.color
        iphonePriceLabel.text = "\(appleProduct.price)"
        
    }


}

