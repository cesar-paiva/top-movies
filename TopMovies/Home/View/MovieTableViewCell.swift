//
//  TableViewCell.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    //MARK - IBOutlets
    @IBOutlet weak var imageViewPoster: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    
    //MARK - Super methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //MARK - Methods
    func prepare(with movie: Movie) {
        labelTitle.text = movie.title
        labelSummary.text = movie.summary
        labelRating.text = "\(movie.rating)"
        imageViewPoster.image = UIImage(named: movie.image.valid+"small")
    }

    
}
