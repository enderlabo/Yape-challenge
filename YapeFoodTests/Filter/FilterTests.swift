//
//  FilterTests.swift
//  YapeFoodTests
//
//  Created by Elderson Laborit on 10/11/23.
//

import XCTest

@testable import YapeFood

final class FilterTests: XCTestCase {

    func testFilteredRecipes_ReturnsEmptyArrayIfSearchItemIsEmpty() {
           // Given
           let homeV = HomeView()
           let homeVM = HomeViewModel()
           let recipes = [RecipeResponse]()
           homeVM.recipes = recipes

           // When
           let filteredRecipes = homeV.filteredRecipes

           // Then
           XCTAssertTrue(filteredRecipes.isEmpty)
       }

       func testFilteredRecipes_ReturnsAllRecipesIfSearchItemIsEmpty() {
           // Given
           let homeV = HomeView()
           let homeVM = HomeViewModel()
           let recipes = [RecipeResponse(id: 1, title: "Recipe 2", image: "", summary: "", latitude: 0, longitude: 0)]
           homeVM.recipes = recipes

           // When
           let filteredRecipes = homeV.filteredRecipes

           // Then
           XCTAssertEqual(filteredRecipes, [])
       }

}
