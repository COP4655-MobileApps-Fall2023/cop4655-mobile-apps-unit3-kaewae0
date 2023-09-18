//
//  Movies.swift
//  Flixster 1
//
//  Created by Robbin Maxwell on 9/11/23.
//

import Foundation

// TODO: Create a Movie model struct
struct Movie {
    let title: String
    let director: String
    let releaseYear: Int
    let posterImageUrl: URL
}

// TODO: Create an extension with mock movies
extension Movie {
    // An array of mock movies
    static var mockMovies: [Movie] = [
        Movie(title: "Inception",
              director: "Christopher Nolan",
              releaseYear: 2010,
              posterImageUrl: URL(string: "https://example.com/inception_poster.jpg")!),
        Movie(title: "The Shawshank Redemption",
              director: "Frank Darabont",
              releaseYear: 1994,
              posterImageUrl: URL(string: "https://example.com/shawshank_redemption_poster.jpg")!),
        Movie(title: "The Godfather",
              director: "Francis Ford Coppola",
              releaseYear: 1972,
              posterImageUrl: URL(string: "https://example.com/godfather_poster.jpg")!),
        Movie(title: "Pulp Fiction",
              director: "Quentin Tarantino",
              releaseYear: 1994,
              posterImageUrl: URL(string: "https://example.com/pulp_fiction_poster.jpg")!),
        Movie(title: "The Dark Knight",
              director: "Christopher Nolan",
              releaseYear: 2008,
              posterImageUrl: URL(string: "https://example.com/dark_knight_poster.jpg")!),
        Movie(title: "Forrest Gump",
              director: "Robert Zemeckis",
              releaseYear: 1994,
              posterImageUrl: URL(string: "https://example.com/forrest_gump_poster.jpg")!),
        Movie(title: "Avatar",
              director: "James Cameron",
              releaseYear: 2009,
              posterImageUrl: URL(string: "https://example.com/avatar_poster.jpg")!),
        Movie(title: "The Matrix",
              director: "Lana Wachowski",
              releaseYear: 1999,
              posterImageUrl: URL(string: "https://example.com/matrix_poster.jpg")!),
        Movie(title: "Gladiator",
              director: "Ridley Scott",
              releaseYear: 2000,
              posterImageUrl: URL(string: "https://example.com/gladiator_poster.jpg")!),
        Movie(title: "Jurassic Park",
              director: "Steven Spielberg",
              releaseYear: 1993,
              posterImageUrl: URL(string: "https://example.com/jurassic_park_poster.jpg")!),
        Movie(title: "Titanic",
              director: "James Cameron",
              releaseYear: 1997,
              posterImageUrl: URL(string: "https://example.com/titanic_poster.jpg")!),
        Movie(title: "The Avengers",
              director: "Joss Whedon",
              releaseYear: 2012,
              posterImageUrl: URL(string: "https://example.com/avengers_poster.jpg")!),
        Movie(title: "The Lion King",
              director: "Roger Allers & Rob Minkoff",
              releaseYear: 1994,
              posterImageUrl: URL(string: "https://example.com/lion_king_poster.jpg")!),
        Movie(title: "E.T. the Extra-Terrestrial",
              director: "Steven Spielberg",
              releaseYear: 1982,
              posterImageUrl: URL(string: "https://example.com/et_poster.jpg")!),
        Movie(title: "Frozen",
              director: "Chris Buck & Jennifer Lee",
              releaseYear: 2013,
              posterImageUrl: URL(string: "https://example.com/frozen_poster.jpg")!)
    ]
}

// MARK: Helper Methods
/// Helper function to format the release year as a string
func formattedReleaseYear(_ year: Int) -> String {
    return "\(year)"
}

