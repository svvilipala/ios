//
//  ResultViewController.swift
//  DiscountApp
//
//  Created by Sri Vidya Vilipala on 3/20/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var displayAmountOL: UILabel!
    
    @IBOutlet weak var displayDiscountOL: UILabel!
    
    @IBOutlet weak var displayPriceafterDiscountOL: UILabel!
    
    var amount = ""
    var discount = ""
    var priceAfterDiscount = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayAmountOL.text! += amount
        displayDiscountOL.text! += discount
        displayPriceafterDiscountOL.text! += priceAfterDiscount

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
