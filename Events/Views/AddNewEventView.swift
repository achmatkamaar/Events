//
//  AddNewEventView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/19.
//

import SwiftUI

struct AddNewEventView: View {
    @StateObject var viewModel = NewEventViewViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Create new event")
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                    .padding(.top)
                
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(viewModel.color)
                    
                    VStack(alignment: .leading) {
                        Text(dateFormatter.string(from: viewModel.dueDate))
                        Text(viewModel.title)
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    .foregroundColor(.white)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(height: 200)
                .padding([.horizontal, .bottom])
                
                Form {
                    TextField("Event name", text: $viewModel.title)
                    
                    DatePicker("Date", selection: $viewModel.dueDate, displayedComponents: [.date, .hourAndMinute])
                        .datePickerStyle(.graphical)
                        .labelsHidden()
                        .padding()
                    
                    ColorPicker("pick a color", selection: $viewModel.color)
                    
                    ButtonView(title: "Save",
                               background: viewModel.color)
                    {
                        //
                    }
                    .padding()
                }
                .toolbar {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    private let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter
        }()
    
    private let timeFormatter: DateFormatter = {
            let timeFormatter = DateFormatter()
            timeFormatter.timeStyle = .short
            return timeFormatter
        }()
}

struct AddNewEventView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEventView()
    }
}
