//
//  ProductViewCell.swift
//  RetailStore
//
//  Created by Teja PV on 2/15/18.
//  Copyright © 2018 Teja PV. All rights reserved.
//

import UIKit

class ProductViewCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    func updateViews(product: Product){
        productImage.image = UIImage(named:product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}

