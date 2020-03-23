//
//  CategoryCell.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/21/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    func updateViews(categoryUpdateView : categoryModelStruct)  {
        categoryImage.image = UIImage.init(named: categoryUpdateView.imageNameIncategouryModel)
        categoryTitle.text = categoryUpdateView.titleInCategoryModel
         }
    
}
