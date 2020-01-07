package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.cognizant.movie.model.Favorite;
import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImpl implements FavoriteDao {

    public static HashMap<Long, Favorite> userFavorite;

    public FavoriteDaoCollectionImpl() {
        if (userFavorite == null) {
            HashMap<Long, Favorite> favorite = new HashMap<Long, Favorite>();
            userFavorite = favorite;
        }

    }

    @Override

    public Favorite getAllFavorites(long userId) throws FavoriteEmptyException {
        Favorite favorite = userFavorite.get(userId);
        if (favorite == null || favorite.getFavoriteList().isEmpty()) {
            throw new FavoriteEmptyException();
        }

        int total = favorite.getFavoriteList().size();
        favorite.setTotal(total);
        return favorite;

    }

    @Override
    public void addFavoritesById(long userId, long movieId) {

        MovieDao movies = new MovieDaoCollectionImpl();
        Movie movie = movies.getMovieById(movieId);
        if (userFavorite.containsKey(userId)) {
            userFavorite.get(userId).getFavoriteList().add(movie);
        } else {
            Favorite favorite = new Favorite();
            ArrayList<Movie> listMenu = new ArrayList<Movie>();
            listMenu.add(movie);
            favorite.setFavoriteList(listMenu);
            userFavorite.put(userId, favorite);
        }

    }

    @Override

    public void removeFavoritesById(long userId, long movieId) {
        List<Movie> list = userFavorite.get(userId).getFavoriteList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getMovieId() == movieId) {
                list.remove(i);
                break;
            }

        }

    }

}