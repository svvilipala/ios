//
//  ViewController.swift
//  Vilipala_WordGuess
//
//  Created by Sri Vidya Vilipala on 3/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var words = [["MACBOOK", "A popular Apple laptop"],
    ["AVOCADO", "A green fruit with a seed inside"],
    ["DOG","A loyal domestic animal"],
    ["APPLE", "A red or green fruit"],
    ["LEOPARD", "A wild big cat"]]
    var count = 0
    var word = ""
    var letterGuessed = ""
    var totalGuesses = 0
    let maxGuesses = 10
    var wordsGuessCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGame()
        guessLetterField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    func setupGame() {
        word = words[count][0]
        letterGuessed = ""
        totalGuesses = 0
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessCount)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count)"
        totalWordsLabel.text = "Total number of words in game: \(words.count)"
        updateUnderscores()
        hintLabel.text = "HINT: "+words[count][1]
        statusLabel.text = "..."
        guessCountLabel.text = "You have made Zero guesses."
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
        displayImage.image = UIImage(named: "\(count)")
    }
    
    @objc func textFieldEditingChanged() {
        if let text = guessLetterField.text,!text.isEmpty{
            guessLetterField.text = String(text.last!).uppercased()
        }
        guessLetterButton.isEnabled = !(guessLetterField.text?.isEmpty ?? true)
        
    }

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        let letter = guessLetterField.text?.uppercased().first
        //If the letter is nill or empty, return early
        if letter == nil || letter!.isWhitespace {
            return
        }
        guessLetterField.text = ""
        guessLetterButton.isEnabled = false
        
        totalGuesses += 1
        guessCountLabel.text = "You have made \(totalGuesses) guesses."
        
        if word.contains(letter!) {
            letterGuessed.append(letter!)
            statusLabel.text = "Good guess! Keep going."
        }else{
            statusLabel.text = "Wrong guess. Try again."
        }
        updateUnderscores()
        GameStatus()

        
        }
    func GameStatus() {
        if !userGuessLabel.text!.contains("_") {
            //if the word is fully guessed
            if count == 4{
                statusLabel.text = "Congraulations, you are done, Please start over again."
            } else {
                statusLabel.text = "You've guessed it correctly! '\(word)' 🎉"
            }
            displayImage.image = UIImage(named: word.lowercased())
            guessCountLabel.text = totalGuesses == maxGuesses ? "Wow!, You have made 10 guesses to guess the word" : "You have made \(totalGuesses) guesses."
            playAgainButton.isHidden = false
            
            //update wordsGuessedLabel count
            wordsGuessCount += 1
            wordsGuessedLabel.text = "Total number of words guessed successfully:  \(wordsGuessCount)"
            wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count-1)"
//            if wordsGuessCount == words.count{
//                statusLabel.text = "Congraulations, you are done! Please start over again."
//            }
            
        }else if totalGuesses >= maxGuesses {
            
            if word == userGuessLabel.text{
                statusLabel.text = "You've guessed it correctly! '\(word)' 🎉"
                guessCountLabel.text = "Wow!, You have made 10 guesses to guess the word"
                playAgainButton.isHidden = false
            }else{
                statusLabel.text = "Wrong guess.Try again."
                guessCountLabel.text = "You have used all the available guesses, Please play again."
                playAgainButton.isHidden = false
            }
        }
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        if count < words.count - 1 {
            count += 1
            setupGame()
        }else {
            statusLabel.text = "Congratulations, You are done, Please start over again."
            count = 0
            wordsGuessCount = 0
            setupGame()
        }
    }
    func updateUnderscores() {
        var displayWord = ""
        for char in word {
            if letterGuessed.contains(char){
                displayWord.append(char)
            } else {
                displayWord.append("_ ")
            }
        }
        userGuessLabel.text = displayWord
    }
    
}

