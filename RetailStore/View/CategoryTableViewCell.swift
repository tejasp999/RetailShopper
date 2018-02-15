//
//  CategoryTableViewCell.swift
//  RetailStore
//
//  Created by Teja PV on 2/10/18.
//  Copyright © 2018 Teja PV. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    func updateView(category : Category){
        categoryImage.image = UIImage(named: category.image)
        categoryTitle.text = category.categoryType
    }

}
