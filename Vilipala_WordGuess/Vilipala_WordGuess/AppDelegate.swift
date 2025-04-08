//
//  AppDelegate.swift
//  Vilipala_WordGuess
//
//  Created by Sri Vidya Vilipala on 3/4/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

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
            var wrongGuesses = 0
            let maxWrongGuesses = 10
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
                wrongGuesses = 0
                wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessCount)"
                wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count)"
                totalWordsLabel.text = "Total number of words in game: \(words.count)"
                updateUnderscores()
                hintLabel.text = "Hint: "+words[count][1]
                statusLabel.text = "Guess a letter"
                guessCountLabel.text = "You have made 0 guesses."
                guessLetterButton.isEnabled = false
                playAgainButton.isHidden = true
                displayImage.image = UIImage(named: "\(count)")
            }
            
            @objc func textFieldEditingChanged() {
                if let text = guessLetterField.text, text.count>1{
                    guessLetterField.text = String(text.last!)
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
                
                if word.contains(letter!) {
                    letterGuessed.append(letter!)
                }else{
                    wrongGuesses += 1
                    guessCountLabel.text=" You have made \(wrongGuesses) guesses."
                }
                
                updateUnderscores()
                GameStatus()

                
                }
            func GameStatus() {
                if !userGuessLabel.text!.contains("_") {
                    //if the word is fully guessed
                    statusLabel.text = "You've guessed it correctly! \(word) 🎉"
                    displayImage.image = UIImage(named: "\(word.lowercased())")
                    playAgainButton.isHidden = false
                    
                    //update wordsGuessedLabel count
                    wordsGuessCount += 1
                    wordsGuessedLabel.text = "Total number of words guessed successfully:  \(wordsGuessCount)"
                    wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count-1)"
                }else if wrongGuesses >= maxWrongGuesses {
                    statusLabel.text = "You have used all available guesses, please play again "+"   Wrong guess.Try again."
                    wordsGuessedLabel.text = "Total number of words guessed successfully:  \(wordsGuessCount)"
                    wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count-1)"
                    playAgainButton.isHidden = false
                }
            }
            
            @IBAction func playAgainButtonPressed(_ sender: UIButton) {
                if count < words.count - 1 {
                    count += 1
                    setupGame()
                }else {
                    statusLabel.text = "Congratulations, You are done! Please start over again."
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

        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

