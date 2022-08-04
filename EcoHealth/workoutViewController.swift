//
//  workoutViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class workoutViewController: UIViewController {
    @IBOutlet weak var workout: UILabel!
    
    var workouts = ["Go for a 30 minute run outside at a nice, slow pace! Running outside lets you save electricity by not using a treadmill.", "Run a 5K - and try to get under 35 minutes!", "Use dumbells at home (you can shop secondhand or buy adjustable dumbells) and try doing 3 sets (20 reps each) of bicep curls, tricep curls, tricep dips, hammer curls, overhead presses, deadlifts, and pullups. Then complete a core workout consisting of crunches, mountain climbers, bicycles, planks, and hip dips (you can also add your own exercises).", ""]
    override func viewDidLoad() {
        super.viewDidLoad()
        workout.isHidden = true
    }
    

    @IBAction func create(_ sender: UIButton) {
        workout.isHidden = false
        let output = workouts.randomElement()
        self.workout.text = output
    }
    
}
