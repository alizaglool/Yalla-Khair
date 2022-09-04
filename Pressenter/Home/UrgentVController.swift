//
//  FirstViewController.swift
//  PrijectFinal
//
//  Created by A_Z on 2/22/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class UrgentVController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DataBaseProfile.PutData()
        // Do any additional setup after loading the view.
    }
    
    var UrgentName = ["ReSala","ElRhama","Life Maker","Ashrget","ReSala","Life Maker"]
    var UrgentImage = ["resala","ElRhama","lifeMaker","Ashrget","resala","lifeMaker"]
    var UrgentDes = """
 A family seeks the necessary help, which is the marriage of their son, and they do not have enough money. Share the good
 """


}

extension UrgentVController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UrgentName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UrgentVCell = tableView.dequeueReusableCell(withIdentifier: "UrgentCell", for: indexPath) as!UrgentVCell
        cell.UrgentNameView.text = UrgentName[indexPath.row]
        cell.UrgentImageView.image = UIImage(named: UrgentImage[indexPath.row])
        cell.UrgentDecView.text = UrgentDes
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "profileUrgent", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let NextVC = segue.destination as? Profile {
            NextVC.SendProfile = DataBaseProfile.Data[sender as! Int]
        }
    }
    
}
