//
//  foodViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class foodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func breakfast(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.loveandlemons.com/healthy-breakfast-ideas/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func lunch(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.self.com/gallery/healthy-lunch-recipes-ideas")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func dinner(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.jaroflemons.com/50-quick-healthy-dinners-30-minutes-or-less/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func preworkout(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://greatist.com/fitness/best-pre-workout-snacks")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func postworkout(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.healthline.com/nutrition/eat-after-workout#TOC_TITLE_HDR_3")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func shopping(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://foodprint.org/blog/sustainable-grocery-shopping/")! as URL, options: [:], completionHandler: nil)
    }
    
}
