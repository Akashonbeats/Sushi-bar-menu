//
//  MenuListRow.swift
//  Sushi Menu
//
//  Created by Akash Sampath on 08/04/24.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            Spacer()
            
            Text("$"+item.price)
        }
        .listRowBackground(Color("Primary"))
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test Item", price: "69.69", imageName: "tako-sushi"))
}
