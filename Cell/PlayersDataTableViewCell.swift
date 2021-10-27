//
//  PlayersDataTableViewCell.swift
//  PC_Task
//
//  Created by Macintosh on 26/10/21.
//

import UIKit

class PlayersDataTableViewCell: UITableViewCell {

    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var palyerSelectedby: UILabel!
    @IBOutlet weak var points: UILabel!
    @IBOutlet weak var credits: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBAction func addBtn(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   
    }
    
}
