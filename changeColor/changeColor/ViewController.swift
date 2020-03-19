//
//  ViewController.swift
//  changeColor
//
//  Created by abdelrhman hesham on 3/19/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var isPurbel = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func colorButton(_ sender: Any) {
        if isPurbel{
            view.backgroundColor = UIColor.red
            isPurbel = false
        } else {
            view.backgroundColor = UIColor.purple
            isPurbel = true
        }
    }
}

