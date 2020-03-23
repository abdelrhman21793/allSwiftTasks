//
//  ViewController.swift
//  coder-swag
//
//  Created by abdelrhman hesham on 3/21/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController , UITableViewDataSource , UITableViewDelegate {
   
    
    @IBOutlet weak var categoryTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServise.instance.getCategory().count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cellForDeQ = tableView.dequeueReusableCell(withIdentifier: "CategouryCell") as? CategoryCell{
            let categouriesCellInCellForDeQ = DataServise.instance.getCategory()[indexPath.row]
            cellForDeQ.updateViews(categoryUpdateView: categouriesCellInCellForDeQ)
            return cellForDeQ
        } else{
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let categouryInDidSelectInCategoryVC = DataServise.instance.getCategory() [indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: categouryInDidSelectInCategoryVC )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ProductsVC = segue.destination as? ProductVC{
            assert(sender as? categoryModelStruct != nil)
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            ProductsVC.initProducts(categouryInProductVC: sender as! categoryModelStruct)
            
        }
    }
}

