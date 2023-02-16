//
//  CryptoTableViewCell.swift
//  MVVM-CryptoApp
//
//  Created by mert polat on 16.02.2023.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var currenctText: UILabel!
    @IBOutlet weak var priceText: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
