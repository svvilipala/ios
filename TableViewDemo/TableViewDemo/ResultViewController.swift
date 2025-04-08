//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by Sri Vidya Vilipala on 4/8/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayLabelOL: UILabel!
    var product: product?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabelOL.text = "The product \((product?.productName)!) and its description is \((product?.productDescription)!)"
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
