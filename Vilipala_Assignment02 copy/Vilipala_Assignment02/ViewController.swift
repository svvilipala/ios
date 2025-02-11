//
//  ViewController.swift
//  Vilipala_Assignment02
//
//  Created by Sri Vidya Vilipala on 2/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
    
    //Read input from name, bill amount, tip
        let name = nameOutlet.text!
        let billAmount = billAmountOutlet.text!
        let tipAmount = tipPercentageOutlet.text!
        
        nameLabel.text = "Name: \(name)"
        //Billamount in double value and print only two numbers after decimal point
        let bill = Double(billAmount)!
        billAmountLabel.text = "Bill Amount: $" + String(format: "%.2f", bill)
        //to calculate tipAmount use the formula Tip Amount in $ = (Bill Amount * Tip Percentage Value) / 100]
        let tipAmountValue = Double(tipAmount)!
        let tipAmountInDollars = (Double(billAmount)! * tipAmountValue) / 100
        tipAmountLabel.text = "Tip Amount: $" + String(format: "%.2f", tipAmountInDollars)
        //calculate totalamountbill(Bill Amount + Calculated Tip Amount)
        totalAmountLabel.text = "Total Amount: $" + String(format: "%.2f", (Double(billAmount)! + tipAmountInDollars))
        }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        //Erase all the details which are entered and displayed
        nameOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        nameLabel.text = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
    }
}
    

