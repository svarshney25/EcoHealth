//
//  workoutViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class workoutViewController: UIViewController {
    
    @IBOutlet weak var workout: UILabel!
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var treeCount: UILabel!
    var workouts = [" ","Go for a 30 minute run outside at a nice, slow pace! Running outside lets you save electricity by not using a treadmill.", "Run a 5K - and try to get under 35 minutes!", "Use dumbells at home (you can shop secondhand or buy adjustable dumbells) and try doing 3 sets (20 reps each) of bicep curls, tricep curls, tricep dips, hammer curls, overhead presses, deadlifts, and pullups. Then complete a core workout consisting of crunches, mountain climbers, bicycles, planks, and hip dips (you can also add your own exercises)."]
    
    override func viewDidLoad() {
        //workout.isHidden = true
        //message.isHidden = true
        super.viewDidLoad()
    }
    

    @IBAction func create(_ sender: UIButton) {
        workout.isHidden = false
        let output = workouts.randomElement()!
        self.workout.text = output
    }
    
    @IBAction func complete(_ sender: UIButton) {
        message.isHidden = false
        guard let presentValue = Int(treeCount!.text!) else { return }

             let newValue = presentValue + 1
             treeCount!.text = String(newValue)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? ViewController
            if let trees = treeCount.text {
                destinationVC?.trees = trees
            }
        }
    }
}
