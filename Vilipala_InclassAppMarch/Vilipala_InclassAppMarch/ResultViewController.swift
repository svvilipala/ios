//
//  ResultViewController.swift
//  Vilipala_InclassAppMarch
//
//  Created by Sri Vidya Vilipala on 3/27/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayPrincipal: UILabel!
    
    @IBOutlet weak var displayRateofInterest: UILabel!
    
    @IBOutlet weak var displayRateofTime: UILabel!
    
    @IBOutlet weak var displayResult: UILabel!
    
    @IBOutlet weak var ImageView: UIImageView!
    var enteredPrincipal = 0
    var enteredRateofInterest = 0
    var enteredRateofTime = 0
    var calculatedResult = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        displayPrincipal.text! = displayPrincipal.text! + "\(enteredPrincipal)"
        displayRateofTime.text! = displayRateofTime.text! + "\(enteredRateofTime)"
        displayRateofInterest.text! = displayRateofInterest.text! + "\(enteredRateofInterest)"
        displayResult.text! = displayResult.text! + "\(calculatedResult)"
        UIView.animate(withDuration: 0.5, animations: {
            self.ImageView.alpha=0.0
        })
        UIView.animate(withDuration: 1.0, delay: 0.8, usingSpringWithDamping: 0.6, initialSpringVelocity:0.6, animations: {
            self.ImageView.alpha=1.0
            self.ImageView.image = UIImage(named:self.image)
            
        })
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
