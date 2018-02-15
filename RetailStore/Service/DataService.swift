//
//  DataService.swift
//  RetailStore
//
//  Created by Teja PV on 2/10/18.
//  Copyright © 2018 Teja PV. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    private let categories = [Category(categoryType : "Shirts", image: "shirts.png"),Category(categoryType : "Hoodies", image: "hoodies.png"),Category(categoryType : "Hats", image: "hats.png"),Category(categoryType : "Digital", image: "digital.png")]
    private let hats = [Product(title: "Beanie", price: "$10", imageName: "hat01.png"),Product(title: "Black Hat", price: "$15",imageName:"hat02.png"),Product(title: "White Hat", price: "$16",imageName:"hat03.png"),Product(title: "Snapback", price: "$18",imageName:"hat04.png")]
    private let hoodie = [Product(title: "Hoodie Grey", price: "$25", imageName: "hoodie01.png"),Product(title:"Hoodie Red", price: "$30", imageName : "hoodie02.png"),Product(title:"Hoodie Dark Grey", price: "$30", imageName : "hoodie03.png"),Product(title:"Hoodie Black", price: "$32", imageName : "hoodie04.png")]
    private let shirt = [Product(title:"Grey Shirt",price:"$15",imageName:"shirt01.png"),Product(title:"White Shirt",price:"$16",imageName:"shirt02.png"),Product(title:"Red Shirt",price:"",imageName:"shirt03.png"),Product(title:"Dark Grey Shirt",price:"$19",imageName:"shirt04.png"),Product(title:"Black Shirt",price:"$20",imageName:"shirt05.png")]
    private let digitalGoods = [Product]()
    func getCategories()->[Category]{
        return categories
    }
    func getProducts(forCategoryType type: String)->[Product]{
        switch type {
        case "Shirts":
            return getShirts()
        case "Hoodies":
            return getHoodies()
        case "Hats":
            return getHats()
        case "Digital":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    func getHats()->[Product]{
        return hats
    }
    func getHoodies()->[Product]{
        return hoodie
    }
    func getShirts()->[Product]{
        return shirt
    }
    func getDigitalGoods()->[Product]{
        return digitalGoods
    }
}
