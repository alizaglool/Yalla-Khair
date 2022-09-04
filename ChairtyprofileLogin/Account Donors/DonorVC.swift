//
//  DonorVC.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/24/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class Donor : UIViewController {
    
    
    @IBOutlet weak var DonorTable: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       PutData.Put_Data()
        
    }
    
}
extension Donor : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return PutData.Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : DonorCell  = DonorTable.dequeueReusableCell(withIdentifier: "DonorCell") as! DonorCell
       
        cell.DonorName.text = PutData.Data[indexPath.row].Name
        
        cell.Donorletter.text = String(PutData.Data[indexPath.row].Name.dropLast(PutData.Data[indexPath.row].Name.count-1))
        cell.NumDonation.text = String(PutData.Data[indexPath.row].NumberofDonation) + " Donation"
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "n", sender: indexPath.row)
 
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
            if let nextvc = segue.destination as? DonorInfoVC {
            nextvc.recivingDonorinformation = PutData.Data[sender as! Int ]
                
            }
    }
    
}
