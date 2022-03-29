//
//  ContentView.swift
//  People-M4-L6-Challenge
//
//  Created by Chris Percival on 3/28/22.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TabView() {
            PeopleView().tabItem {
                    Text("Tab1")
            }
            PreferencesView().tabItem {
                Text("Preferences")}
        }.environmentObject(PersonModel())

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
