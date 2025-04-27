//
//  TableViewController.swift
//  ExampleTableView
//
//  Created by Sri Vidya Vilipala on 4/21/25.
//

import UIKit

class TableViewController: UIViewController {

    
    @IBOutlet weak var ResultOL: UILabel!
    var name : name?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        ResultOL.text = "The name \((name?.Name)!) and age is \((name?.Age)!) "
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
