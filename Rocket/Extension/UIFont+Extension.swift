//
//  UIFont+Extension.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/26.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    static var defaultFont: UIFont {
        return UIFont.systemFont(ofSize: 12)
    }
    
    static var defaultBold: UIFont {
        return UIFont.boldSystemFont(ofSize: 12)
    }
    
    static var defaultLargeFont: UIFont {
        return UIFont.systemFont(ofSize: 14)
    }
    
    static var defaultLargeBold: UIFont {
        return UIFont.boldSystemFont(ofSize: 14)
    }
}
