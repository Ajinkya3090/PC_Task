//
//  ViewController.swift
//  PC_Task
//
//  Created by Macintosh on 26/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TitileSegView: UISegmentedControl!
    @IBOutlet weak var KeeperView: UIView!
    @IBOutlet weak var BatsmanView: UIView!
    @IBOutlet weak var AllRounderView: UIView!
    @IBOutlet weak var BowlerView: UIView!
    @IBOutlet weak var MiniReqView : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TitileSegView.selectedSegmentIndex = 0
        segViewAction()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeleft(_:)))
        leftSwipe.direction = .left
        view.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwiperight(_:)))
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
    }
    
    @IBAction func segViewAction() {
        KeeperView.isHidden = true
        BatsmanView.isHidden = true
        AllRounderView.isHidden = true
        BowlerView.isHidden = true
        switch TitileSegView.selectedSegmentIndex
        {
        case 0:
            KeeperView.isHidden = false
            MiniReqView.text = "PICK 1- 4 KEEPER"
            
        case 1:
            BatsmanView.isHidden = false
            MiniReqView.text = "PICK 3 - 6 BATSMAN"
            
        case 2:
            AllRounderView.isHidden = false
            MiniReqView.text = "PICK 1 - 4 ALLROUNDER"
            
        case 3:
            BowlerView.isHidden = false
            MiniReqView.text = "PICK 3 - 6 BOWLER"
            
        default:
            break;
        }
    }
    
    @objc func handleSwiperight(_ sender: UISwipeGestureRecognizer){
        if (sender.direction == .right){
            switch TitileSegView.selectedSegmentIndex {
            case 0:
                KeeperView.isHidden = false
                BatsmanView.isHidden = true
                AllRounderView.isHidden = true
                BowlerView.isHidden = true
                TitileSegView.selectedSegmentIndex = 0
            case 1:
                KeeperView.isHidden = false
                BatsmanView.isHidden = true
                AllRounderView.isHidden = true
                BowlerView.isHidden = true
                TitileSegView.selectedSegmentIndex = 0
            case 2:
                KeeperView.isHidden = true
                BatsmanView.isHidden = false
                AllRounderView.isHidden = true
                BowlerView.isHidden = true
                TitileSegView.selectedSegmentIndex = 1
            case 3:
                KeeperView.isHidden = true
                BatsmanView.isHidden = true
                AllRounderView.isHidden = false
                BowlerView.isHidden = true
                TitileSegView.selectedSegmentIndex = 2
            default: break
                
            }
        }
    }
    
    @objc func handleSwipeleft(_ sender: UISwipeGestureRecognizer){
        if (sender.direction == .left){
            switch TitileSegView.selectedSegmentIndex {
            case 0:
                KeeperView.isHidden = false
                BatsmanView.isHidden = false
                AllRounderView.isHidden = true
                BowlerView.isHidden = true
                TitileSegView.selectedSegmentIndex = 1
            case 1:
                KeeperView.isHidden = true
                BatsmanView.isHidden = true
                AllRounderView.isHidden = false
                BowlerView.isHidden = true
                TitileSegView.selectedSegmentIndex = 2
            case 2:
                KeeperView.isHidden = true
                BatsmanView.isHidden = true
                AllRounderView.isHidden = true
                BowlerView.isHidden = false
                TitileSegView.selectedSegmentIndex = 3
            case 3:
                KeeperView.isHidden = true
                BatsmanView.isHidden = true
                AllRounderView.isHidden = true
                BowlerView.isHidden = false
                TitileSegView.selectedSegmentIndex = 3
            default: break
                
            }
        }
    }
}
