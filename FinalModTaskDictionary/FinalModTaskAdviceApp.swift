//
//  FinalModTaskDictionaryApp.swift
//  FinalModTaskDictionary
//
//  Created by Lucas García on 19/4/23.
//

import SwiftUI

@main
struct FinalModTaskAdviceApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                SearchView()
                    .tabItem{
                        Label("Find", systemImage: "magnifyingglass")
                    }
                
                FavView()
                    .tabItem{
                        Label("Favourites", systemImage: "face.smiling")
                    }
                }
                .environment(\.blackbirdDatabase, AppDatabase.instance)
            }

    }
}
