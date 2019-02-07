//
//  TypesTableViewCell.swift
//  P4-Pokedex
//
//  Created by g835 DIT UPM on 6/11/18.
//  Copyright © 2018 g835 DIT UPM. All rights reserved.
//

import UIKit

class TypesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var typeNameLabel: UILabel!

    @IBOutlet weak var numberOfRacesLabel: UILabel!
    
    @IBOutlet weak var TypeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
