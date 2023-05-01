//
//  Item.swift
//  Iteams
//
//  Created by Eman on 29/01/2023.
//

import Foundation
class Item : Decodable{
    var id : String?
    var rank : String?
    var header : String?
    var image : String?
    var weekend : String?
    var gross : String?
    var weeks : String?
    enum CodingKeys : String , CodingKey{
        case id = "id"
        case rank = "rank"
        case header = "title"
        case image = "image"
        case weekend = "weekend"
        case gross  = "gross"
        case weeks = "weeks"
    }
}
