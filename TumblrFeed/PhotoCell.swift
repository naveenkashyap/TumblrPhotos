//
//  PhotoCell.swift
//  TumblrFeed
//
//  Created by Naveen Kashyap on 1/24/17.
//  Copyright © 2017 Naveen Kashyap. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var tumblrImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
