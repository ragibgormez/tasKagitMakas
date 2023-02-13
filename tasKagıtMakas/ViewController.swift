//
//  ViewController.swift
//  tasKagıtMakas
//
//  Created by Ragıb Gormez on 11.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var hellolabel: UILabel!
    @IBOutlet weak var gameImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func playButton(_ sender: Any) {
        
        performSegue(withIdentifier: "toPlayScreen", sender: nil)
    }
    
    
}

