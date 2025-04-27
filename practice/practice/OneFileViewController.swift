//
//  OneFileViewController.swift
//  practice
//
//  Created by Sri Vidya Vilipala on 4/2/25.
//

import UIKit

class OneFileViewController: UIViewController {
    
    @IBOutlet weak var firstEnteredNumOL: UILabel!
    
    @IBOutlet weak var secondEnteredNumOL: UILabel!
    
    @IBOutlet weak var thirdEnteredNumOL: UILabel!
    
    @IBOutlet weak var totalAmountOL: UILabel!
    
    @IBOutlet weak var discountRateOL: UITextField!
    
    @IBOutlet weak var discountBtn: UIButton!
    var discountRate = 0.0
    var firstEnteredNum = 0
    var secondEnteredNum = 0
    var thirdEnteredNum = 0
    var totalAmount = 0.0
    var finalAmount = 0.0
    var image = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        firstEnteredNumOL.text! = firstEnteredNumOL.text! + "\(firstEnteredNum)"
        secondEnteredNumOL.text! = secondEnteredNumOL.text! + "\(secondEnteredNum)"
        thirdEnteredNumOL.text! = thirdEnteredNumOL.text! + "\(thirdEnteredNum)"
        totalAmountOL.text! = totalAmountOL.text! + "\(totalAmount)"
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    @IBAction func discountBtnClicked(_ sender: UIButton) {
        discountRate = Double(discountRateOL.text!)! 
        finalAmount = totalAmount * (1 - discountRate)/100
        image = "Classification"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "TwoSegue" {
            var destination = segue.destination as! SecondFileViewController
            destination.total = totalAmount
            destination.discount = discountRate
            destination.final = finalAmount
            destination.imageView = image
        }
    }
}
