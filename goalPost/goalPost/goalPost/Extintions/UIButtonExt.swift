//
//  UIButtonExt.swift
//  goalPost
//
//  Created by abdelrhman hesham on 3/24/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.3016467392, green: 0.7468368411, blue: 0.3395946622, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.6506131291, green: 0.8722513318, blue: 0.6690511107, alpha: 1)
    }
}
