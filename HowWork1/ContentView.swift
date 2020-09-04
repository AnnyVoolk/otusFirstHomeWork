//
//  ContentView.swift
//  HowWork1
//
//  Created by mac on 04.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            FirstView(selection: $selection)
                .tabItem {
                    VStack {
                        Image(systemName: "globe")
                        Text("Main")
                    }
            }
            .tag(0)
            CatalogView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Catalog")
                    }
            }
            .tag(1)
            AboutUsView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("About")
                    }
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
