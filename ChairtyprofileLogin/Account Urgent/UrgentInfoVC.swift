//
//  UrgentInfoVC.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/26/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class UrgentInfoVC : UIViewController {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var Activity: UILabel!
    @IBOutlet weak var Country: UILabel!
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var FullAdress: UILabel!
    @IBOutlet weak var Description: UITextView!
   
    var  recivingUrgentinformation : DataBase!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        PutData.Put_Data()
        
        Name.text = recivingUrgentinformation.Name
        PhoneNumber.text = String(recivingUrgentinformation.phoneNumber)
        Activity.text = recivingUrgentinformation.Activity
        Country.text = recivingUrgentinformation.country
        City.text = recivingUrgentinformation.City
        FullAdress.text = recivingUrgentinformation.FullAdress
        Description.text = recivingUrgentinformation.Description
    }
}
