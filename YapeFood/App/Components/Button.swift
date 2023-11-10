//
//  Button.swift
//  YapeFood
//
//  Created by Elderson Laborit on 10/11/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        VStack {
            Text(StaticTexts.mapButtonTitle)
                .padding()
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.headline)
        }
        .frame(minWidth: StaticTexts.Numbers.int0, maxWidth: .infinity)
        .background(Color.purple)
        .cornerRadius(StaticTexts.Numbers.int10)
        .padding()
    }
}

#Preview {
    CustomButton()
}
