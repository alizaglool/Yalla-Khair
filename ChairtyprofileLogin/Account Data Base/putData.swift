//
//  putData.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/27/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class PutData {
    
    static var Data : [DataBase] = []
    
    static func Put_Data (){
        Data.append(DataBase(Name: "Ali Elhaba", phoneNumber: 02102515555, Activity: "Orphan", country: "Menofia", City: "Kafr Elmselha", FullAdress: "Elmenofia", Description: "sdffsadfsdafdsfdsafdsafsdafdsfdsfdsafdsafdsafsdsaddsfsdafdsfdsfsadfdsafdsafsdafsdfdsdsfsdfsdfsda", NumberofDonation: 10))
        Data.append(DataBase(Name: "Ali Zaghlol", phoneNumber: 02102515555, Activity: "Medical", country: "Menofia", City: "Kafr Elmselha", FullAdress: "Elmenofia", Description: "sdffsadfsdafdsfdsafdsafsdafdsfdsfdsafdsafdsafsdsaddsfsdafdsfdsfsadfdsafdsafsdafsdfdsdsfsdfsdfsda", NumberofDonation: 20))
        
        Data.append(DataBase(Name: "Abdo Elhaba", phoneNumber: 02102515555, Activity: "Helping Poor", country: "Menofia", City: "Kafr Elmselha", FullAdress: "Elmenofia", Description: "sdffsadfsdafdsfdsafdsafsdafdsfdsfdsafdsafdsafsdsaddsfsdafdsfdsfsadfdsafdsafsdafsdfdsdsfsdfsdfsda", NumberofDonation: 30))
        
        
        Data.append(DataBase(Name: "Ahmed Elhaba", phoneNumber: 02102515555, Activity: "Helping Poor", country: "Menofia", City: "Kafr Elmselha", FullAdress: "Elmenofia", Description: "sdffsadfsdafdsfdsafdsafsdafdsfdsfdsafdsafdsafsdsaddsfsdafdsfdsfsadfdsafdsafsdafsdfdsdsfsdfsdfsda", NumberofDonation: 40))
        
    }
    
    
}

