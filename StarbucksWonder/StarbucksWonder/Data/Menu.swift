//
//  Menu.swift
//  StarbucksWonder
//
//  Created by Mac on 21.07.2022.
//

import SwiftUI


struct MenuSection: Codable, Identifiable {
    var id: String
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    
    var id: String
    var name: String
    var price: Int
    var description: String
    var image: String
    
#if DEBUG

static let example = MenuItem(id: "231-13431-124-124-124412", name: "Caffe Latte", price: 32, description: "Zengin espresso, buharla ısıtılmış kadifemsi süt ve süt köpüğünün dengeli buluşması", image: "caffelatte")


#endif
    
}




