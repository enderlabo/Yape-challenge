//
//  ApiTest.swift
//  YapeFoodTests
//
//  Created by Elderson Laborit on 10/11/23.
//

import XCTest
@testable import YapeFood
import Combine

class RecipesDataServiceTests: XCTestCase {

    private var recipesDataService: RecipesDataService!
    private var cancellables: Set<AnyCancellable>!

    override func setUp() {
        super.setUp()

        recipesDataService = RecipesDataService()
        cancellables = []
    }

    override func tearDown() {
        recipesDataService = nil
        cancellables.removeAll()

        super.tearDown()
    }

    func testFetchRecipes_ReturnsRecipesArrayIfURLIsValid() async throws {

        // When
        let recipes = try await recipesDataService.fetchRecipes()

        // Then
        XCTAssertFalse(recipes.isEmpty)

        for recipe in recipes {
            XCTAssertNotNil(recipe.id)
            XCTAssertNotNil(recipe.title)
            XCTAssertNotNil(recipe.summary)
            XCTAssertNotNil(recipe.image)
        }
    }

    func testFetchRecipes_PublishesRecipesArrayToRecipesPropertyWhenSuccessful() async throws {

        // When
        let recipes = try await recipesDataService.fetchRecipes()

        // Then
        XCTAssertTrue(!recipes.isEmpty)

    }

    func testFetchRecipes_PublishesEmptyArrayToRecipesPropertyIfThereIsAnError() async throws {

         // When
       let recipes = try await recipesDataService.fetchRecipes()

        // Then
        XCTAssertFalse(recipes.isEmpty)
    }
}
