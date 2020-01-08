package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao moviedao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testGetmodifyMovieList();
        testGetMovieListAdmin();
        testGetMovie();

    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin View");
        MovieDao moviedao = new MovieDaoCollectionImpl();
        List<Movie> movie = moviedao.getMovieListAdmin();
        System.out.printf("%-10s%-24s%-18s%-10s%-19s%-20s%-30s\n", "Id", "Title", "Box Office",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movies : movie) {
            System.out.println(movies);// invokes toString();

        }

    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer View");
        List<Movie> movie = moviedao.getMovieListCustomer();
        System.out.printf("%-10s%-24s%-18s%-10s%-19s%-20s%-30s\n", "Id", "Title", "Box Office",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movies2 : movie) {
            System.out.println(movies2);

        }

    }

    public static void testGetmodifyMovieList() {
        System.out.println("Edit Movie");
        Movie movielist = new Movie(1, "Watch and Enjoy", 1234506789L, true,
                DateUtil.convertToDate("03/01/2019"), "adventure films", false);
        moviedao.modifyMovieList(movielist);

    }

    public static void testGetMovie() {
        System.out.println("Get Movies");
        System.out.printf("%-10s%-24s%-18s%-10s%-19s%-20s%-30s\n", "Id", "Name", "Box-Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movie = moviedao.getMovieById(3);
        System.out.println(movie);// invokes toString()

    }

}
