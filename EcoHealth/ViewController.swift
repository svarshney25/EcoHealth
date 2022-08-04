//
//  ViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    var trees : String = ""
    @IBOutlet weak var treesPlanted: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        treesPlanted.text = ("\(trees)")
    }


}

