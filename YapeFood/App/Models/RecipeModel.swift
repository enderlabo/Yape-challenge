//
//  ReceipeModel.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import Foundation

// MARK: - RecipeResponse
struct RecipeResponse: Codable, Identifiable, Equatable {
    let id: Int
    let title: String
    let image: String
    let summary: String
    let latitude: Double
    let longitude: Double
}
