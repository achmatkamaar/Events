//
//  CustomTabBarView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/28.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case leaf = "calendar.circle"
    case gearshape
}

struct CustomTabBarView1: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }

    private var tabColor: Color {
        switch selectedTab {
        case .house:
                return .teal
        case .leaf:
                return .teal
        case .gearshape:
                return .teal
        }
    }

    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? tabColor : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }

            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct CustomTabBarView1_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView1(selectedTab: .constant(.house))
    }
}

//enum Tabs: Int {
//    case home = 0
//    case settings = 1
//}
//
//struct CustomTabBarView1: View {
//    @Binding var selectedTab: Tabs
//
//    var body: some View {
//        HStack (alignment: .center) {
//
//            Button {
//                // Switch to home view
//                selectedTab = .home
//            } label: {
//
//                TabBarButton(buttonText: "Home",
//                             imageName: "house",
//                             isActive: selectedTab == .home)
//
//            }
//            .tint(.secondary)
//
//            Button {
//                //
//            } label: {
//                VStack (alignment: .center, spacing: 4){
//                    Image(systemName: "plus.circle.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 32, height: 32)
//
//                    Text("New Event")
//                }
//            }
//            .tint(.accentColor)
//
//            Button {
//                // Switch to contacts view
//                selectedTab = .settings
//            } label: {
//
//                TabBarButton(buttonText: "Settings",
//                             imageName: "gearshape",
//                             isActive: selectedTab == .settings)
//            }
//            .tint(.secondary)
//
//        }
//        .frame(height: 82)
//    }
//}
//
//struct CustomTabBarView1_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabBarView1(selectedTab: .constant(.home))
//    }
//}
