//
//  ViewController.swift
//  Vilipala_InclassAppMarch
//
//  Created by Sri Vidya Vilipala on 3/27/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var principalOL: UITextField!
    
    @IBOutlet weak var rateOfInterestOL: UITextField!
    
    @IBOutlet weak var rateOfTimeOL: UITextField!
    var principal = 0
    var rateOfTime = 0
    var rateOfInterest = 0
    var result = " "
    var imagename = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtn(_ sender: UIButton) {
        //Read the input of Principal, Rate of Time and Rate of interest
         principal = Int(principalOL.text!)!
         rateOfTime = Int(rateOfTimeOL.text!)!
         rateOfInterest = Int(rateOfInterestOL.text!)!
        
        //Calculate Simple Interest using formula (P*R*T)/100
        var SimpleInterest = (principal * rateOfTime * rateOfInterest)/100
        if SimpleInterest < 100 {
            result = "Simple Interest is low   \(SimpleInterest)"
            imagename = "Below"
        } else {
            if SimpleInterest >= 100 && SimpleInterest < 500{
                result = "Simple Interest is high  \(SimpleInterest)"
                imagename = "Medium"
            } else {
                result = "Simple Interest is very high  \(SimpleInterest)"
                imagename = "Highvalue"
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.enteredPrincipal = principal
            destination.enteredRateofTime = rateOfTime
            destination.enteredRateofInterest = rateOfInterest
            destination.calculatedResult = result
            destination.image = imagename
        
        }
    }
    
}

