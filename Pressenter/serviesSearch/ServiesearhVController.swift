//
//  ViewController.swift
//  ServiceKhair
//
//  Created by Ali Elhabal on 2/6/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit

class ServiesearhVController : UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Highdonateview.constant = 0
        HighviewBorder.constant = 0
          UIView.animate(withDuration: 0.3) {self.view.layoutIfNeeded()}
        ///////////////////////////////
        RightHiddenView.constant = -(view.frame.width)
        view.endEditing(true)
        
      
        WidthNetworkView.constant = 0
        ///////////////////////////////
     
        WidthAmountView.constant = 0
         ChooseBtn.setTitle("Choose mobile network", for: .normal)
        Amountbtn.setTitle("Amount of donation", for: .normal)
        HiddenView.endEditing(true)
    }
    var ServiesSearch : ProfileData!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
   
    @IBOutlet weak var TableSearch: UITableView!
    @IBOutlet weak var RightAmountBtn: NSLayoutConstraint!
    @IBOutlet weak var RightChooseBtn: NSLayoutConstraint!
    @IBOutlet weak var LeftAmountBtn: NSLayoutConstraint!
    @IBOutlet weak var WidthAmountBtn: NSLayoutConstraint!
    @IBOutlet weak var LeftChooseBtn: NSLayoutConstraint!
    @IBOutlet weak var WidthChooseBtn: NSLayoutConstraint!
    @IBOutlet weak var LeftBankView: NSLayoutConstraint!
    @IBOutlet weak var WidthBankView: NSLayoutConstraint!
    @IBOutlet weak var RightHiddenView: NSLayoutConstraint!
    @IBOutlet weak var WidthAmountView: NSLayoutConstraint!
    @IBOutlet weak var WidthNetworkView: NSLayoutConstraint!
    @IBOutlet weak var HighviewBorder: NSLayoutConstraint!
    @IBOutlet weak var Highdonateview: NSLayoutConstraint!
    
    @IBOutlet weak var Amountbtn: UIButton!
    @IBOutlet weak var AmountTextView: UITextField!
    @IBOutlet weak var HiddenView: UIView!
    @IBOutlet weak var Table: UITableView!
    @IBOutlet weak var ChooseBtn: UIButton!
//    var imagecharity = ["resala","rahma","sonaa","resala","rahma","sonaa"]
//    var namecharity = ["ReSala","ElRahma","SonAa Elhaya", "ReSala","ElrAhma","SonAa Elhaya"]
    
    
    
    @IBAction func DonatBtn(_ sender: Any) {
        Highdonateview.constant = 300
        HighviewBorder.constant = 1
          UIView.animate(withDuration: 0.3) {self.view.layoutIfNeeded()}
    }
    
    @IBAction func ChooseNetworkBtn(_ sender: Any) {
        
       // UPNetworkView.constant = 272
        WidthNetworkView.constant = 250
        //////////////////////////////
        RightHiddenView.constant = 0
        /////////////////////////////
        WidthAmountView.constant = 0
        
        
    }
    
    @IBAction func AmountBtn(_ sender: Any) {
        if (ChooseBtn.titleLabel?.text == "Etisalat" || ChooseBtn.titleLabel?.text == "Vodafone" || ChooseBtn.titleLabel?.text == "Orange"){
      
        WidthAmountView.constant = 250
        //////////////////////////////
        RightHiddenView.constant = 0
        //////////////////////////////
       // UPNetworkView.constant = 414
        WidthNetworkView.constant = 0
        Amountbtn.setTitle(AmountTextView.text, for: .normal)
        }else{
      
        let alert = UIAlertController(title:"", message:  "You did not choose network", preferredStyle: .alert)
        let btn = UIAlertAction(title: "OK", style: .cancel) { (sender) in
            print("dsdsd")
        }
        alert.addAction(btn)
        present(alert, animated: true) {
            print("dsds")
        }
        }
      
  
    }
    
    @IBAction func BankBtn(_ sender: Any) {
        WidthBankView.constant = 334
        LeftBankView.constant = 40
        //////////////////////////////
        
        WidthAmountView.constant = 0
        //////////////////////////////
       // UPNetworkView.constant = 0
        WidthNetworkView.constant = 0
        /////////////////////////////
        WidthChooseBtn.constant = 0
        WidthAmountBtn.constant = 0
        LeftAmountBtn.constant = 0
        LeftChooseBtn.constant = 0
        RightChooseBtn.constant = 414
        RightAmountBtn.constant = 414
        ///////////////////////////
        RightHiddenView.constant = -(view.frame.width)
        ////////////////////////////
        ChooseBtn.setTitle("Choose mobile network", for: .normal)
        Amountbtn.setTitle("Amount of donation", for: .normal)
    }
    
    @IBAction func SMSBtn(_ sender: Any) {
        
        WidthChooseBtn.constant = 374
        WidthAmountBtn.constant = 374
        LeftAmountBtn.constant = 20
        LeftChooseBtn.constant = 20
        RightChooseBtn.constant = 20
        RightAmountBtn.constant = 20
        ///////////////////////////
        WidthAmountView.constant = 0
        //////////////////////////////
       // UPNetworkView.constant = 0
        WidthNetworkView.constant = 0
        /////////////////////////////
        WidthBankView.constant = 0
        LeftBankView.constant = 0
        /////////////////////////////
        RightHiddenView.constant = -(view.frame.width)
        ////////////////////////////
        ChooseBtn.setTitle("Choose mobile network", for: .normal)
        Amountbtn.setTitle("Amount of donation", for: .normal)
    }
    
    @IBAction func SendBtn(_ sender: Any) {
   
        WidthAmountView.constant = 0
        //////////////////////////////
        //UPNetworkView.constant = 0
        WidthNetworkView.constant = 0
        //////////////////////////////
        RightHiddenView.constant = -(view.frame.width)
        ChooseBtn.setTitle("Choose mobile network", for: .normal)
        Amountbtn.setTitle("Amount of donation", for: .normal)
        HiddenView.endEditing(true)
        
    }
    
    @IBAction func Etisalat(_ sender: Any) {
      
        ChooseBtn.setTitle("Etisalat", for: .normal)
   
    }
    
    @IBAction func Vodafone(_ sender: Any) {
       
          ChooseBtn.setTitle("Vodafone", for: .normal)
    }
    
    @IBAction func Orange(_ sender: Any) {
        
           ChooseBtn.setTitle("Orange", for: .normal)
    }
    var filteredData: [String] = []

}


extension ServiesearhVController : UITableViewDataSource , UITableViewDelegate , UISearchBarDelegate{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if filteredData.count != 0  {return filteredData.count}
//        else { return 0 }
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell : ServiesCellAll = Table.dequeueReusableCell(withIdentifier: "SearchServies") as! ServiesCellAll
        
        Cell.CharityImage.image = UIImage(named: ServiesSearch.Image)
        Cell.CharityName.text = ServiesSearch.Name
        
        Cell.ServiceName.text = ServiesSearch.ServiceName
        return Cell
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = [ServiesSearch.ServiceName]
        filteredData = searchText.isEmpty ? [ServiesSearch.ServiceName] : [ServiesSearch.Name].filter { (item: String) -> Bool in
            
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        TableSearch.reloadData()
    }
}


