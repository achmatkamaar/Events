//
//  SettingsButtonsView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/25.
//

import SwiftUI

struct SettingsButtonsView: View {
    let title: String
    let image: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(title)
                Text(title)
            }
        }
        .foregroundColor(color)
    }
}

struct SettingsButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButtonsView(title: "Value", image: "achmat", color: .black) {
            //
        }
    }
}
