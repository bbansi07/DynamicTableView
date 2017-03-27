//
//  VideoCell.swift
//  DynamicTableView
//
//  Created by Bansi Bhatt on 27/03/17.
//  Copyright © 2017 Bansi. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var viewPlayer : UIView!
    @IBOutlet weak var slider : UISlider!
    @IBOutlet weak var lblTime : UILabel!
    @IBOutlet weak var btnPlay : UIButton!
    @IBOutlet weak var lblTitle : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
