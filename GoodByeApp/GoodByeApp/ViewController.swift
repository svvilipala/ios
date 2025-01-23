//
//  ViewController.swift
//  GoodByeApp
//
//  Created by Sri Vidya Vilipala on 1/22/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputOL: UITextField!
    
    @IBOutlet weak var inputol: UITextField!
    
    @IBOutlet weak var displayOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitBtn(_ sender: UIButton) {
        //Assign InputOL and inputol to any var
        var fname = InputOL.text!
        var lname = inputol.text!
        // Display them along ("GoodBye, \(fname) \(lname)!")
        displayOL.text! = "GoodBye, \(fname) \(lname)!"
    }
}

