//
//  BowlerViewController.swift
//  PC_Task
//
//  Created by Macintosh on 26/10/21.
//

import UIKit

class BowlerViewController: UIViewController {
    
    @IBOutlet weak var bowlerView: UITableView!
    var bowler = ["Adil Rashid","Nuwan Pradeep","Isuru Udana","Lakshan Sandakan","Akila Dhananjaya","Mark Wood"]
    var selection = ["Sel by 93.75%","Sel by 3.75%","Sel by 76.25%","Sel by 5.00%","Sel by 3.75%","Sel by 80.00%"]
    var points = ["0.0","0.0","0.0","0.0","0.0","0.0"]
    var creadits = ["9.0","8.5","8.5","8.5","8.5","8.5"]
    var images = ["Adil Rashid","Nuwan Pradeep","Isuru Udana","Lakshan Sandakan","Akila Dhananjaya","Mark Wood"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bowlerView.dataSource = self
        self.bowlerView.delegate = self
        self.bowlerView.tableFooterView = UIView()
        bowlerView.reloadData()
        let nibFile = UINib(nibName: "PlayersDataTableViewCell", bundle: nil)
        self.bowlerView.register(nibFile, forCellReuseIdentifier: "PlayersDataTableViewCell")
        bowlerView.backgroundColor = .white
    }
}

//
// MARK : UITableViewDataSource
//

extension BowlerViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bowler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = bowlerView.dequeueReusableCell(withIdentifier: "PlayersDataTableViewCell") as? PlayersDataTableViewCell{
            let imageData = images[indexPath.row]
            cell.playerImage.image = UIImage(named: imageData)
            cell.playerName.text = bowler[indexPath.row]
            cell.palyerSelectedby.text = selection[indexPath.row]
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

extension BowlerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
}

