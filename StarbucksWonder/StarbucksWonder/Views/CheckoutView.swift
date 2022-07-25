//
//  CheckoutView.swift
//  StarbucksWonder
//
//  Created by Mac on 22.07.2022.
//

import SwiftUI


struct CheckoutView: View {
    static let paymentType = ["Nakit", "Kredi Kartı", "Kupon"]
    @EnvironmentObject var order: Order
    @State private var paymentType = 0
    @State private var addPoints  = false
    @State private var pointCartNumber = ""
    static let tipAmounts = [0, 5, 10, 15, 20]
    @State private var tipAmount = 1
    @State private var showingPaymentAlert = false
    var totalPrice: Double {
        let total = Double(order.total)
        let tipValue = Double(Self.tipAmounts[tipAmount])
        
        return total + tipValue
    }
    @State private var adress = ""
    var body: some View {
        Form {
            Section{
               
                    
                Picker("Ödemeyi nasıl yapmak istersiniz?", selection: $paymentType) {
                    ForEach(0..<Self.paymentType.count) {
                        Text(Self.paymentType[$0])
                    }
                    
                    
                }
                TextField("Adresinizi Giriniz", text: $adress)
                Toggle(isOn: $addPoints) {
                    Text("Hediye kuponu tanımla")
                }
                if addPoints {
                    withAnimation {
                        TextField("Hediye numaranızı giriniz.", text: $pointCartNumber)
                    }
                }
                Section("Bahşiş Miktarı") {
                    Picker("Miktar",
                           selection: $tipAmount) {
                        ForEach(0..<Self.tipAmounts.count) {
                            Text("\(Self.tipAmounts[$0])TL")
                        }
                    }
                           .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Toplam: \(totalPrice, specifier: "%.2f") TL")) {
                    Button {
                        self.showingPaymentAlert.toggle()
                    } label: {
                        Text("Ödemeyi Gerçekleştir")
                    }
                    .alert(isPresented: $showingPaymentAlert) {
                        Alert(title: Text("Ödeme Onaylandı"), message: Text("Afiyet Olsun 😍"), dismissButton: .default(Text("Kapat")))
                    }

                }
                
            }
        }
        .navigationBarTitle(Text("Ödeme"), displayMode: .large)
       
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
