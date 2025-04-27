//
//  ViewController.swift
//  practice
//
//  Created by Sri Vidya Vilipala on 4/2/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enter1stNumOL: UITextField!
    
    @IBOutlet weak var enter2ndNumOL: UITextField!
    
    @IBOutlet weak var enter3rdNumOL: UITextField!
    
    @IBOutlet weak var calculateBtn: UIButton!
    
    var firstNumber = 0;
    var secondNumber = 0;
    var thirdNumber = 0;
    var result = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func CalculateBtnClicked(_ sender: UIButton) {
        firstNumber = Int(enter1stNumOL.text!)!
        secondNumber = Int(enter2ndNumOL.text!)!
        thirdNumber = Int(enter3rdNumOL.text!)!
        
        result = Double(firstNumber + secondNumber + thirdNumber) / 3
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "OneSegue" {
            var destination = segue.destination as! OneFileViewController
            destination.firstEnteredNum = firstNumber
            destination.secondEnteredNum = secondNumber
            destination.thirdEnteredNum = thirdNumber
            destination.totalAmount = result
        }
    }
    
}
