//
//  ProductsViewController.swift
//  RetailStore
//
//  Created by Teja PV on 2/15/18.
//  Copyright © 2018 Teja PV. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var productsCollection : UICollectionView!
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    func loadProduct(category : Category){
        products = DataService.instance.getProducts(forCategoryType: category.categoryType)
        navigationItem.title = category.categoryType
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductViewCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductViewCell()
    }

}
