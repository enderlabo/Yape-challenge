//
//  HomeView.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM = HomeViewModel()
    @State private var searchItem = StaticTexts.empty
    
    var filteredRecipes: [RecipeResponse] {
        if searchItem.isEmpty  { return homeVM.recipes }
        
        return homeVM.recipes.filter { $0.title.localizedStandardContains(searchItem) }
    }
    
    var body: some View {
        NavigationStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: StaticTexts.Numbers.int160), spacing: StaticTexts.Numbers.int30)], spacing: StaticTexts.Numbers.int30) {
                        ForEach(filteredRecipes) { recipe in
                            NavigationLink(destination: DetailView(
                                image: recipe.image,
                                description: recipe.summary,
                                name: recipe.title, 
                                latitude: recipe.latitude,
                                longitude: recipe.longitude
                            )) {
                                    CardView(name: recipe.title,
                                             image: recipe.image)
                                }
                        }
                    }
                    .padding(.top)
                }
                .background(LinearGradient(gradient: Gradient(colors: [.white, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            }
            .padding(.horizontal)
            .background(LinearGradient(gradient: Gradient(colors: [.white, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .navigationTitle(StaticTexts.homeHeaderTitle)
            .searchable(text: $searchItem, prompt: StaticTexts.homeSearchBarPlaceHolder)
            .background(.white)
        }
    }
}

#Preview {
    HomeView()
}
