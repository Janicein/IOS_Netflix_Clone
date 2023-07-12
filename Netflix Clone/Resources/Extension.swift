//
//  Extension.swift
//  Netflix Clone
//
//  Created by 周嘉茗 on 2023/7/11.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    
}
