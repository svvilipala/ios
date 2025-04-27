//
//  BookingViewController.swift
//  Vilipala_TravelBooking
//
//  Created by Sri Vidya Vilipala on 4/10/25.
//

import UIKit

class BookingViewController: UIViewController {

    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noOfTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    @IBOutlet weak var bookNowButton: UIButton!
    var Image = ""
    var name = ""
    var noOfTravellers = 0
    var cabinType = ""
    var totalPrice:Int = 0
//    var total = ""
//    var result = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func bookNowButton(_ sender: UIButton) {
        //read input fron travellerNameOL
        name = travellerNameOL.text!
        noOfTravellers = Int(noOfTravellersOL.text!)!
        cabinType = cabinTypeOL.text!.capitalized
        // Economy Cabin Price: 150 $ and Luxury Cabin Price: 250 $
        
        if cabinType == "Economy"{
            totalPrice = noOfTravellers * 150
//            total = String(format: "%.1f", totalPrice)
            Image = "Economy"
//            result = "Enjoy your \(cabinType) Trip!"
            
        }else if cabinType == "Luxury"{
            totalPrice = noOfTravellers * 250
//                total = String(format: "%.1f", totalPrice)
                Image = "Luxury"
        }
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue.destination as! VilipalaResultViewController
            destination.travellerName = name
            destination.noOfTravellers = noOfTravellers
            destination.cabinType = cabinType
            destination.totalCost = totalPrice
            destination.image = Image
        }
    }
}

