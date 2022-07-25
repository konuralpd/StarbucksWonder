//
//  ItemDetails.swift
//  StarbucksWonder
//
//  Created by Mac on 22.07.2022.
//

import SwiftUI

struct ItemDetails: View {
    var item: MenuItem
    @EnvironmentObject var order: Order
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(item.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2.5)
                Text(item.name)
                    .font(.system(size: 22)).bold()
                Text(String("\(item.price) ₺"))
                    .font(.system(size: 24)).bold()
                Spacer()
                Text(item.description).padding()
              
                
                Button {
                    self.order.add(item: item)
                } label: {
                    Text("Sepete Ekle")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth:.infinity)
                        .foregroundColor(.white)
                        .background(Color(red: 0/255, green: 119/255, blue: 85/255))
                    
                    
                }
                
                Spacer()

                
            }
            .edgesIgnoringSafeArea(.all)
        }
  
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var order = Order()
    static var previews: some View {
        NavigationView {
        
        ItemDetails(item: MenuItem.example).environmentObject(order)
        }
    }
}
