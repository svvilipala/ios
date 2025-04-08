//
//  ViewController.swift
//  Vilipala_Exam02
//
//  Created by Sri Vidya Vilipala on 4/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GoalTypeOutlet: UITextField!
    
    @IBOutlet weak var TargetAmountOutlet: UITextField!
    
    @IBOutlet weak var InterestRateOutlet: UITextField!
    
    @IBOutlet weak var TimePeriodOutlet: UITextField!
    
    @IBOutlet weak var CalculateSavingBtn: UIButton!
    
    @IBOutlet weak var ResetBtn: UIButton!
    var totalMonths = 0.00
    var monthlyInterestRate = 0.00
    var monthlySavingsPayment = 0.00
    var GoalType = ""
    var TargetAmount = 0
    var InterestRate = 0.0
    var TimePeriod = 0
    var image = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        GoalTypeOutlet.text! = ""
        TargetAmountOutlet.text! = ""
        InterestRateOutlet.text! = ""
        TimePeriodOutlet.text! = ""
        CalculateSavingBtn.isEnabled = false
        ResetBtn.isEnabled = false
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalculateSavingBtnClicked(_ sender: UIButton) {
        if GoalTypeOutlet.text! == "car" {
            TargetAmount = Int(TargetAmountOutlet.text!)!
            InterestRate = Double(InterestRateOutlet.text!)!
            TimePeriod = Int(TimePeriodOutlet.text!)!
            //Now Calculate totalMonths = timePeriod*12
            totalMonths = Double(TimePeriod) * 12
            // Now calculate monthlyInterestRate = (interestRate / 100) / 12
            monthlyInterestRate = (InterestRate / 100) / 12
            // Now d.    Calculate the monthly savings required using the Future Value formula:
            //monthlySavingsPayment = targetAmount / ((pow(1 +       monthlyInterestRate, totalMonths ) - 1) / monthlyInterestRate)
            monthlySavingsPayment = Double(TargetAmount) / ((pow(1 + monthlyInterestRate, totalMonths) - 1) / monthlyInterestRate)
            image = "car"
        } else  if GoalTypeOutlet.text! == "home" {
            TargetAmount = Int(TargetAmountOutlet.text!)!
            InterestRate = Double(InterestRateOutlet.text!)!
            TimePeriod = Int(TimePeriodOutlet.text!)!
            //Now Calculate totalMonths = timePeriod*12
            totalMonths = Double(TimePeriod) * 12
            // Now calculate monthlyInterestRate = (interestRate / 100) / 12
            monthlyInterestRate = (InterestRate / 100) / 12
            // Now d.    Calculate the monthly savings required using the Future Value formula:
            //monthlySavingsPayment = targetAmount / ((pow(1 +       monthlyInterestRate, totalMonths ) - 1) / monthlyInterestRate)
            monthlySavingsPayment = Double(TargetAmount) / ((pow(1 + monthlyInterestRate, totalMonths) - 1) / monthlyInterestRate)
            image = "home"
        } else {
            TargetAmount = Int(TargetAmountOutlet.text!)!
            InterestRate = Double(InterestRateOutlet.text!)!
            TimePeriod = Int(TimePeriodOutlet.text!)!
            //Now Calculate totalMonths = timePeriod*12
            totalMonths = Double(TimePeriod) * 12
            // Now calculate monthlyInterestRate = (interestRate / 100) / 12
            monthlyInterestRate = (InterestRate / 100) / 12
            // Now d.    Calculate the monthly savings required using the Future Value formula:
            //monthlySavingsPayment = targetAmount / ((pow(1 +       monthlyInterestRate, totalMonths ) - 1) / monthlyInterestRate)
            monthlySavingsPayment = Double(TargetAmount) / ((pow(1 + monthlyInterestRate, totalMonths) - 1) / monthlyInterestRate)
            image = "vacation"
        }
    }
    
    @IBAction func ResetBtnClicked(_ sender: UIButton) {
        GoalTypeOutlet.text = ""
        TargetAmountOutlet.text = ""
        InterestRateOutlet.text = ""
        TimePeriodOutlet.text = ""
        CalculateSavingBtn.isEnabled = false
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Reset all input fields
        GoalTypeOutlet.text = ""
        TargetAmountOutlet.text = ""
        InterestRateOutlet.text = ""
        TimePeriodOutlet.text = ""
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var tarnsition = segue.identifier
        if tarnsition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.goal = GoalTypeOutlet.text!
            destination.enteredTargetAmount = TargetAmount
            destination.enteredInterestRate = InterestRate
            destination.calculatedSavings = monthlySavingsPayment
            destination.imageName = image
        }
    }
    
    @IBAction func TextField(_ sender: UITextField) {
        //The buttons should enable while it adding the input of Time Period the button should enable
                if !GoalTypeOutlet.text!.isEmpty && !TargetAmountOutlet.text!.isEmpty && !InterestRateOutlet.text!.isEmpty && !TimePeriodOutlet.text!.isEmpty {
                    CalculateSavingBtn.isEnabled = true
                    ResetBtn.isEnabled = true
                } else {
                    CalculateSavingBtn.isEnabled = false
                    ResetBtn.isEnabled = false
                }
            }
    
}
