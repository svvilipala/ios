//
//  ViewController.swift
//  Vilipala_PracticeExam01
//
//  Created by Sri Vidya Vilipala on 2/20/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightinfeet: UITextField!
    
    @IBOutlet weak var heightininches: UITextField!
    
    @IBOutlet weak var weightinlbs: UITextField!
    
    @IBOutlet weak var messageOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var calculatorOFBMI: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //if weight is <= 18.5 comes under underWeight
    }
    
    @IBAction  func calculatorOfBMI(_ sender: UIButton) {
        
        let heightfeet = heightinfeet.text!
        let heightinches = heightininches.text!
        let feetInt = Double(heightfeet)!
        let inchesInt = Double(heightinches)!
        let height = (feetInt * 12) + inchesInt
        let weightlbs = weightinlbs.text!
        let weight = Double(weightlbs)!
        let output = (703*weight)/(height*height)
        let bmi = String(format: "%.1f", output)
        
        if Double(bmi)!<=18.5{
            messageOL.text = """
                You Body Mass Index is \(bmi).
                This is considered Underweight🪫.
                Healthtip: Eat more protein and healthy fats.
                """
            imageViewOL.image=UIImage(named:"underWeight")
        }
        else if Double(bmi)! >= 18.6 && Double(bmi)! <= 24.9{
            messageOL.text="""
                 You Body Mass Index is \(bmi).
                 This is considered Normal👍.
                 Healthtip: Excellent Maintain a balanced lifestyle.
                 """
            imageViewOL.image=UIImage(named:"normal")
        }
        else if Double(bmi)! >= 25 && Double(bmi)! <= 29.9{
            messageOL.text="""
                 You Body Mass Index is \(bmi).
                 This is considered Overweight.
                 Healthtip: Lose weight by maintaining a balanced diet less and increasing physical activity.
                 """
            imageViewOL.image=UIImage(named:"overWeight")
        }
        else{
            messageOL.text="""
                 You Body Mass Index is \(bmi).
                 This is considered Obese.
                 Healthtip: Consult a doctor for personalozed advice.
                 """
            imageViewOL.image=UIImage(named:"Image")
        }
    }
}
        
        
    


    



