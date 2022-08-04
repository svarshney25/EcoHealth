//
//  ViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    var trees : Int = 0
    @IBOutlet weak var treesPlanted: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        treesPlanted.text = "You crushed it! Click 'Food' to find a healthy meal. Total Trees Planted: \(trees)"
    }


}

