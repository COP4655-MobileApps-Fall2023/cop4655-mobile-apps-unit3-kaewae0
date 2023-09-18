//
//  DetailViewController.swift
//  Flixster 1
//
//  Created by Robbin Maxwell on 9/12/23.
//

import UIKit
import Nuke

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    // TODO: Add a movie property of type Movie

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Configure the UI elements with the movie information
        configureUI()
    }

    // Helper function to configure UI elements with movie data
    func configureUI() {
        guard let movie = movie else {
            return
        }

        titleLabel.text = movie.title
        directorLabel.text = "Directed by: \(movie.director)"
        releaseYearLabel.text = "Release Year: \(formattedReleaseYear(movie.releaseYear))"
        overviewLabel.text = movie.overview

        if let posterPath = movie.posterPath {
            let baseUrl = "https://image.tmdb.org/t/p/w185"
            let posterUrl = URL(string: baseUrl + posterPath)
            
            // Use Nuke to load and cache movie poster images
            Nuke.loadImage(with: posterUrl!, into: posterImageView)
        }
    }

    // Helper function to format the release year as a string
    func formattedReleaseYear(_ year: Int) -> String {
        return "\(year)"
    }
}

