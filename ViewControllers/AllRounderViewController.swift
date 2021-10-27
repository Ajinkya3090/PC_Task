//
//  AllRounderViewController.swift
//  PC_Task
//
//  Created by Macintosh on 26/10/21.
//

import UIKit

class AllRounderViewController: UIViewController {
    @IBOutlet weak var allRounders: UITableView!
    var rounders = ["Dhananjaya de Silva","Wanindu Hasaranga","Sam Curran","Dasun Shanaka","Moeen Ali","Dhananjaya Lakshan","Ishan Jayarathe","Ramesh Mendis","Liam Dawson"]
    var selecetedby = ["Sel by 11.25%","Sel by 78.75%","Sel by 91.25%","Sel by 31.25%","Sel by 97.50%","Sel by 0.00%","Sel by 0.00%","Sel by 0.00%","Sel by 0.00%"]
    var points = ["0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
    var creadits = ["9.0","9.0","9.0","8.5","8.5","8.0","8.0","8.0","8.0"]
    var images = ["Dhananjaya de Silva","Wanindu Hasaranga","Sam Curran","Dasun Shanaka","Moeen Ali","Dhananjaya Lakshan","Ishan Jayarathe","Ramesh Mendis","Liam Dawson"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.allRounders.dataSource = self
        self.allRounders.delegate = self
        self.allRounders.tableFooterView = UIView()
        allRounders.reloadData()
        let nibFile = UINib(nibName: "PlayersDataTableViewCell", bundle: nil)
        self.allRounders.register(nibFile, forCellReuseIdentifier: "PlayersDataTableViewCell")
        allRounders.backgroundColor = .white
    }
}

//
// MARK : UITableViewDataSource
//

extension AllRounderViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rounders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = allRounders.dequeueReusableCell(withIdentifier: "PlayersDataTableViewCell") as? PlayersDataTableViewCell{
            let imageData = images[indexPath.row]
            cell.playerImage.image = UIImage(named: imageData)
            cell.playerName.text = rounders[indexPath.row]
            cell.palyerSelectedby.text = selecetedby[indexPath.row]
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
    
extension AllRounderViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            75
        }
    }


