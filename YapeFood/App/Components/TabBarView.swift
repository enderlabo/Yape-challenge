//
//  TabBarVieww.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label(StaticTexts.homeTabName, systemImage: StaticTexts.Image.homeIcon)
                }
        }
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}
