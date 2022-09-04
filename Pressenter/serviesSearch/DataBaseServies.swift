//
//  DataBaseServies.swift
//  PrijectFinal
//
//  Created by A_Z on 2/28/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class DataBaseServies {
    
    static var ServiesData : [ProfileData] = []
    static func GetData (){
        
        ServiesData.append(ProfileData(Image: "school", Name: "School", ServiceName: "Student"))
        ServiesData.append(ProfileData(Image: "student", Name: "Student", ServiceName: "Boys"))
        ServiesData.append(ProfileData(Image: "doctor", Name: "Doctor", ServiceName: "Bags"))
        ServiesData.append(ProfileData(Image: "boys", Name: "Boys", ServiceName: "Girl"))
        ServiesData.append(ProfileData(Image: "resala", Name: "Orphan", ServiceName: "Masged"))
        ServiesData.append(ProfileData(Image: "bag", Name: "bag", ServiceName: "School"))
        ServiesData.append(ProfileData(Image: "Artboard", Name: "Artboard", ServiceName: "Doctor"))
        ServiesData.append(ProfileData(Image: "girll", Name: "Girl", ServiceName: "Artboard"))
        ServiesData.append(ProfileData(Image: "masged", Name: "Masged", ServiceName: "Orphan"))
    }
}
