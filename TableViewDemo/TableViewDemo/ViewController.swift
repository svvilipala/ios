//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Sri Vidya Vilipala on 4/8/25.
//

import UIKit

class product {
    var productName: String
    var productDescription: String
    
    init(prodName:String, prodDescription:String){
        self.productName = prodName
        self.productDescription = prodDescription
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the product array count
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = TableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        //populate the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        //return the cell
        return cell
    }
    

    @IBOutlet weak var TableViewOL: UITableView!
    var productArray = [product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewOL.dataSource = self
        TableViewOL.delegate = self
        
        
        let product1 = product(prodName: "iphone 16", prodDescription: "This is a new iphone")
        productArray.append(product1)
        let product2 = product(prodName: "MacBook Pro", prodDescription: "This is a new MacBook")
        productArray.append(product2)
        let product3 = product(prodName: "AitPods Pro", prodDescription: "This is a new Airpords")
        productArray.append(product3)
        let product4 = product(prodName: "Apple Watch Series 8", prodDescription: "This is a new Apple watch series 8")
        productArray.append(product4)
        let product5 = product(prodName: "ipad Pro 11-inch", prodDescription: "This is a new ipad Pro 11 inches")
        productArray.append(product5)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ProductSegue" {
            let destination = segue.destination as! ResultViewController
            destination.product = productArray[(TableViewOL.indexPathForSelectedRow?.row)!]
        }
    }

}

