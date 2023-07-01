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

            CalendarView()
                .tabItem {
                    Label("Calender", systemImage: "calendar.circle")
                        .labelsHidden()
                }

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
    }
}

//struct MainView: View {
//    @State private var selectedTab: Tab = .house
//
//    init() {
//        UITabBar.appearance().isHidden = true
//    }
//
//    var body: some View {
//        ZStack {
//            VStack {
//                TabView(selection: $selectedTab) {
//                    if selectedTab == .house {
//                        ContentView()
//                            .animation(nil, value: selectedTab)
//                    } else if selectedTab == .leaf {
//                        AddNewEventView()
//                    } else if selectedTab == .gearshape {
//                        SettingsView()
//                            .animation(nil, value: selectedTab)
//                    }
//                }
//            }
//            VStack {
//                Spacer()
//                CustomTabBarView1(selectedTab: $selectedTab)
//            }
//        }
//    }
//}
//
//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}

//struct MainView: View {
//    @State var selectedTab: Tabs = .home
//
//    var body: some View {
//        NavigationView {
//            VStack {
//
//                if selectedTab == .home {
//                    ContentView()
//                } else {
//                    SettingsView()
//                }
//
//                Spacer()
//
//                CustomTabBarView1(selectedTab: $selectedTab)
//            }
//        }
//    }
//}
//
//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
