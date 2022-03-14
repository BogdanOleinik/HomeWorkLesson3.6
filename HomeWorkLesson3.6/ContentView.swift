//
//  ContentView.swift
//  HomeWorkLesson3.6
//
//  Created by Олейник Богдан on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StarScreen()
                .tabItem {
                    Image(systemName: "star")
                    Text("Star")
                }
            Animation()
                .tabItem {
                    Image(systemName: "person")
                    Text("Animation")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
