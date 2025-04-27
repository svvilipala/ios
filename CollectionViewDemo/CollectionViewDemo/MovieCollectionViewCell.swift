//
//  MovieCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Sri Vidya Vilipala on 4/10/25.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    
    func assignMovie(with movie: Movie){
        ImageViewOL.image = movie.image
    }
}
