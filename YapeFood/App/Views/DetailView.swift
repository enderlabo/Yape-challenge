//
//  DetailView.swift
//  YapeFood
//
//  Created by Elderson Laborit on 9/11/23.
//

import SwiftUI

struct DetailView: View {
    let image: String
    let description: String
    let name: String
    let latitude: Double
    let longitude: Double
    
    var body: some View {
        
        ScrollView {
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: StaticTexts.Numbers.int100, height: StaticTexts.Numbers.int100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            }
            .frame( height: StaticTexts.Numbers.int300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5)]), startPoint: .top, endPoint: .bottom))
            .shadow(color: .black.opacity(0.5), radius: StaticTexts.Numbers.int5)
            
            VStack(spacing: StaticTexts.Numbers.int30) {
                VStack(alignment: .leading ,spacing: StaticTexts.Numbers.int20) {
                    Text(name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                }
                
                VStack(alignment: .leading, spacing: StaticTexts.Numbers.int20) {
                    Text(description)
                        .font(.headline)
                    
                    NavigationLink(destination: MapView(
                        latitude: latitude, 
                        longitude: longitude)) {
                            CustomButton()
                           
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
        .background(LinearGradient(gradient: Gradient(colors: [.white, .purple.opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    DetailView(image: StaticTexts.empty, description: StaticTexts.empty, name: StaticTexts.empty, latitude: StaticTexts.Numbers.int0, longitude: StaticTexts.Numbers.int0)
}
