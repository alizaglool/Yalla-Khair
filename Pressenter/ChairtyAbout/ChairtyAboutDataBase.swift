//
//  ChairtyAboutDataBase.swift
//  PrijectFinal
//
//  Created by A_Z on 2/25/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class ChairtyAboutDataBase {
    
    static var Data : [ChairtyAbout] = []
    
    static func PutDataAbout () {
        let DisResala = """
History and profile. Resala was established in 1999 as
a youth movement at Cairo University and Sherif Abd Al Azim
, an engineering professor, supervised the movement.
 It is powered by over 1,500,000 volunteers spanning 67
branches all over Egypt.
"""
        let DesElRahma = """
History and profile. Resala was established in 1999 as
a youth movement at Cairo University and Sherif Abd Al Azim
, an engineering professor, supervised the movement.
 It is powered by over 1,500,000 volunteers spanning 67
branches all over Egypt.
"""
        let DesLifeMaker = """
History and profile. Resala was established in 1999 as
a youth movement at Cairo University and Sherif Abd Al Azim
, an engineering professor, supervised the movement.
 It is powered by over 1,500,000 volunteers spanning 67
branches all over Egypt.
"""
        let DesAshraget = """
History and profile. Resala was established in 1999 as
a youth movement at Cairo University and Sherif Abd Al Azim
, an engineering professor, supervised the movement.
 It is powered by over 1,500,000 volunteers spanning 67
branches all over Egypt.
"""
            
        let DesSabelRashad = """
History and profile. Resala was established in 1999 as
a youth movement at Cairo University and Sherif Abd Al Azim
, an engineering professor, supervised the movement.
 It is powered by over 1,500,000 volunteers spanning 67
branches all over Egypt.
"""
    
        Data.append(ChairtyAbout(Image: "resla", Name: "ReSala", Des: DisResala, NumberContact: "19450", WebContact: "contact_us@resala.org", WebSite: "http://www.resala.org"))
        Data.append(ChairtyAbout(Image: "ElRhama", Name: "ElRhama", Des: DesElRahma, NumberContact: "19450", WebContact: "contact_us@resala.org", WebSite: "http://www.resala.org"))
        Data.append(ChairtyAbout(Image: "lifeMaker", Name: "Life Maker", Des: DesLifeMaker, NumberContact: "19450", WebContact: "contact_us@resala.org", WebSite: "http://www.resala.org"))
        Data.append(ChairtyAbout(Image: "Ashraget", Name: "Ashraget", Des: DesAshraget, NumberContact: "19450", WebContact: "contact_us@resala.org", WebSite: "http://www.resala.org"))
        Data.append(ChairtyAbout(Image: "sebal", Name: "SabelRashad", Des: DesSabelRashad, NumberContact: "19450", WebContact: "contact_us@resala.org", WebSite: "http://www.resala.org"))
        
    }
}
