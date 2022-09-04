//
//  SettingVC.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/25/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class SettingVC : UIViewController {
   
    @IBOutlet weak var CurrentPassword: UITextField!
    @IBOutlet weak var NewPassword: UITextField!
    @IBOutlet weak var RetypePassword: UITextField!
    @IBOutlet weak var SettingTable: UITableView!
    @IBOutlet weak var SaveChangeBtn: UIButton!
    
    var imageArr = ["Change Password" , "Means of communication" , "About charity"]
    var ID = ["1","2","3"]
  
    @IBAction func SaveChangebtn(_ sender: Any) {
     var oldpassword = "Mw12121997ali"
     if (oldpassword != CurrentPassword.text ){
            let alert = UIAlertController.init(title: "Alert", message: "Password is not correct ", preferredStyle: .alert)
        
            let Action = UIAlertAction(title: "OK", style: .cancel) { (sender) in
                print("  sd")
            }
            alert.addAction(Action)
            present(alert, animated: true)
        }
        else if (NewPassword.text != RetypePassword.text){
        
            let alert = UIAlertController.init(title: "Alert", message: "Retype new password", preferredStyle: .alert)
            let Action = UIAlertAction(title: "OK", style: .cancel) { (sender) in
                print("  sd")
            }
            alert.addAction(Action)
            present(alert, animated: true)
        }else {
            oldpassword = NewPassword.text!
            CurrentPassword.text = " "
            NewPassword.text = " "
            RetypePassword.text = " "
        }
        print(oldpassword)
    }
}
extension SettingVC : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return 3}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SettingCell = SettingTable.dequeueReusableCell(withIdentifier: "SettingCell") as! SettingCell
        cell.Cellimage.image = UIImage(named: imageArr[indexPath.row])
        cell.celllbl.text = imageArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = storyboard?.instantiateViewController(withIdentifier:ID[indexPath.row] )
        self.navigationController?.pushViewController(VC!, animated: true)
    }

}
