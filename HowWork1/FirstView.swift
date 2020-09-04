//
//  FirstView.swift
//  HowWork1
//
//  Created by mac on 04.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    
    @Binding var selection: Int
    
    @EnvironmentObject var catalogViewModel: CatalogViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Welcome to life without cooking app!")
                .font(.title)
            Button (action: {
                self.selection = 1
            }) {
                Text("Show catalog")
            }
            Button (action: {
                self.selection = 1
                self.catalogViewModel.selectionListItem = 0
            }) {
                Text("Show breakfast variants")
            }
            Button (action: {
                self.selection = 1
                self.catalogViewModel.selectionListItem = 1
            }) {
                Text("Show dinner variants")
            }
            Button (action: {
                self.selection = 1
                self.catalogViewModel.selectionListItem = 2
            }) {
                Text("Show supper variants")
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(selection: .constant(0))
    }
}
