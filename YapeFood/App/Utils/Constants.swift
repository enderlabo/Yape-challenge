//
//  Constants.swift
//  YapeFood
//
//  Created by Elderson Laborit on 10/11/23.
//

import Foundation

enum StaticTexts {
    static let empty = ""
    static let homeTabName = "Home"
    static let mapButtonTitle = "Show location"
    static let homeHeaderTitle = "Pizza Recipes"
    static let homeSearchBarPlaceHolder = "Searc your favorite Pizza"
    static let titleMarkMap = "Pizza Here"
    
    
    
    enum Image {
        static let homeIcon = "house"
        static let photoIcon = "photo"
        static let mappinIcon = "mappin"
    }
    
    enum Numbers {
        static let int0:CGFloat = 0
        static let int5:CGFloat = 5
        static let int10:CGFloat = 10
        static let int20:CGFloat = 20
        static let int30:CGFloat = 30

        static let int50:CGFloat = 50
        static let int100:CGFloat = 100
        static let int136:CGFloat = 136
        static let int160: CGFloat = 160
        static let int216: CGFloat = 216
        static let int300: CGFloat = 300
        
        static let latLima = -12.0464
        static let logLima = -77.036667
    }
    
    enum URLS {
        static let baseUrl = "https://demo2934757.mockable.io/recipe-list"
    }
}
