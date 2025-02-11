//
//  ViewController.swift
//  StringInitialsApp
//
//  Created by Sri Vidya Vilipala on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputfName: UITextField!
    
    @IBOutlet weak var inputlName: UITextField!
    
    @IBOutlet weak var displayOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        //Read the text from inputfName and inputlName
        let fName: String = inputfName.text!
        let lName: String = inputlName.text!
        //Manipulate fName and lName and String interpolate
//        let initials: String = "\(fName.first!.uppercased()). \(lName.first!.uppercased())."
            //First letter from fName and first letter from lName and convert into uppercase.
        var firstInitial = fName.prefix(1).uppercased()
        var lastInitial = lName.prefix(1).uppercased()
       
        //display ("Your initials are: \(initials)"
        displayOL.text = "Your initials are: \(firstInitial). \(lastInitial)."
    }
    
}

