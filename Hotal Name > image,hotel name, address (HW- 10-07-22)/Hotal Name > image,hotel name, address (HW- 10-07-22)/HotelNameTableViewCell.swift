//
//  HotelNameTableViewCell.swift
//  Hotal Name > image,hotel name, address (HW- 10-07-22)
//
//  Created by TryCatch Pro 4 on 10/07/22.
//

import UIKit

class HotelNameTableViewCell: UITableViewCell {

    @IBOutlet weak var HotalImage: UIImageView!
    
    @IBOutlet weak var HotalNameGoesHereLab: UILabel!
    
//    Var NameArray
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
