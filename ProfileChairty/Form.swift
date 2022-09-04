//
//  Form Page.swift
//  CharityAccountWall
//
//  Created by Ali Elhabal on 2/12/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class Form : UIViewController {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    @IBOutlet weak var DownAdressView: NSLayoutConstraint!
    
    @IBOutlet weak var DownDonationView: NSLayoutConstraint!
    @IBOutlet weak var DownMainView: NSLayoutConstraint!
    
    @IBOutlet weak var Donationlbl: UILabel!
    @IBOutlet weak var DonationPickerView: UIPickerView!
    
     var donatiotypes = ["1","rahma","sonaa","resala","rahma","sonaa"]
    
    @objc func keyboardDidShow(Notification : NSNotification)  {
        guard let Dictionary = Notification.userInfo as? [String : AnyObject] else {return}
        guard let Keyboardsize = Dictionary[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else{return}
        Startanimation(Kb: Keyboardsize.height)
    }
    
    @objc func keyboardDidhide(Notification : NSNotification)  {
        Endanimation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
          sizeofkeyboard()
        DonationPickerView.dataSource = self
        DonationPickerView.delegate = self
        
    }

}
extension Form : UIPickerViewDataSource , UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return donatiotypes.count
    }
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->String? {
        
        return donatiotypes [row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Donationlbl.text =  donatiotypes[row]
    }
    
}
extension Form {
    
    func   Startanimation(Kb: CGFloat){
        DownMainView.constant = 240
        
        DownDonationView.constant = 70
        DownAdressView.constant = 230
     
    }
    
    func Endanimation(){
        
        DownMainView.constant = 160
        DownDonationView.constant = 30
        DownAdressView.constant = 200
       
    }
    
}
//show keyboard size
extension Form {
    
    
    func sizeofkeyboard()  {
        
        NotificationCenter.default.addObserver(self, selector: #selector(Form.keyboardDidShow(Notification:)), name: UIResponder.keyboardDidShowNotification , object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(Form.keyboardDidhide(Notification:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
}
