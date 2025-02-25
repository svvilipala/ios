//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Sri Vidya Vilipala on 2/13/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayOL: UILabel!
    @IBOutlet weak var hintOL: UILabel!
    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var checkOL: UIButton!
    @IBOutlet weak var messageOL: UILabel!
    @IBOutlet weak var playagainOL: UIButton!
    
    var words = [["Parrot", "Bird"],
    ["Java", "Programming Language"],
    ["NTR", "Actor Name"]]
    var count = 0
    var word = ""
    var letterGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Check button should disabled when the inputOL is empty
        checkOL.isEnabled = false
        word = words[count][0]
        displayOL.text = ""
        updateUnderscores()
        hintOL.text = "Hint: " + words[count][1]
        messageOL.text = ""
        
        
    }

    @IBAction func checkBtnClick(_ sender: UIButton) {
        //When the letter entered in inputOL, enable the checkBtnClick
        //Increase the "_" according with the size of Array word
        //Replace the input letter if only the letter part of word
        
        var letter = inputOL.text!
        letterGuessed += letter
        var revealedWord = ""
        for l in word.uppercased() {
            if letterGuessed.contains(l){
                revealedWord += "\(l)"
            }else{
                revealedWord += "_ "
            }
        }
        //Display thw word after guess
        displayOL.text = revealedWord
        inputOL.text = ""
        
        //If the guess word correct then display it
        if displayOL.text!.contains("_") == false{
            playagainOL.isHidden = false
            checkOL.isEnabled = false
        }
        checkOL.isEnabled = false
        
    }
    
    @IBAction func playagainBtnClick(_ sender: UIButton) {
        //Reset the button to disable
        playagainOL.isHidden = true
        letterGuessed = ""
        count += 1
        if count == word.count{
            messageOL.text = "Congrats, You win!"
            displayOL.text = ""
            hintOL.text = ""
        } else {
            word = words[count][0]
            hintOL.text = "Hint: " + words[count][1]
            checkOL.isEnabled = true
            displayOL.text = ""
            updateUnderscores()
        }
    }
    
    @IBAction func letterEntered(_ sender: UITextField) {
        var textEntered = inputOL.text!
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        inputOL.text = textEntered
        if textEntered.isEmpty{
            checkOL.isEnabled = false
        }
        else{
            checkOL.isEnabled = true
        }
        
    }
    func updateUnderscores(){
        for letter in word{
            displayOL.text! += "_ "
        }
    }
}

