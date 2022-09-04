//
//  DataBaseProfile.swift
//  PrijectFinal
//
//  Created by A_Z on 2/25/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class DataBaseProfile {
    
   static var Data : [ ProfileDataBase] = []
    
    static func PutData () {

        //        Data.append(ProfileData(Image: "Resala", Name: "Nma, ServiceName: <#String#>e"))
//        Data.append(ProfileData(Image: "resala", Name: "ReSala"))
//        Data.append(ProfileData(Image: "ElRhama", Name: "ElRhama"))
//        Data.append(ProfileData(Image: "lifeMaker", Name: "Life Maker"))
//        Data.append(ProfileData(Image: "Ashraget", Name: "Ashraget"))
//        Data.append(ProfileData(Image: "sebal", Name: "SabelRashad"))
//        Data.append(ProfileData(Image: <#T##String#>, Name: pr, ServiceName: pro))
        Data.append(ProfileDataBase(Image: "resala", Name: "ReSala"))
        Data.append(ProfileDataBase(Image: "ElRhama", Name: "ElRhama"))
        Data.append(ProfileDataBase(Image: "lifeMaker", Name: "Life Maker"))
        Data.append(ProfileDataBase(Image: "Ashraget", Name: "Ashraget"))
        Data.append(ProfileDataBase(Image: "sebal", Name: "SabelRashad"))

    }
}
