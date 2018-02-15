//
//  Category.swift
//  RetailStore
//
//  Created by Teja PV on 2/10/18.
//  Copyright © 2018 Teja PV. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var categoryType: String
    private(set) public var image: String
    init(categoryType: String, image: String) {
        self.categoryType = categoryType
        self.image = image
    }
}
