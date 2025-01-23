//
//  ViewController.swift
//  HelloApp
//
//  Created by Sri Vidya Vilipala on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var displayOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        //Assign input to any string(let or var)
        var name = inputOL.text!
        //To display "Hello, \(name)!"
        displayOL.text = "Hello, \(name)!"
    }
    
}

