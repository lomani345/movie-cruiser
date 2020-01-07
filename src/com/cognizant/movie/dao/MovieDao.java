package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public interface MovieDao {
    public List<Movie> getMovieListAdmin();

    public List<Movie> getMovieListCustomer();

    public void modifyMovieList(Movie movieLists);

    public Movie getMovieById(long movieId);

}
