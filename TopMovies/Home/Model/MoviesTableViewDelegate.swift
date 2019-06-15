//
//  MoviesTableViewDelegate.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import UIKit

final class MoviesTableViewDelegate: NSObject {
    weak var moviePresenter: MoviePresenter?
    
}

extension MoviesTableViewDelegate: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moviePresenter?.presentMovie(with: indexPath)
    }
}

