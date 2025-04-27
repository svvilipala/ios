//
//  ViewController.swift
//  Vilipala_Exam02
//
//  Created by Sri Vidya Vilipala on 4/1/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ActivityTypeOL: UITextField!
    
    @IBOutlet weak var DurationOL: UITextField!
    
    @IBOutlet weak var CaloriesBurnedOL: UITextField!
    
    @IBOutlet weak var CalculateBtn: UIButton!
    
    @IBOutlet weak var ResetBtn: UIButton!
    var arr = ["running", "cycling", "swimming"]
    var totalCaloriesBurned = 0.00
    var image = " "
    var duration = 0
    var caloriesPerMinute = 0
    var result = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CalculateBtn.isEnabled = false
        
    }
    
    @IBAction func CalculateBtn(_ sender: UIButton) {
        //read the input of activitytypeol from arr
        //read input from DurationOL and change datatype
        //when we entered inputs then calculate Calories button should be enable unless it should be disabl
        if ActivityTypeOL.text! == "running"{
            duration = Int(DurationOL.text!)!
            caloriesPerMinute = Int(CaloriesBurnedOL.text!)!
            //now calculate totalCaloriesBurned = duration * caloriesPerMinute
            totalCaloriesBurned = Double(duration * caloriesPerMinute)
        
            image = "running"
        } else if ActivityTypeOL.text! == "cycling"{
            duration = Int(DurationOL.text!)!
            caloriesPerMinute = Int(CaloriesBurnedOL.text!)!
            //now calculate totalCaloriesBurned = duration * caloriesPerMinute
            totalCaloriesBurned = Double(duration * caloriesPerMinute)
           
            image = "cycling"
        } else if ActivityTypeOL.text! == "swimming"{
            duration = Int(DurationOL.text!)!
            caloriesPerMinute = Int(CaloriesBurnedOL.text!)!
            //now calculate totalCaloriesBurned = duration * caloriesPerMinute
            totalCaloriesBurned = Double(duration * caloriesPerMinute)
            image = "swimming"
        } else {
            duration = Int(DurationOL.text!)!
            caloriesPerMinute = Int(CaloriesBurnedOL.text!)!
            //now calculate totalCaloriesBurned = duration * caloriesPerMinute
            totalCaloriesBurned = Double(duration * caloriesPerMinute)
            result = Int(totalCaloriesBurned)
            image = "default"
        }
       
    }
    

    @IBAction func ResetBtn(_ sender: UIButton) {
        ActivityTypeOL.text = ""
        DurationOL.text = ""
        CaloriesBurnedOL.text = ""
        CalculateBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultSegueViewController
            destination.enteredActivityType = ActivityTypeOL.text!
            destination.enteredCalories = caloriesPerMinute
            destination.enteredDuartion = duration
            destination.imageName = image
            destination.totalCalories = totalCaloriesBurned
        }
    }
    
    
    
    @IBAction func TextField(_ sender: UITextField) {
        if ActivityTypeOL.text != "" && DurationOL.text != ""  && CaloriesBurnedOL.text != ""{
            CalculateBtn.isEnabled = true
        } else {
            CalculateBtn.isEnabled = false
        }
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            ActivityTypeOL.text = ""
            DurationOL.text = ""
            CaloriesBurnedOL.text = ""
        }
 
}

