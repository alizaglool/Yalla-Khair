//
//  Profile.swift
//  PrijectFinal
//
//  Created by A_Z on 2/25/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class Profile: UIViewController {
    
    var SendProfile : ProfileDataBase!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProfileImage.image = UIImage(named: SendProfile.Image)
        ProfileName.text = SendProfile.Name
    }
    var nameservice = ["Treat Patient","Study Helping","Helping Poor","Bulding mousq","Mouny Support"]
    var ImageService = ["school","student","doctor","boys","resala"]
    @IBOutlet weak var ProfileImage: UIImageView!
    @IBOutlet weak var ProfileName: UILabel!
   
   


}
extension Profile : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameservice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : ProfileVCell = tableView.dequeueReusableCell(withIdentifier: "ServiesCell", for: indexPath) as! ProfileVCell
        cell.ServiesNameChairty.text = nameservice[indexPath.row]
        cell.ServiesImageChairty.image = UIImage(named: ImageService[indexPath.row])
        
        return cell
    }
    
    
    
    
}
