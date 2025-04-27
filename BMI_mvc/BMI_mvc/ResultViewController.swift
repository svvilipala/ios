//
//  ResultViewController.swift
//  BMI_mvc
//
//  Created by Sri Vidya Vilipala on 3/25/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredHfeetOL: UILabel!
    
    @IBOutlet weak var EnteredHinchesOL: UILabel!
    
    @IBOutlet weak var EnteredWlbsOL: UILabel!
    
    @IBOutlet weak var ResultLabelOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    var enteredhfeet = 0
    var enteredhinches = 0
    var enteredwlbs = 0.0
    var bmiResult = 0.0
    var bmiImageName = ""
    var healthMessage = ""
    var categoryMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EnteredHfeetOL.text! = EnteredHfeetOL.text! + String(enteredhfeet)
        EnteredHinchesOL.text! = EnteredWlbsOL.text! + String(enteredhinches)
        EnteredWlbsOL.text! = EnteredWlbsOL.text! + String(enteredwlbs)
        ResultLabelOL.text! = """
BMI value: \(bmiResult)
Category: \(categoryMessage)
Health Tip: \(healthMessage)
"""
        imageViewOL.image = UIImage(named: bmiImageName)
        
        
        
        
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
