//
//  DonorInfoclass.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/24/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit

public class Donorinfo {
    
    var Name : String
    var phonenumber : Int
    var NumberofDonation : Int
    
    
 
    init(Name : String , phonenumber : Int , NumberofDonation : Int ) {
        self.Name = Name
        self.NumberofDonation = NumberofDonation
        self.phonenumber = phonenumber
        
    }
    
    
    
    
}
