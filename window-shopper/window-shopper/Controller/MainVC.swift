//
//  ViewController.swift
//  window-shopper
//
//  Created by Ziad Ahmed Said Ahmed on 6/8/20.
//  Copyright © 2020 Ziad Ahmed Said Ahmed. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var priceTxtField: CurrencyUITextField!
    @IBOutlet weak var wageTxtField: CurrencyUITextField!
    
    @IBOutlet weak var calculatedHoursLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.addTarget(self, action: #selector(MainVC.calculateMethod), for: .touchUpInside)
        
        priceTxtField.inputAccessoryView = calcBtn
        wageTxtField.inputAccessoryView = calcBtn
        
        calculatedHoursLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculateMethod() {
        if let priceText = priceTxtField.text, let wageText = wageTxtField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                let hoursResult = Wage.getHours(userWage: wage, itemPrice: price)
                calculatedHoursLbl.isHidden = false
                hoursLbl.isHidden = false
                calculatedHoursLbl.text = "\(hoursResult)"
            }
        }
    }

    @IBAction func onClearBtnPressed(_ sender: Any) {
        priceTxtField.text = ""
        wageTxtField.text = ""
        calculatedHoursLbl.isHidden = true
        hoursLbl.isHidden = true
    }
}

