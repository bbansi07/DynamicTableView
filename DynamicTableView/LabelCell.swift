//
//  LabelCell.swift
//  DynamicTableView
//
//  Created by Zeitech Solutions on 27/03/17.
//  Copyright © 2017 Bansi. All rights reserved.
//

import UIKit

class LabelCell: UITableViewCell {

    @IBOutlet weak var lblText : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
