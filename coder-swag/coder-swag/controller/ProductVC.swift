//
//  ProductVC.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/23/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate , UICollectionViewDataSource {
   
    @IBOutlet weak var productCollection : UICollectionView!
    
    private(set) public var productInProductVC = [ProductModelStruct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func initProducts(categouryInProductVC : categoryModelStruct)  {
        productInProductVC = DataServise.instance.getProduct(forCategouryTitle: categouryInProductVC.titleInCategoryModel)
        navigationItem.title = categouryInProductVC.titleInCategoryModel
        

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return productInProductVC.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cellInCollectionViewFuncINProductVC = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProdectCell{
            let ProductCollectionViewProductVC = productInProductVC [indexPath.row]
            cellInCollectionViewFuncINProductVC.updateViewInProduct(ProductUpdateViewProductCell: ProductCollectionViewProductVC)
            return cellInCollectionViewFuncINProductVC
        }
        return ProdectCell ()
    }
}
