//
//  UrgentInfoClass.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/26/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import Foundation
class DataBase {
    
    var Name : String
    var phoneNumber : Int
    var Activity : String
    var country : String
    var City : String
    var FullAdress : String
    var Description : String
    var NumberofDonation : Int
    
    init(  Name : String, phoneNumber : Int,Activity : String,country : String,City : String,FullAdress : String,Description : String  , NumberofDonation : Int) {
       
        
        self.Name = Name
        self.phoneNumber = phoneNumber
        self.Activity = Activity
        self.City = City
        self.country = country
        self.FullAdress = FullAdress
        self.Description = Description
        self.NumberofDonation = NumberofDonation
    }
    
    
    
    
    
    
    
    
    
    
}
