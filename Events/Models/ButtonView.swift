//
//  ButtonView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/24.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "value", background: .blue) {
            // action
        }
    }
}
