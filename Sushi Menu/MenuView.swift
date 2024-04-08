//
//  ContentView.swift
//  Sushi Menu
//
//  Created by Akash Sampath on 07/04/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        Text("Sushi Bar Menu")
            .fontWeight(.regular)
            .foregroundColor(Color("TextColor"))
            .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            .padding(.top)
        
        List(menuItems){ item in
            
           MenuListRow(item: item)
            
        }
        .onAppear{
            //Call for the data
            menuItems = dataService.getData()
        }
    }
}
#Preview {
    MenuView()
}
