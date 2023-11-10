//
//  RecipesModel.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import Foundation

struct Recipe: Identifiable {
    let id: Int
    let title: String
    let image: String
    let imageType: ImageType
    
    enum ImageType: String, Codable {
        case jpg = "jpg"
        case png = "png"
    }
}


