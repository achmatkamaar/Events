//
//  ColorSchemeViewModel.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/25.
//

import Foundation
import SwiftUI

//struct ColorSchemeView {
//    let color = false
//}
//
//extension ColorSchemeView {
//    func appearanceMode() -> Bool {
//    }
//}

class ColorSchemeViewModel: ObservableObject {
    @Published var darkMode = true
    @Published var colorMode: ColorScheme = .dark
    
//    func toggleColorScheme() -> ColorScheme {
//        if darkMode == true {
//            self.colorMode = .dark
//            return colorMode
//        } else {
//            self.colorMode = .light
//            return colorMode
//        }
//    }
}
