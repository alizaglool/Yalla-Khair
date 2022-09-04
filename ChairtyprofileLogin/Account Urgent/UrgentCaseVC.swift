//
//  UrgentCaseVC.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/24/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class UrgentCaseVC : UIViewController{
    
    @IBOutlet weak var UrgentTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        PutData.Put_Data()
    }
    
   
    @IBAction func CaseBtn(_ sender: Any) {
        
         performSegue(withIdentifier: "u", sender:  1 )
       // let NextViewControllre = storyboard!.instantiateViewController(withIdentifier: "u") as! UrgentInfoVC
        //self.navigationController?.pushViewController(NextViewControllre, animated: true)
      // self.present(NextViewControllre , animated : true , completion : nil)
        
        
    }
    
    
    
    
}
extension UrgentCaseVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return PutData.Data.count}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UrgentcaseCell = UrgentTable.dequeueReusableCell(withIdentifier: "UrgentcaseCell") as! UrgentcaseCell
       
        cell.Caselbl.text = PutData.Data[indexPath.row].Activity
        switch  cell.Caselbl.text {
        case "Orphan" :
            cell.imageCase.image = UIImage(named: "Orphan")
        case "Helping Poor" :
            cell.imageCase.image = UIImage(named: "Helping poor")
        case "Medical" :
            cell.imageCase.image = UIImage(named: "Medical")
        default:
            print("non")
        }
        return cell 
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {performSegue(withIdentifier: "u", sender: indexPath.row)}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextvc = segue.destination as? UrgentInfoVC {nextvc.recivingUrgentinformation = PutData.Data[sender as! Int ]}
   
}
}
