//
//  UserLoginVController.swift
//  PrijectFinal
//
//  Created by A_Z on 2/24/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class UserLoginVController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func SkipNowButton(_ sender: Any) {
    }
    
    
    @IBAction func LoginChairtyButton(_ sender: Any) {
    }
    
    func handleTap(gestureRecognizer: UIGestureRecognizer) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard!.instantiateViewController(withIdentifier: "next")
        self.present(vc, animated: true, completion: nil)
    }
  

}
