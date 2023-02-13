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
        /*
        scissorsImageView1.isUserInteractionEnabled = true
        scissorsImageView2.isUserInteractionEnabled = true
        scissorsImageView3.isUserInteractionEnabled = true
        stoneImageView1.isUserInteractionEnabled = true
        stoneImageView2.isUserInteractionEnabled = true
        stoneImageView3.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))


        scissorsImageView1.addGestureRecognizer(recognizer1)
        scissorsImageView2.addGestureRecognizer(recognizer2)
        scissorsImageView3.addGestureRecognizer(recognizer3)
        stoneImageView1.addGestureRecognizer(recognizer4)
        stoneImageView2.addGestureRecognizer(recognizer5)
        stoneImageView3.addGestureRecognizer(recognizer6)
        paperImageView1.addGestureRecognizer(recognizer7)
        paperImageView2.addGestureRecognizer(recognizer8)
        paperImageView3.addGestureRecognizer(recognizer9)
        */
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
