//
//  CatalogView.swift
//  HowWork1
//
//  Created by mac on 04.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct CatalogView: View {
    
    @EnvironmentObject var viewModel: CatalogViewModel
    
    var body: some View {
        NavigationView() {
            List {
                NavigationLink(destination: BreakfastScreen(), tag: 0, selection: self.$viewModel.selectionListItem) {
                    Text("Breakfast options")
                }
                NavigationLink(destination: DinnerScreen(), tag: 1, selection: self.$viewModel.selectionListItem) {
                    Text("Dinner options")
                }
                NavigationLink(destination: SupperScreen(), tag: 2, selection: self.$viewModel.selectionListItem) {
                    Text("Supper options")
                }
            }
            .navigationBarTitle("Catalog")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct BreakfastScreen: View {
    
    var body: some View {
        List {
            Text("Bacon omelet")
            Text("Pancakes with cherry jam")
            Text("Salmon Sandwich")
        }
        .foregroundColor(Color.primary)
        .navigationBarTitle("Breakfast Catalog")
    }
}

struct DinnerScreen: View {
    var body: some View {
        List {
            Text("Borscht")
            Text("Fried chiken with potatoes")
            Text("Caesar salad")
        }
        .navigationBarTitle("Dinner Catalog")
    }
}

struct SupperScreen: View {
    var body: some View {
        List {
            Text("Greek salad")
            Text("Pork with vegetables")
            Text("Poppy seed cake")
        }
        .navigationBarTitle("Dinner Catalog")
    }
}


struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
