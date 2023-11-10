//
//  Api.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import Foundation

class RecipesDataService {
    @Published var recipes = [RecipeResponse]()
    
    func fetchRecipes() async throws -> [RecipeResponse] {
        
        guard let url = URL(string: StaticTexts.URLS.baseUrl) else { return [] }
        
        do {
            let (data, _ ) = try await URLSession.shared.data(from: url)
            
            let decodeResponse = try JSONDecoder().decode([RecipeResponse].self, from: data)
                recipes = decodeResponse
                return recipes
            
        } catch {
            print(String(describing: error))
            return []
        }
    }
}
