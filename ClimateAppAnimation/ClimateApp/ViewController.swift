//
//  ViewController.swift
//  ClimateApp
//
//  Created by Sri Vidya Vilipala on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func submitBtn(_ sender: UIButton) {
        //Read the temperature
        //convert string to int/double
        let temperature=InputOL.text!
        let temp=Int(temperature)!
        //check whether it is cold or hot.
        if temp > 60{
            UIView.animate(withDuration: 0.5, animations: {
                self.imageViewOL.alpha=0.0
            })
            UIView.animate(withDuration: 1.0, delay: 0.8, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha=1.0
                self.imageViewOL.image = UIImage(named:"hot")
            })
            outputOL.text! = "It is hot🔥."
        }else{
            UIView.animate(withDuration: 0.5, animations: {
                self.imageViewOL.alpha=0.0
            })
            UIView.animate(withDuration: 1.0, delay: 0.8, usingSpringWithDamping: 0.6, initialSpringVelocity:0.6, animations: {
                self.imageViewOL.alpha=1.0
                self.imageViewOL.image = UIImage(named:"cold")
            })
            outputOL.text! = "It is cold🥶."
        }
    }
}

