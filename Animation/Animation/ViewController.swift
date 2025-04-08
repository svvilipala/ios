//
//  ViewController.swift
//  Animation
//
//  Created by Sri Vidya Vilipala on 3/18/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var HappyOL: UIButton!
    
    @IBOutlet weak var SadOL: UIButton!
    
    @IBOutlet weak var AngryOL: UIButton!
    
    
    @IBOutlet weak var ShakeMeOL: UIButton!
    
    @IBOutlet weak var ShowOL: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func HappyBtnClicked(_ sender: UIButton) {
        animateImage("happy")
    }
    
    @IBAction func SadBtnClicked(_ sender: UIButton) {
        animateImage("sad")
    }
    
    @IBAction func AngryBtnClicked(_ sender: UIButton) {
        animateImage("angry")
    }
    
   
    @IBAction func ShakeMeBtnClicked(_ sender: UIButton) {
    }
    override func viewDidAppear(_ animated: Bool) {
        imageViewOL.frame.origin.x = view.frame.maxX
        
        HappyOL.frame.origin.x  =  view.frame.width
        SadOL.frame.origin.x  =  view.frame.width
        AngryOL.frame.origin.x  =  view.frame.width
        ShakeMeOL.frame.origin.x  =  view.frame.width
        
    }
    
    @IBAction func ShowBtnClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.imageViewOL.center.x = self.view.center.x
            self.SadOL.center.x = self.view.center.x
            self.AngryOL.center.x = self.view.center.x
            self.HappyOL.center.x = self.view.center.x
            self.ShakeMeOL.center.x = self.view.center.x
        })
        ShowOL.isEnabled = false
    }
    
    func animateImage(_ imageName: String) {
        UIView.animate(withDuration: 1.0, animations: {
            self.imageViewOL.alpha = 0.0
        })
        
        UIView.animate(withDuration: 1.0, delay: 0.5, animations: {
            self.imageViewOL.alpha = 1.0
            self.imageViewOL.image = UIImage(named: imageName)
        })
    }
}

