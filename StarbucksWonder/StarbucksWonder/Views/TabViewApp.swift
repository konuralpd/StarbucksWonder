//
//  TabView.swift
//  StarbucksWonder
//
//  Created by Mac on 22.07.2022.
//

import SwiftUI

struct TabViewApp: View {
 
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image("coffecup")
                    Text("Sipariş")

                }
            OrderView()
                .tabItem {
                    Image("bag")
                    Text("Sepetim")
                        
                }
        }.accentColor(Color(red: 0/255, green: 119/255, blue: 85/255))
    }
}

struct TabView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
      
        TabViewApp().environmentObject(order)
    }
}
