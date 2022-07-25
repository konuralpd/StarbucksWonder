//
//  OrderView.swift
//  StarbucksWonder
//
//  Created by Mac on 22.07.2022.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .frame(width: 120, height: 120)
                            
                            Text(item.name)
                            
                            Spacer()
                            
                            Text(String("\(item.price) ₺"))
                            
                            
                        }
                    }
                }
                Section {
                    NavigationLink(destination: CheckoutView()) {
                        Text("Ödemeye Geç").padding()
                           
                            .foregroundColor(.white)
                    }.background(Color(red: 0/255, green: 119/255, blue: 85/255))
                }
            }.navigationBarTitle("Sipariş Ver")
                .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
