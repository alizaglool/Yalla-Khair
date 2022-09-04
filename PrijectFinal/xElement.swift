//
//  UiElements.swift
//  SingeUp
//
//  Created by A_Z on 1/23/20.
//  Copyright © 2020 A_Z. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var CornerRediuc : CGFloat {
        get{ return self.layer.cornerRadius }
        set{ self.layer.cornerRadius = newValue }
    }
    @IBInspectable
    var BorderColor : UIColor {
        get{ return UIColor(cgColor: layer.borderColor!) }
        set{ self.layer.borderColor = newValue.cgColor }
    }
    
    @IBInspectable
    var BorderWidth : CGFloat {
        get{ return self.layer.borderWidth }
        set{ self.layer.borderWidth = newValue }
    }
    //    @IBInspectable var BorderColor:UIColor? {
    //        set {
    //            layer.borderColor = newValue!.cgColor
    //        }
    //        get {
    //            if let color = layer.borderColor {
    //                return UIColor(cgColor:color)
    //            }
    //            else {
    //                return nil
    //            }
    //        }
    //    }
}
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
