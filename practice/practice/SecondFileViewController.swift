//
//  SecondFileViewController.swift
//  practice
//
//  Created by Sri Vidya Vilipala on 4/2/25.
//

import UIKit

class SecondFileViewController: UIViewController {
    
    @IBOutlet weak var totalAmountOL: UILabel!
    
    @IBOutlet weak var discountrateOL: UILabel!
    
    @IBOutlet weak var finalAmountOL: UILabel!
    
    @IBOutlet weak var ImageView: UIImageView!
    var total = 0.0
    var discount = 0.0
    var final = 0.0
    var imageView = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        totalAmountOL.text! = totalAmountOL.text! + "\(total)"
        discountrateOL.text! = discountrateOL.text! + "\(discount) %"
        finalAmountOL.text! = finalAmountOL.text! + "\(final)"
        
        ImageView.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.ImageView.alpha = 1.0
            self.ImageView.image = UIImage(named: self.imageView)
        }

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

}
