//
//  ContentView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/19.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = NewEventViewViewModel()
    @State private var numberOfEvents = 5
    @State private var isPresented = false
    
    let columns = [
        GridItem(.adaptive(minimum: 350))
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                ScrollView {
                    VStack (alignment: .leading) {
                        Text(Date.now, format: .dateTime.weekday(.wide).day().month(.wide))
                            .foregroundColor(.secondary)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                        
//                        Rectangle()
//                            .frame(height: 0)
//                            .foregroundColor(.black)
                        
                        Text("Today")
                            .foregroundColor(.primary)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                        
//                        Rectangle()
//                            .frame(height: 1)
//                            .foregroundColor(.black)
                        
                        Divider()
                        
//                        Rectangle()
//                            .frame(height: 1)
//                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<numberOfEvents, id: \.self) { row in
                            NavigationLink {
                                Text("slay \(row)") // what goes inside the link
                            } label: {
                                ZStack(alignment: .bottomLeading) {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.color)
//                                    Image("sntv")
//                                        .resizable()
//                                        .scaledToFit()
                                    
                                    VStack(alignment: .leading) {
                                        Text(dateFormatter.string(from: viewModel.dueDate))
                                        Text(viewModel.title)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    }
                                    .padding(.horizontal)
                                    .padding(.bottom)
                                    .foregroundColor(.white)
                                }
                                .frame(height: 160)
//                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                
                            }
//                            .frame(width: .infinity, height: 200)
                        }
                    }
                    .padding([.horizontal, .bottom])
                }
                //            .background(Color(red: 0.1, green: 0.1, blue: 0.2))
                .padding(.top)
                .clipped()
            }
            .sheet(isPresented: $isPresented) {
                AddNewEventView()
            }
            .toolbar {
                Button {
                    isPresented = true
                } label: {
                        Image(systemName: "square.and.pencil")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//VStack {
//    Text(Date.now.formatted(date: .complete, time: .omitted))
//
//    List {
//        ForEach(0..<numberOfEvents, id: \.self) { row in
//            Text("slay")
//        }
//    }
//}



//HStack {
//    Image("taylorswift")
//        .resizable()
//        .scaledToFit()
//        .frame(maxWidth: .infinity)
//        .padding()
//
//    VStack {
//        Text("placeholder text")
//            .font(.headline)
//            .foregroundColor(.white)
//
//        Text("placeholder text")
//            .font(.headline)
//            .foregroundColor(.white.opacity(0.5))
//    }
//    .padding(.vertical)
//    .frame(maxWidth: .infinity)
//    .background(Color(red: 0.2, green: 0.2, blue: 0.3).opacity(0.4))
//}
//.clipShape(RoundedRectangle(cornerRadius: 10))
//.overlay(
//    RoundedRectangle(cornerRadius: 10)
//        .stroke(Color(red: 0.2, green: 0.2, blue: 0.3))
//    )
