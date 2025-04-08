//
//  ViewController.swift
//  Vilipala_CalculatorApp
//
//  Created by Sri Vidya Vilipala on 2/19/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultOutlet: UILabel!
    var operand1 = ""
    var operand2 = ""
    var operand3 = ""
    var number = ""
    var calcOperator: String = ""
    var res = ""
    var prev = ""
    var isEmpty = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        //if buttonZero clicked, should display on label
        number = number + "0"
        resultOutlet.text = resultOutlet.text! + "0"
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
       //if buttonOne clicked, should display on label
        number = number + "1"
        resultOutlet.text = resultOutlet.text! + "1"
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        //if buttonTwo clicked, should display on label
        number = number + "2"
        resultOutlet.text = resultOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        //if buttonThree clicked, should display on label
        number = number + "3"
        resultOutlet.text = resultOutlet.text! + "3"
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        number = number + "4"
        resultOutlet.text = resultOutlet.text! + "4"
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        number = number + "5"
        resultOutlet.text = resultOutlet.text! + "5"
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        number = number + "6"
        resultOutlet.text = resultOutlet.text! + "6"
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        number = number + "7"
        resultOutlet.text = resultOutlet.text! + "7"
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        number = number + "8"
        resultOutlet.text = resultOutlet.text! + "8"
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        number = number + "9"
        resultOutlet.text = resultOutlet.text! + "9"
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        //AC to clear all the data entered
        operand1 = ""
        operand2 = ""
        number = ""
        calcOperator = ""
        resultOutlet.text = "0"
    }
    
    @IBAction func buttonC(_ sender: Any) {
        //C to clear the current screen value
         number = ""
         resultOutlet.text = ""
    }
    
    @IBAction func signBtnClick(_ sender: UIButton) {
        //Change the sign of current number
        let num = Int(number)!
        if(!number.isEmpty){
            number = String(num * -1)
            resultOutlet.text = operand1 + calcOperator + (number)
        }
    }
    
    @IBAction func divisionBtnClicked(_ sender: UIButton) {
        // if this button pressed then it should given an output of division of numbers
        calcOperator = "/"
        operand1 = number
        resultOutlet.text = operand1 + "/"
        number = ""
        
    }
    
    @IBAction func multiplyBtnClicked(_ sender: UIButton) {
        if(!calcOperator.isEmpty && !number.isEmpty){
            equalsBtnClicked(sender)
            
            calcOperator = "*"
            operand1 = prev
            resultOutlet.text = operand1 + "*"
            number = ""
        }
        else{
            calcOperator = "*"
            operand1 = number
            resultOutlet.text = operand1 + "*"
            number = ""
        }
    }
    
    @IBAction func subtractorBtnClicked(_ sender: UIButton) {
        if(!calcOperator.isEmpty && !number.isEmpty){
            equalsBtnClicked(sender)
            
            calcOperator = "-"
            operand1 = prev
            resultOutlet.text = operand1 + "-"
            number = ""
        }
        else{
            calcOperator = "-"
            operand1 = number
            resultOutlet.text = operand1 + "-"
            number = ""
        }
    }
    
    @IBAction func addBtnClicked(_ sender: UIButton) {
        calcOperator = "+"
        operand1 = number
        resultOutlet.text = operand1 + "+"
        number = ""
    }
    
    @IBAction func equalsBtnClicked(_ sender: UIButton) {
        if number.isEmpty {return}
        operand2 = number
        var result1 = 0
        var result2 = 0.0
        var result = ""
        
    
        
        //if (operand1 == "" && !number.isEmpty){
          //  operand1 = prev
            
        //}
//        if(calcOperator == "*"){
//            if(calcOperator == "-"){
//                result2 = Double((Int(operand1)! * Int(operand2)!) - Int(operand3)!)
//                result = String(Int(result2))
//            }
//        }
       
        //check for division by zero
        if(calcOperator == "/" && operand2 == "0"){
            result = "Not a number"
            resultOutlet.text = result
            number = ""
            calcOperator = ""
            return
        }
        
        if(calcOperator == "+"){
            if(operand1.contains(".") || operand2.contains(".")){
                result2 = Double(operand1)! + Double(operand2)!
                result = String(format: "%10g", result2)
                
            }
            else {
                result1 = Int(operand1)! + Int(operand2)!
                result = String(result1)
            }
        } else if(calcOperator == "-"){
            if(operand1.contains(".") || operand2.contains(".")){
                result2 = Double(operand1)! - Double(operand2)!
                result = String(format: "%10g", result2)
                
            }
            else {
                result1 = Int(operand1)! - Int(operand2)!
                result = String(result1)
            }
        } else if(calcOperator == "*"){
            if(operand1.contains(".") || operand2.contains(".")){
                result2 = Double(operand1)! * Double(operand2)!
                result = String(format: "%10g", result2)
                
            }
            else {
                result1 = Int(operand1)! * Int(operand2)!
                result = String(result1)
            }
        } else if(calcOperator == "/"){
            let result2 = Double(operand1)! / Double(operand2)!
           // Round to 2 decimal places
            let roundedValue = round(result2 * 100) / 100
          // Check for whole numbers and format accordingly
             if roundedValue.truncatingRemainder(dividingBy: 1) == 0 {
             result = "\(Int(roundedValue))"
             } else {
             result = "\(roundedValue)"
             } 
        }

            else if(calcOperator == "%"){
            if(operand1.contains(".") || operand2.contains(".")){
                result2 = Double(operand1)! .remainder(dividingBy: Double(operand2)!)
                result = String(format: "%10g", result2)
            }
            else {
                result1 = Int(operand1)! % Int(operand2)!
                result = String(result1)
            }
        }

        resultOutlet.text! = result
        operand1 = result
        prev = result
        number = ""
        calcOperator = ""
 
    }
    
    @IBAction func moduloBtnClicked(_ sender: UIButton) {
        calcOperator = "%"
        operand1 = number
        resultOutlet.text = operand1 + "%"
        number = ""

    }
    
    
    @IBAction func dotBtnClicked(_ sender: UIButton) {
        number = number + "."
        resultOutlet.text = resultOutlet.text! + "."
    }
    
        
    }
    


