//
//  MainView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/24.
//

import SwiftUI

struct MainView: View {    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .labelsHidden()
                }
            
//            AddNewEventView()
//                .tabItem {
//                    Button {
//                        isPresented = true
//                    } label: {
//                        Label("Add", systemImage: "plus")
//                    }
//                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                        .labelsHidden()
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
//            .environmentObject(Order())
    }
}


//    .sheet(isPresented: $isPresented) {
//        AddNewEventView()
//    }
