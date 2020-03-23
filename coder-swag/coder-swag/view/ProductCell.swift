//
//  ProductCell.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/23/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import Foundation
import UIKit

class ProdectCell: UICollectionViewCell {
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductPrice: UILabel!
    @IBOutlet weak var ProductTitle: UILabel!
    
    func updateViewInProduct(ProductUpdateViewProductCell : ProductModelStruct){
        ProductImage.image = UIImage(named: ProductUpdateViewProductCell.imageNameInProductModel)
        ProductPrice.text = ProductUpdateViewProductCell.priceInProductModel
        ProductTitle.text = ProductUpdateViewProductCell.titleInProductModel
        
    }
}
