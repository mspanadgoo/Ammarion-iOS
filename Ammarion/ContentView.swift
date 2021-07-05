//
//  ContentView.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           ProfileView()
             .tabItem {
                Image("user")
                Text("First Tab")
              }
            
           SearchView()
             .tabItem {
                Image("search")
                Text("Second Tab")
              }
            
            CategoriesView()
              .tabItem {
                 Image("grid")
                 Text("Third Tab")
               }
            
            HomeView()
              .tabItem {
                Image("home")
                 Text("Fourth Tab")
               } 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
