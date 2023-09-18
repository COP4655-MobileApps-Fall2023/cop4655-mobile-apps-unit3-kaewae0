//
//  ViewController.swift
//  Flixster 1
//
//  Created by Robbin Maxwell on 9/11/23.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var movies = [Movie]()  // Update the data model to use Movie struct

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self

        fetchMovies()
    }

    // Helper function to fetch movie data
    func fetchMovies() {
        let apiKey = "YOUR_API_KEY_HERE" // Replace with your API key
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=\(apiKey)")!

        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let movieResponse = try decoder.decode(MovieResponse.self, from: data)
                    self.movies = movieResponse.results
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch {
                    print("Error decoding JSON: \(error.localizedDescription)")
                }
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        let movie = movies[indexPath.row]

        cell.titleLabel.text = movie.title
        cell.synopsisLabel.text = movie.overview

        if let posterPath = movie.posterPath {
            let baseUrl = "https://image.tmdb.org/t/p/w185"
            let posterUrl = URL(string: baseUrl + posterPath)
            cell.posterView.af.setImage(withURL: posterUrl!)
        }

        return cell
    }
}

