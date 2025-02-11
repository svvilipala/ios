//
//  ViewController.swift
//  VowelTesterDemoApp
//
//  Created by Sri Vidya Vilipala on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        //read the text
        var word = inputOL.text!
        if(word.contains("a") || word.contains("e") || word.contains("i") || word.contains("o") || word.contains("u")){
            outputOL.text = "The word conatins Vowel"
        } else {
            outputOL.text = "The word does not conatins Vowel"
        }
    }
    
    
}

