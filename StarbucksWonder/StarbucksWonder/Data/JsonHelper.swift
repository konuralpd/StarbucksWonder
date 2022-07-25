//
//  JsonHelper.swift
//  StarbucksWonder
//
//  Created by Mac on 21.07.2022.
//

import UIKit


extension Bundle {
    
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            
            fatalError("Başarısız")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Başarısız")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Başarısız")
        }
        
        return loaded
    }
    
    
}


