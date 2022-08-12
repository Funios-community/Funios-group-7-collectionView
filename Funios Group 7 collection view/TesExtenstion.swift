//
//  TesExtenstion.swift
//  Funios Group 7 collection view
//
//  Created by PT.Koanba on 11/08/22.
//

import Foundation
import UIKit

extension Double {
    var km: Double { return self * 1000.0 }
    
    func jadiRupiah() -> String {
        return "Rp \(self)"
    }
}
