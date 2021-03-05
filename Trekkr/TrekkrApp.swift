//
//  TrekkrApp.swift
//  Trekkr
//
//  Created by test on 3/4/21.
//

import SwiftUI

@main
struct TrekkrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                     WorldView()
                }
                .tabItem {
                    Image(systemName: "star.circle.fill")
                    Text("Locations")
                }
                .environmentObject(locations)
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
        }
    }
}

