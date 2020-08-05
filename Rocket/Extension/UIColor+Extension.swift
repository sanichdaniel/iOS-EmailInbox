//
//  UIColor+Extension.swift
//  Rocket
//
//  Created by You Been Lee on 2020/08/04.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        return UIColor(red: .random(in: 0...255) / 255, green: .random(in: 0...255) / 255, blue: .random(in: 0...255) / 255, alpha: 1)
    }
    
}
