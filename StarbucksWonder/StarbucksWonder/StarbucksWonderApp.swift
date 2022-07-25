//
//  StarbucksWonderApp.swift
//  StarbucksWonder
//
//  Created by Mac on 21.07.2022.
//

import SwiftUI

var order = Order()

@main
struct StarbucksWonderApp: App {
    var body: some Scene {
        WindowGroup {
            TabViewApp().environmentObject(order)
        }
    }
}
