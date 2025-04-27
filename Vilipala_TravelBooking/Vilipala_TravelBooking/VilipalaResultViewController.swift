//
//  VilipalaResultViewController.swift
//  Vilipala_TravelBooking
//
//  Created by Sri Vidya Vilipala on 4/10/25.
//

import UIKit

class VilipalaResultViewController: UIViewController {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTypeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    
    var image = ""
    var result = ""
    var travellerName = ""
    var noOfTravellers = 0
    var cabinType = ""
    var totalCost = 0
    override func viewDidLoad() {
        super.viewDidLoad()
//        resultOL.text! = result
        if cabinType == "Economy" || cabinType == "Luxury"{
            travellerNameOL.text! = travellerNameOL.text! + " " + travellerName
            noOfTravellersOL.text! = noOfTravellersOL.text! + " " + String(noOfTravellers)
            cabinTypeOL.text! = cabinTypeOL.text!.capitalized + " " + cabinType
            totalCostOL.text! = totalCostOL.text! + " $" + String(totalCost)
            imageOL.image = UIImage(named: image)
            resultOL.text = "Enjoy your \(cabinType) Trip!"
        } else {
            resultOL.text = "Please select a valid class."
            travellerNameOL.text! = travellerNameOL.text! + " " + travellerName
            noOfTravellersOL.text! = noOfTravellersOL.text! + " " + String(noOfTravellers)
            cabinTypeOL.text! = cabinTypeOL.text! + " "
            totalCostOL.text! = totalCostOL.text! + " "
            imageOL.image = UIImage(named: "Invalid")
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
