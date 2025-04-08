//
//  ViewController.swift
//  Vilipala_Exam01
//
//  Created by Sri Vidya Vilipala on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputPMOL: UITextField!
    
    @IBOutlet weak var inputPMTenOL: UITextField!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    @IBOutlet weak var messageOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkqualityBtn(_ sender: Any) {
        let PM25 = inputPMOL.text!
        let PM10 = inputPMTenOL.text!

        let pm25 = Double(PM25)!
        let pm10 = Double(PM10)!
        
        if inputPMOL.text!.isEmpty || inputPMTenOL.text!.isEmpty {
            messageOL.text = "Please enter the input values for PM2.5 and PM10."
        }else if !inputPMOL.text!.allSatisfy({ ("0"..."9").contains($0) || $0 == "." }) || !inputPMTenOL.text!.allSatisfy({ ("0"..."9").contains($0) || $0 == "." }) {
            
            messageOL.text = "Please enter valid numerical values for PM2.5 and PM10."
        } else if pm25 == Double(PM25)! && pm10 == Double(PM10)! {
            let AQC = (pm25 + pm10)/2
            if AQC <= 25.0 {
                messageOL.text = """
                 The AQC value is \(AQC)
                 Thid is considered to be best 👍 qulaity air.
                 """
                imageViewOL.image = UIImage(named: "Best")
            } else if AQC <= 65.5 {
                messageOL.text = """
                The AQC value is \(AQC)
                This is considered to be moderate quality air🙁.
                """
                imageViewOL.image = UIImage(named: "Moderate")
            } else if AQC <= 125.5 {
                messageOL.text = """
                The AQC value is \(AQC)
                This is considered to be poor quality air 😢.
                """
                imageViewOL.image = UIImage(named: "Poor")
            }
        }

        }
    
    @IBAction func resetBtn(_ sender: Any) {
        //reset everything when the button clicked
        inputPMOL.text = ""
        inputPMTenOL.text = ""
        imageViewOL.image = nil
        messageOL.text = ""
    }
}

