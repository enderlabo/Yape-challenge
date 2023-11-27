//
//  CardView.swift
//  YapeFood
//
//  Created by Elderson Laborit on 9/11/23.
//

import SwiftUI

struct CardView: View {
    let name: String
    let image: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(name)
                            .font(.headline)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .shadow(color: .black, radius: 5, x: 0, y:0)
                            .frame(maxWidth: StaticTexts.Numbers.int136)
                            .padding()
                    }
                    
            } placeholder: {
                Image(systemName: StaticTexts.Image.photoIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: StaticTexts.Numbers.int50, height: StaticTexts.Numbers.int50, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
            .frame(width: StaticTexts.Numbers.int150, height: StaticTexts.Numbers.int150, alignment: .top)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: StaticTexts.Numbers.int20, style: .continuous))
            .shadow(color: .black.opacity(0.7), radius: StaticTexts.Numbers.int5)
        }
        
    }
        
        
}

#Preview {
    CardView(name: StaticTexts.empty, image: StaticTexts.empty)
}
