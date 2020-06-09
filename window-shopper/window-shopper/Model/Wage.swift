//
//  Wage.swift
//  window-shopper
//
//  Created by Ziad Ahmed Said Ahmed on 6/9/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(userWage wage: Double, itemPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
