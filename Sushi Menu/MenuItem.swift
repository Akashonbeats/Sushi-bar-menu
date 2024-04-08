//
//  MenuItem.swift
//  Sushi Menu
//
//  Created by Akash Sampath on 07/04/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
