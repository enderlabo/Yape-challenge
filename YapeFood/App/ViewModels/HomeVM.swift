//
//  HomeVM.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var recipes = [RecipeResponse]()
    private let service = RecipesDataService()
    
    init() {
        Task {
            try await fetchRecipes()
        }
    }
    
    @MainActor func fetchRecipes() async throws {
        recipes =  try await service.fetchRecipes()
    }
    
}

