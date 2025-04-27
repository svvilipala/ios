//
//  ViewController.swift
//  ExampleTableView
//
//  Created by Sri Vidya Vilipala on 4/21/25.
//

import UIKit

class name {
    var Name: String
    var Age:Int
    
    init(Name: String, Age: Int) {
        self.Name = Name
        self.Age = Age
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = TableViewOL.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath)
        //populate the cell
        cell.textLabel?.text = nameArray[indexPath.row].Name
        //return the cell
        return cell
    }
    
    
    @IBOutlet weak var TableViewOL: UITableView!
    
    var nameArray = [name]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewOL.dataSource = self
        TableViewOL.delegate = self
        
        let name1 = name(Name: "Vidya", Age: 25)
        nameArray.append(name1)
        let name2 = name(Name: "Sri", Age: 24)
        nameArray.append(name2)
        let name3 = name(Name: "Sindhu", Age: 26)
        nameArray.append(name3)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "TableSegue" {
            let destination = segue.destination as! TableViewController
            destination.name = nameArray[(TableViewOL.indexPathForSelectedRow?.row)!]
        }
    }


}

