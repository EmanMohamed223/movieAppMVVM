//
//  TableViewCell.swift
//  Iteams
//
//  Created by Eman on 29/01/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var movieImg: UIImageView!
    
    @IBOutlet weak var tmovieTitle: UILabel!
    
    @IBOutlet weak var movierate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
