//
//  SettingsView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/19.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var backgroundColor = ColorSchemeViewModel()
    
    var body: some View {
        NavigationView {
                List {
                    Section(header: Text("Account")) {
                        NavigationLink {
                            AccountView()
                        } label: {
                            
                            HStack {
                                
                                Image("achmat")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60)
                                    .clipShape(Circle())
                                
                                VStack (alignment: .leading) {
                                    
                                    Text("Taylor Swift")
                                        .foregroundColor(.primary)
                                        .bold()
                                    Text("theerastour@swift.com")
                                        .accentColor(.secondary)
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("Appearance")) {
                        Toggle("Mode", isOn: $backgroundColor.darkMode)
                    }
                    
                    Section (header: Text("Follow me")) {
                        Link(destination: URL(string: "https://twitter.com/achmatkamaar")!) {
                            Text("Twitter")
                                .accentColor(.primary)
                        }
                        
                        Link(destination: URL(string: "https://instagram.com/achmatkamaar")!) {
                            Text("Instagram")
                                .accentColor(.primary)
                        }
                        
                        Link(destination: URL(string: "https://tiktok.com/@achmatkamaar")!) {
                            Text("TikTok")
                                .accentColor(.primary)
                        }
                        
                        Link(destination: URL(string: "https://www.youtube.com/@CoderAchmat")!) {
                            Text("YouTube")
                                .accentColor(.primary)
                        }
                    }
                    
                    Section(header: Text("Support")) {
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            Text("Tell a friend")
                                .accentColor(.primary)
                        }
                        
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            Text("Report a bug")
                                .accentColor(.primary)
                        }
                        
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            Text("Review the app")
                                .accentColor(.primary)
                        }
                        
                        NavigationLink {
                            Text("stuff go here")
                                .accentColor(.primary)
                        } label: {
                            Text("About")
                        }
                        
                        NavigationLink {
                            Text("stuff go here")
                                .accentColor(.primary)
                        } label: {
                            Text("Contact Me")
                        }
                    }
                        
                        Section(header: Text("Don't Go")) {
                            Link(destination: URL(string: "https://www.apple.com")!) {
                                Text("go bye")
                                    .accentColor(.primary)
                            }
                    }
                }
                .clipped()
        }
        .preferredColorScheme(backgroundColor.colorMode)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
