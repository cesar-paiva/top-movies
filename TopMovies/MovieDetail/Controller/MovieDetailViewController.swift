//
//  MovieDetailViewController.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    
    @IBOutlet weak var imageViewPoster: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDuration: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var labelCategories: UILabel!
    @IBOutlet weak var textViewSummary: UITextView!
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
