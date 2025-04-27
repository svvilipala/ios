//
//  ViewController.swift
//  Vilipala_MovieApp
//
//  Created by Sri Vidya Vilipala on 4/24/25.
//

import UIKit

class VilipalaMoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  moviesTableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        cell.textLabel?.text = genres[indexPath.row].genre
        return cell
    }

    
    @IBOutlet weak var moviesTableView: UITableView!
//    var genres = [Movies]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Genres"
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        genres = genres.sorted(by: { $0.genre < $1.genre })
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "listsSegue" {
            let destination = segue.destination as! MovieListViewController
            destination.movieListArray = genres[(moviesTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

