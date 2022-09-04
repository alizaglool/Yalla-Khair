//
//  ViewController.swift
//  ServisesChairty
//
//  Created by A_Z on 2/6/20.
//  Copyright © 2020 A_Z. All rights reserved.
//

import UIKit

class VCZakatCalcutatar: UIViewController {
    
    @IBOutlet weak var FiledPriceGold: UITextField!
    
    @IBOutlet weak var FiledAmountOfMoney: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBAction func ZakatCalculaterAction(_ sender: UIButton) {
        if FiledPriceGold.text == " " || FiledAmountOfMoney.text == " " {return}
        let CheckZakatOrNot : Int = Int(FiledPriceGold.text!)! * 85
        let CalculaterZakat : Int = Int(FiledAmountOfMoney.text!)!
        print(CalculaterZakat)
        print(CheckZakatOrNot)
        if CalculaterZakat >= CheckZakatOrNot {
            lblResult.text = "Zakat amount :\(CalculaterZakat / 40) EGP"
        }else{
            lblResult.text = "Not reached to zakat limit"
        }
    }
    
    @IBAction func ClearButton(_ sender: Any) {
        FiledPriceGold.text = " "
        FiledAmountOfMoney.text = " "
        lblResult.text = " "
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
