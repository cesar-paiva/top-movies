//
//  MoviesTableViewController.swift
//  TopMovies
//
//  Created by Usuario on 15/06/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import UIKit

protocol MoviePresenter: class {
    func presentMovie(with indexPath: IndexPath)
}

final class MoviesTableViewController: UITableViewController {

    lazy var dataSource: MoviesTableViewDataSource = {
        let dataSource = MoviesTableViewDataSource()
        dataSource.loadMovies()
        return dataSource
    }()
    
    lazy var delegate: MoviesTableViewDelegate = {
        let delegate = MoviesTableViewDelegate()
        delegate.moviePresenter = self
        return delegate
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTableView()
    }
    
    private func prepareTableView() {
        let movieTableViewCell = UINib(nibName: String(describing: MovieTableViewCell.self), bundle: nil)
        tableView.register(movieTableViewCell, forCellReuseIdentifier: ItemType.movie.rawValue)
        tableView.dataSource = dataSource
        tableView.delegate = delegate
    }


}

extension MoviesTableViewController: MoviePresenter {
    func presentMovie(with indexPath: IndexPath) {
        let movie = dataSource.movies[indexPath.row]
        let movieDetailStoryBoard = UIStoryboard.movieDetail
        guard let movieViewController = movieDetailStoryBoard.instantiateInitialViewController() as? MovieDetailViewController else { return }
        movieViewController.movie = movie
        navigationController?.show(movieViewController, sender: nil)
        
    }
    
    
}
