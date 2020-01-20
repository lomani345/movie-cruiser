<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorite</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <h3 class="movie-cruiser">Movie Cruiser</h3>
    <img src="images/logo.png" alt="logo" /> <nav> <a href="ShowMovieListCustomer"
        class="movie">Movies</a> <a href="ShowFavorite" class="favorites">Favorites</a> </nav> </header>
    <h1 class="favorites-name">Favorites</h1>
    <c:if test="${removeFavoriteStatus==true }">
        <h4 class="removed-successfully">
            <b>Movie removed from Favorites successfully</b>
        </h4>
    </c:if>
    <c:set var="favorite" value="${favorite}"></c:set>
    <table cellspacing=5 cellpadding=5>
        <col width=350>
        <col width=200>
        <col width=250>
        <col width=100>
        <tr>
            <th align="left"><b>Title</b></th>
            <th align="center"><b>Box Office</b></th>
            <th align="center"><b>Genre</b></th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td align="left">${movie.getTitle()}</td>
                <td><f:formatNumber type="currency" value="${movie.getBoxOffice()}"
                        maxFractionDigits="0" /></td>

                <td align="center">${movie.getGenre()}</td>

                <td align="right"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr></tr>
        <tr>

            <td align="left"><b>No. of Favorites: ${favorite.getTotal()}</b></td>

        </tr>
    </table>

    <footer>
    <h4>Copyright &copy;2019</h4>
    </footer>
</body>
</html>




