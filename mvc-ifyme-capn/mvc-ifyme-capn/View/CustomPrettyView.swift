//
//  CustomPrettyView.swift
//  mvc-ifyme-capn
//
//  Created by abdelrhman hesham on 3/19/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class CustomPrettyView: UIView {

    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
        layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        layer.borderWidth = 5
        backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    }

}
