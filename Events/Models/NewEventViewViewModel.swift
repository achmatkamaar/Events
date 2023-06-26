//
//  NewEventViewViewModel.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/24.
//

import Foundation
import SwiftUI

class NewEventViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var color = Color.blue
    @Published var showAlert = false
}
