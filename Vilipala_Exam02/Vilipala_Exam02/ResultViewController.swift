//
//  ResultViewController.swift
//  Vilipala_Exam02
//
//  Created by Sri Vidya Vilipala on 4/3/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayGoalTypeOL: UILabel!
    
    @IBOutlet weak var EnteredTargetAmount: UILabel!
    
    @IBOutlet weak var EnteredInterestRate: UILabel!
    
    @IBOutlet weak var CalculatedSavings: UILabel!
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    var goal = ""
    var enteredTargetAmount = 0
    var enteredInterestRate = 0.0
    var calculatedSavings = 0.0
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayGoalTypeOL.text! = displayGoalTypeOL.text! + goal
        EnteredInterestRate.text! = EnteredInterestRate.text! + String(format: "%.1f", arguments: [enteredInterestRate])
        EnteredTargetAmount.text! = EnteredTargetAmount.text! + "\(enteredTargetAmount)"
        CalculatedSavings.text! = CalculatedSavings.text! + String(format: "%.2f", arguments: [calculatedSavings])
        ImageViewOutlet.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.ImageViewOutlet.alpha = 1.0
            self.ImageViewOutlet.image = UIImage(named: self.imageName)
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
