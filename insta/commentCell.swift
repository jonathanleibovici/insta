//
//  commentCell.swift
//  insta
//
//  Created by Jonathan Leibovici on 10/21/20.
//

import UIKit

class commentCell: UITableViewCell {

    
    
    
    @IBOutlet weak var nameLable: UILabel!
    
    
    @IBOutlet weak var commentLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
