//
//  MovieInfoViewController.swift
//  Vilipala_MovieApp
//
//  Created by Sri Vidya Vilipala on 4/24/25.
//

import UIKit

class MovieInfoViewController: UIViewController {

    
    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    @IBOutlet weak var showInfoBtn: UIButton!
    @IBOutlet weak var movieInfoOutlet: UITextView!
    
    var movie: MovieList?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = movie?.movieName
        movieImageViewOutlet.image = UIImage(named: (movie?.movieImage)!)
        movieInfoOutlet.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        movieInfoOutlet.text = movie?.movieInfo
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func animateImage() {
            movieImageViewOutlet.alpha = 0
            UIView.animate(withDuration: 1.0) {
                self.movieImageViewOutlet.alpha = 1
            }
        }
}
