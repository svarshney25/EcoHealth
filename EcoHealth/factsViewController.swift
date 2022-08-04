//
//  factsViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class factsViewController: UIViewController {

    @IBOutlet weak var lfactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lfactLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func factButton(_ sender: Any) {
        let array = ["Carbon dioxide levels are at the highest it has been in two million years.", "Sea levels are rising faster than ever before.", "One of the biggest contributors to climate change is the entrapment of greenhouse gases in our atmosphere. ","The usage any gym equipment that requires electricty only increases carbon footprint."]
        lfactLabel.text = array.randomElement()
        lfactLabel.isHidden = false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
