//
//  ViewController.swift
//  VoterEligibilityApp
//
//  Created by Sri Vidya Vilipala on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var displayOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkEligibilityBtn(_ sender: UIButton) {
        //Read the age
        let num = inputOL.text!
        let age=Int(num)!
        //check whether eligible or not
        if age>18 {
            displayOL.text="You are eligible to vote"
            imageView.image=UIImage(named:"Vote")
        }else{
            displayOL.text="You are not eligible to vote"
            imageView.image=UIImage(named:"Novote")
        }
        
    }
    
}

