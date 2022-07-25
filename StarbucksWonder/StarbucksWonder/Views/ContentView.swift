//
//  ContentView.swift
//  StarbucksWonder
//
//  Created by Mac on 21.07.2022.
//

import SwiftUI

struct ContentView: View {
   
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5)
      
        
        NavigationView {
        
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                    
                    Image("banner")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .frame(width: UIScreen.main.bounds.width-60, height: 240)
                        .shadow(radius: 8)
                    
                    Image("banner2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .frame(width: UIScreen.main.bounds.width-60, height: 240)
                        
                        .shadow(radius: 8)
                    }
                }
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                    
                    .foregroundColor(Color(red: 0/255, green: 119/255, blue: 85/255))
                }
            }.navigationTitle("Online Sipariş")
                .listStyle(SidebarListStyle())
        
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
