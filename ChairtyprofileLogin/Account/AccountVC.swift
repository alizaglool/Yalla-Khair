//
//  AccountVC.swift
//  CharityLoginAccount
//
//  Created by Ali Elhabal on 2/25/20.
//  Copyright © 2020 Ali Elhabal. All rights reserved.
//

import UIKit
class AccountVC : UIViewController  {
    
    @IBOutlet var ContainerView: UIView!
    @IBOutlet weak var ProfileImage: UIImageView!
    @IBOutlet weak var Scroll: UIScrollView!
    @IBOutlet weak var AddCase: UITextField!
    @IBOutlet weak var ProfileTable: UITableView!
    
    var UArr = [
           "asdasdasdsadasdsadasdsasadsadasdsadsadsadsdsadsadsadsadsadsadsadasdasdasdsad" ,"asdasdasdsadasdsadasdsasadsadasdsadsadsadsdsadsadsadsadsadsadsadasdasdasdsad","asdasdasdsadasdsadasdsasadsadasdsadsadsadsdsadsadsadsadsadsadsadasdasdasdsad","asdasdasdsadasdsadasdsasadsadasdsadsadsadsdsadsadsadsadsadsadsadasdasdasdsad"]
    
    var Firstpicker : UIImagePickerController!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let ImageGestureR = UITapGestureRecognizer(target: self, action: #selector(ChangeImage))
        ProfileImage.isUserInteractionEnabled = true
        ProfileImage.addGestureRecognizer(ImageGestureR)
        
        Firstpicker = UIImagePickerController()
        Firstpicker.allowsEditing = true
        Firstpicker.sourceType = .photoLibrary
        Firstpicker.delegate = self 
        
    
        NotificationCenter.default.addObserver(self, selector: #selector(self.KeyboardWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.KeyboardWillHide(notification:)), name:UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func ChangeImage (){
        
        let Alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let Gallery = UIAlertAction(title: "Select New Image", style: .default) { [weak self] (Alert) in
            self!.Firstpicker.sourceType = .photoLibrary
            if self != nil{
                self?.present(self!.Firstpicker, animated: true , completion: nil)
            }
            print ("Gallery")
        }
        
        let Camera = UIAlertAction(title: "Camera", style: .default) { [weak self] (Alert) in
            self?.Firstpicker.sourceType = .camera
            if self != nil {
                self?.present(self!.Firstpicker, animated: true , completion: nil)
            }
                print ("Camera")
        }
        let Cancel = UIAlertAction(title: "Cancel", style: .default) { (Alert) in print ("Cancel")}
        
        
        Alert.addAction(Gallery)
        Alert.addAction(Camera)
        Alert.addAction(Cancel)
        present(Alert, animated: true , completion: nil)
        
        ProfileImage.isHidden = false
       
    
    }
    
    
    @objc func KeyboardWillShow(notification : NSNotification){
        let userinfo = notification.userInfo!
        var keyboardFrame : CGRect = (userinfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame , from : nil)
        var contentinset : UIEdgeInsets = self.Scroll.contentInset
        contentinset.bottom = keyboardFrame.size.height
        Scroll.contentInset = contentinset 
       
    }
    
    @objc func KeyboardWillHide(notification : NSNotification){
        
        let contentinset : UIEdgeInsets = UIEdgeInsets.zero
        Scroll.contentInset = contentinset
   
    }
    
   // func scrollViewDidScroll(_ scrollView: UIScrollView) {
  //    if Scroll.contentOffset.y < scrollView.contentSize.height - scrollView.bounds.height {
 //       Scroll.contentOffset.y = scrollView.contentSize.height - scrollView.bounds.height
//  }
    //  }

}
extension AccountVC : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return UArr.count}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell : ProfileCell  = ProfileTable.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileCell
        Cell.CharityImage.image = UIImage(named: "Resala")
        Cell.CharityName.text = "ReSala"
        Cell.Description.text = UArr[indexPath.row]
        return Cell}
}

extension AccountVC : UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        if let PickedImage = info[UIImagePickerController.InfoKey.editedImage]as? UIImage{
            
            self.ProfileImage.image = PickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        
        picker.dismiss(animated: true, completion: nil)
        
    }

    
    
    
}


