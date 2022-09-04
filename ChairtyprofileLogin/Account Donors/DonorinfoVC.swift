//
//  DonorinfoVC.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/24/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class DonorInfoVC : UIViewController {

    @IBOutlet weak var infolbl: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var numberofdonation: UILabel!
    @IBOutlet weak var Datetable: UITableView!
    
    static var ifoLbl = " "
    var  recivingDonorinformation : DataBase!
    
    var date = ["12/12/2020", "12/12/2020" , "12/12/2020" , "12/12/2020"]
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
         infolbl.text = DonorInfoVC.ifoLbl
        Name.text = recivingDonorinformation.Name
        PhoneNumber.text = String(recivingDonorinformation.phoneNumber)
        numberofdonation.text = String(recivingDonorinformation.NumberofDonation)
        var ABC : [String] = []
        let S = recivingDonorinformation.Name
        ABC  = S.components(separatedBy: " ")
        infolbl.text = ABC[0] + "'s Informations"
    }
    
    
    
}
extension DonorInfoVC : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return date.count}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 : DonorDateCell  = Datetable.dequeueReusableCell(withIdentifier: "DonordateCell") as! DonorDateCell
        cell1.CounterLbl.text = String(indexPath.row + 1)
        cell1.DateLbl.text = date[indexPath.row]
        return cell1
    }
 
}
