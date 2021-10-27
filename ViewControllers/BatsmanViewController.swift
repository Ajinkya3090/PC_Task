//
//  BatsmanViewController.swift
//  PC_Task
//
//  Created by Macintosh on 26/10/21.
//

import UIKit

class BatsmanViewController: UIViewController {
    
    @IBOutlet weak var batsmen: UITableView!
    var batsman = ["David Malan","Jason Roy","Eoin Morgan","Danushka Gunathilaka","Kusal Mendis","Oshada Fernando","Avishka Fernando","Pathum Nissanka","Liam Livingstone","Charith Asalanka","Sam Billing"]
    var selecetedby = ["Sel by 55.00%","Sel by 82.50%","Sel by 12.50%","Sel by 68.75%","Sel by 61.25%","Sel by 0.00%","Sel by 22.50%","Sel by 2.50%","Sel by 33.75%","Sel by 1.25%","Sel by 2.50%"]
    var points = ["0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
    var creadits = ["9.5","9.0","9.0","9.0","8.5","8.5","8.5","8.0","8.0","8.0","8.0"]
    var images = ["David Malan","Jason Roy","Eoin Morgan","Danushka Gunathilaka","Kusal Mendis","Oshada Fernando","Avishka Fernando","Pathum Nissanka","Liam Livingstone","Charith Asalanka","Sam Billing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.batsmen.dataSource = self
        self.batsmen.delegate = self
        self.batsmen.tableFooterView = UIView()
        batsmen.reloadData()
        let nibFile = UINib(nibName: "PlayersDataTableViewCell", bundle: nil)
        self.batsmen.register(nibFile, forCellReuseIdentifier: "PlayersDataTableViewCell")
        batsmen.backgroundColor = .white
    }
}

//
//MARK : UITableViewDataSource
//

extension BatsmanViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return batsman.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = batsmen.dequeueReusableCell(withIdentifier: "PlayersDataTableViewCell") as? PlayersDataTableViewCell{
            let imageData = images[indexPath.row]
            cell.playerImage.image = UIImage(named: imageData)
            cell.playerName.text = batsman[indexPath.row]
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
        
extension BatsmanViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
}

