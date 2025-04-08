//
//  ViewController.swift
//  coordinates
//
//  Created by Sri Vidya Vilipala on 3/6/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "dog")
        let minx = imageView.frame.minX
        let miny = imageView.frame.minY
        print(minx, ",", miny)
        
        let maxx = imageView.frame.maxX
        let maxy = imageView.frame.maxY
        print(maxx, ",", maxy)
        
        let midx = imageView.frame.midX
        let midy = imageView.frame.midY
        print(midx, ",", midy)
        
        //move location to upper right corner
        imageView.frame.origin.x = 180
        imageView.frame.origin.y = 0
        
        //move location to upper left corner
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 0
//        
//        //move location to down right corner
        imageView.frame.origin.x = 175
        imageView.frame.origin.y = 650
//
//        //move location to down left corner
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 650
//
//        //move location to middle
        imageView.frame.origin.x = 81
        imageView.frame.origin.y = 311
    }


}

