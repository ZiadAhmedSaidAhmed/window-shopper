//
//  CurrencyUITextField.swift
//  window-shopper
//
//  Created by Ziad Ahmed Said Ahmed on 6/8/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyUITextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 7, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLbl.layer.cornerRadius = 5
        clipsToBounds = true
        currencyLbl.textAlignment = .center
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2463077911)
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
    }
}
