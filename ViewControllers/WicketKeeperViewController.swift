//
//  wicketKeeperViewController.swift
//  PC_Task
//
//  Created by Macintosh on 26/10/21.
//

import UIKit

class WicketKeeperViewController: UIViewController{
    @IBOutlet weak var wicketKeeper: UITableView!
    var keepers = ["Jonny Bairstow","Jos Buttler","Kusal Perera","Niroshan Dickwella"]
    var selectedby = ["Sel by 81.25%","Sel by 35%","Sel by 72.50%","Sel by 1.25%"]
    var points = ["0.0","0.0","0.0","0.0"]
    var creadits = ["10.0","10.0","9.0","9.0"]
    var images = ["Jonny Bairstow","Jos Buttler","Kusal Perera","Niroshan Dickwella"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.wicketKeeper.dataSource = self
        self.wicketKeeper.delegate = self
        wicketKeeper.reloadData()
        let nibFile = UINib(nibName: "PlayersDataTableViewCell", bundle: nil)
        self.wicketKeeper.register(nibFile, forCellReuseIdentifier: "PlayersDataTableViewCell")
        wicketKeeper.backgroundColor = .white
    }
}

//
//MARK : UITableViewDataSource
//

extension WicketKeeperViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return keepers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = wicketKeeper.dequeueReusableCell(withIdentifier: "PlayersDataTableViewCell") as? PlayersDataTableViewCell{
            let imageData = images[indexPath.row]
            cell.playerImage.image = UIImage(named: imageData)
            cell.playerName.text = keepers[indexPath.row]
            cell.palyerSelectedby.text = selectedby[indexPath.row]
            cell.points.text = points[indexPath.row]
            cell.credits.text = creadits[indexPath.row]
            return cell
        }
        return  UITableViewCell()
    }
}
//
//MARK : UITableViewDelegate
//

extension WicketKeeperViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }

}
