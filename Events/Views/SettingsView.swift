//
//  SettingsView.swift
//  Events
//
//  Created by Achmat Kamaar on 2023/06/19.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var backgroundColor = ColorSchemeViewViewModel()
    
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
                                    .font(.system(size: 14))
                            }
                        }
                    }
                }
                
                Section(header: Text("Appearance")) {
                    Toggle(isOn: $backgroundColor.colorMode) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.blue)
                                
                                Image(systemName: "circle.lefthalf.filled")
                            }
                            
                            Text("Appearence")
                                .accentColor(.primary)
                        }
                    }
                }
                
                Section (header: Text("Follow me")) {
                    Link(destination: URL(string: "https://twitter.com/achmatkamaar")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.blue)
                                Image(systemName: "bird.fill")
                                    .foregroundColor(.white)
                            }
                            
                            Text("Twitter")
                                .accentColor(.primary)
                        }
                    }
                    
                    Link(destination: URL(string: "https://instagram.com/achmatkamaar")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.pink)
                                
                                Image(systemName: "camera.circle.fill")
                                    .foregroundColor(.white)
                            }
                            
                            Text("Instagram")
                                .accentColor(.primary)
                        }
                    }
                    
                    Link(destination: URL(string: "https://tiktok.com/@achmatkamaar")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.blue)
                                Image(systemName: "music.note")
                                    .foregroundColor(.white)
                            }
                            
                            Text("TikTok")
                                .accentColor(.primary)
                        }
                    }
                    
                    Link(destination: URL(string: "https://www.youtube.com/@CoderAchmat")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.red)
                                Image(systemName: "play.fill")
                                    .foregroundColor(.white)
                            }
                            
                            Text("YouTube")
                                .accentColor(.primary)
                        }
                    }
                }
                
                Section(header: Text("Support")) {
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.green)
                                
                                Image(systemName: "person.fill")
                                    .foregroundColor(.white)
                                
                            }
                            
                            Text("Tell a friend")
                                .accentColor(.primary)
                        }
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.red)
                                Image(systemName: "ant.fill")
                                    .foregroundColor(.white)
                            }
                            
                            Text("Report a bug")
                                .accentColor(.primary)
                        }
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.orange)
                                
                                Image(systemName: "newspaper.fill")
                                    .foregroundColor(.white)
                            }
                            
                            Text("Review the app")
                                .accentColor(.primary)
                        }
                    }
                    
                    NavigationLink {
                        Text("stuff go here")
                            .accentColor(.primary)
                    } label: {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.gray)
                                Image(systemName: "info.circle")
                            }
                            
                            Text("About")
                        }
                    }
                    
                    NavigationLink {
                        Text("stuff go here")
                            .accentColor(.primary)
                    } label: {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.green)
                                Image(systemName: "person.crop.circle.fill")
                            }
                            
                            Text("Contact Me")
                        }
                    }
                }
                
                //                        Section(header: Text("Don't Go")) {
//                                            Link(destination: URL(string: "https://www.apple.com")!) {
                //                                    Text("Sign Out")
                //                                        .accentColor(.primary)
                //                            }.listRowBackground(Color.red)
                //                    }
                
                Section {
                    Button {
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("Sign Out")
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
//                    .listRowBackground(Color.red)
                }
            }
            .navigationTitle("Settings")
            //                .clipped()
        }
        .preferredColorScheme(backgroundColor.colorMode == true ? .dark : .light)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
