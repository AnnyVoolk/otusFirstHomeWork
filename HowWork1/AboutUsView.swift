//
//  AboutUsView.swift
//  HowWork1
//
//  Created by mac on 04.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct AboutUsView: View {
    
    @State var showingDetail = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Our aim")
                .font(.title)
                .padding(.leading, 20)
            Text("Your life is too shot to spend it on cooking. So we decided to help you and did it for you)")
                .padding(.leading, 20)
                .padding(.trailing, 20)
            Button(action: {
                self.showingDetail.toggle()
            }) {
                Text("Contact information")
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color.blue)
                    .foregroundColor(Color.primary)
                    .cornerRadius(40)
                
            }
            .sheet(isPresented: $showingDetail) {
                ContactInformationView(showingDetail: self.$showingDetail)
            }
        }
    }
}

struct ContactInformationView: View {
    
    @Binding var showingDetail: Bool
    
    var body: some View {
        VStack {
            ContactItem(imageName: "phone", text: "tel: 8-465-574-6688")
            ContactItem(imageName: "house", text: "address: avenue 15, 56/33")
            ContactItem(imageName: "pencil", text: "email: lifeWithOutCooking@mail.ru")
            Button(action: {
                self.showingDetail.toggle()
            }) {
                Text("Dismiss")
            }
        }
    }
}

struct ContactItem: View {
    
    var imageName: String
    var text: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
