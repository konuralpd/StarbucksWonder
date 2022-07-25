//
//  ItemRow.swift
//  StarbucksWonder
//
//  Created by Mac on 22.07.2022.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    var body: some View {
        NavigationLink(destination: ItemDetails(item: item)) {
            HStack {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .frame(width: 120, height: 120)
                VStack(alignment: .leading) {
                    Text(item.name)
                        .bold()
                        .font(.system(size: 16))
                    Text(String("\(item.price) ₺"))
                        .bold()
                        .font(.system(size: 14))
                        .foregroundColor(.black.opacity(0.7))
                }
            }
        }
   
        
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
