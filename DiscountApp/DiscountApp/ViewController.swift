//
//  ViewController.swift
//  DiscountApp
//
//  Created by Sri Vidya Vilipala on 3/20/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discountOL: UITextField!
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        //Read the amount and convert its datatype to double and assign it to a variable
        var amount = Double(amountOL.text!)
        //Read discount and convert its datatype to double and assign it to a variable
        var discountRate = Double(discountOL.text!)
        //calculate priceAfterDiscount
        priceAfterDiscount = amount! * (1 - discountRate!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            //pass the data
            destination.amount = amountOL.text!
            destination.discount = discountOL.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
            
        }
        
    }
}

