//
//  workoutViewController.swift
//  EcoHealth
//
//  Created by Shivika Varshney on 8/2/22.
//

import UIKit

class workoutViewController: UIViewController {
    
    @IBOutlet weak var workout: UILabel!
    
    var trees = 0
    
    var workouts = ["Go for a 30 minute run outside at a nice, slow pace! Running outside lets you save electricity by not using a treadmill.", "Run a 5K - and try to get under 35 minutes!", "Use dumbells at home (you can shop secondhand or buy adjustable dumbells) and try doing 3 sets (20 reps each) of bicep curls, tricep curls, tricep dips, hammer curls, overhead presses, deadlifts, and pullups. Then complete a core workout consisting of crunches, mountain climbers, bicycles, planks, and hip dips (you can also add your own exercises).", "Grab eco-friendly resistance bands + dumbells (you can pruchase them online anywhere) and do a lower body workout! Example exercises: squats, sumo squats, pistol squats, lunges, glute bridges, and hip thrusts.", "Find a YouTube video and complete a HIIT workout for at least 20 minutes using your sustainable equipment."]
    
    override func viewDidLoad() {
        workout.isHidden = true
        super.viewDidLoad()
    }
    

    @IBAction func create(_ sender: UIButton) {
        workout.isHidden = false
        let output = workouts.randomElement()!
        self.workout.text = output
    }
    
    @IBAction func complete(_ sender: UIButton) {
       /*  guard let presentValue = Int(treeCount!.text!) else { return }
        let newValue = presentValue + 1
        treeCount!.text = String(newValue) */
        trees += 1
        performSegue(withIdentifier: "goToNext", sender: self)

    }
    
    @IBAction func back(_ sender: UIButton) {
       // performSegue(withIdentifier: "goToNext", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? ViewController
            destinationVC?.trees = trees
            }
        }
    
}
