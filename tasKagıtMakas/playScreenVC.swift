//
//  playScreenVC.swift
//  tasKagıtMakas
//
//  Created by Ragıb Gormez on 11.02.2023.
//

import UIKit

class playScreenVC: UIViewController {

    
    var score: Int = 0
    var timer = Timer()
    var highScore: Int = 0
    var itemsArray = [UIImageView]()
    
    
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    
    //scissors images
    @IBOutlet weak var scissorsImageView1: UIImageView!
    @IBOutlet weak var scissorsImageView2: UIImageView!
    @IBOutlet weak var scissorsImageView3: UIImageView!
    //stone images
    @IBOutlet weak var stoneImageView1: UIImageView!
    @IBOutlet weak var stoneImageView2: UIImageView!
    @IBOutlet weak var stoneImageView3: UIImageView!
    //paper images
    @IBOutlet weak var paperImageView1: UIImageView!
    @IBOutlet weak var paperImageView2: UIImageView!
    @IBOutlet weak var paperImageView3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func increaseScore() {
        score += 1
        scorelabel.text = "Score: \(score)"
        
    }
    
    
    
    
    @IBAction func rockButton(_ sender: Any) {
        score += 1
        scorelabel.text = "Score: \(score)"
    }
    
    
    @IBAction func paperButton(_ sender: Any) {
    }
    
    
    @IBAction func scissorsButton(_ sender: Any) {
    }
    
}
