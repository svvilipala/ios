//
//  ResultSegueViewController.swift
//  Vilipala_Exam02
//
//  Created by Sri Vidya Vilipala on 4/1/25.
//

import UIKit

class ResultSegueViewController: UIViewController {
    
    @IBOutlet weak var displayActivityType: UILabel!
    
    @IBOutlet weak var displayEnteredDuration: UILabel!
    
    @IBOutlet weak var displayCaloriesBurned: UILabel!
    
    
    @IBOutlet weak var displaytoalCalculatedCalories: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    var enteredDuartion = 0
    var enteredCalories = 0
    var enteredActivityType = ""
    var totalCalories = 0.0
    var imageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayActivityType.text! = displayActivityType.text! + enteredActivityType
        displayEnteredDuration.text! = displayEnteredDuration.text! + "\(enteredDuartion)"
        displayCaloriesBurned.text! = displayCaloriesBurned.text! +
        "\(enteredCalories)"
        displaytoalCalculatedCalories.text! = displaytoalCalculatedCalories.text! +
        "\(totalCalories)"
        imageView.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.imageView.alpha = 1.0
            self.imageView.image = UIImage(named: self.imageName)
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
}
