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
    var counter = 0
    var highScore: Int = 0
    var hideTimer = Timer()
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
        
        scorelabel.text = "Score: \(score)"
        
        
        //timers
        counter = 30
        timerLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(hideItems), userInfo: nil, repeats: true)
        
        
        
        
        itemsArray = [scissorsImageView1, scissorsImageView2, scissorsImageView3, stoneImageView1, stoneImageView2, stoneImageView3, paperImageView1, paperImageView2, paperImageView3]
        
        
        
        

        
    }
    
    @objc func hideItems() {
        for items in itemsArray {
            items.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(itemsArray.count - 1)))
        itemsArray[random].isHidden = false
        
    }
    
    
    
    
    @objc func countDown() {
        timerLabel.text = String(counter)
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            for items in itemsArray {
                items.isHidden = true
            }
            
            //high score
            if self.score > self.highScore {
                self.highScore = self.score
                highScoreLabel.text = "HihgScore: \(highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highScore")
            }
            
            //alert
            let alert = UIAlertController(title: "Time is up", message: "your time is up", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel)
            let replayButton = UIAlertAction(title: "replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                //replay function
                self.score = 0
                self.scorelabel.text = "Score: \(self.score)"
                self.counter = 30
                self.timerLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(self.hideItems), userInfo: nil, repeats: true)
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            
            self.present(alert, animated: true)
            
            
            
            
        }
    }
    
    
    @objc func increaseScore() {
        score += 1
        scorelabel.text = "Score: \(score)"
        
    }
    
    
    
    
    @IBAction func rockButton(_ sender: UIButton) {
        
        if stoneImageView1.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }else if stoneImageView2.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }else if stoneImageView3.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }
            
      
    }
    
    
    @IBAction func paperButton(_ sender: Any) {
        
        if paperImageView1.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }else if paperImageView2.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }else if paperImageView3.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }
            
      
    }
    
    
    @IBAction func scissorsButton(_ sender: Any) {
        if scissorsImageView1.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }else if scissorsImageView2.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }else if scissorsImageView3.isHidden == false {
            score += 1
            scorelabel.text = "Score: \(score)"
        }
    }
    
}
