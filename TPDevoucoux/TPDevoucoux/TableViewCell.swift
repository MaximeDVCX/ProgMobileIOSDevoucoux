//
//  TableViewCell.swift
//  TPDevoucoux
//
//  Created by Maxime Devoucoux on 07/11/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myLabelCell: UILabel!
    @IBOutlet weak var myButtonCell: UIButton!
    
    var todo : Todo?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // fonction pour modifier la couleur quand appui et modifier l'état de la variable
    @IBAction func changementEtat(_ sender: Any) {
        
        if myButtonCell.currentTitle == "Non fait"{
            myButtonCell.setTitle("Fait", for: .normal)
            myButtonCell.setTitleColor(UIColor .green, for: .normal)
            todo?.setFait(fait: true)
        }
        else {
            myButtonCell.setTitle("Non fait", for: .normal)
            myButtonCell.setTitleColor(UIColor .red, for: .normal)
            todo?.setFait(fait: false)
        
        }
    }
}
