//
//  UrgentVCell.swift
//  PrijectFinal
//
//  Created by A_Z on 2/22/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class UrgentVCell: UITableViewCell {

    
    @IBOutlet weak var UrgentImageView: UIImageView!
    
    @IBOutlet weak var UrgentNameView: UILabel!
    
    @IBOutlet weak var UrgentDecView: UITextView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
