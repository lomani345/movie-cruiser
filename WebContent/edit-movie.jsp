<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit movie</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
    <c:set var="movie" value="${movie}"></c:set>
    <header>
    <h3 class="movie-cruiser">Movie Cruiser</h3>
    <img src="images/logo.png" alt="logo" /> <nav> <a href="ShowMovieListAdmin" class="movie">Movies</a>
    </nav> </header>
    <h1 class="edit-movie">Edit Movie</h1>
    <form action="EditMovie" method="post" name="movieForm" onsubmit="return validateMovieForm()">
        <input type="hidden" name="movieId" value="${movie.getMovieId()}" />
        <table class="edit-table" cellpadding=3 cellspacing=3>
            <tr>
                <td><label for="Name"><b>Title</b></label></td>
            </tr>
            <tr>
                <td colspan=7><input type="textbox" id="Name" name="title"
                    value="${movie.getTitle()}" autofocus size=120 spellcheck="false"
                    autocomplete="off" placeholder="Avengers-End Game"></td>
            </tr>
            <tr>
                <td><label for="gross"><b>Gross($)</b></label></td>
                <td><label><b>Active</b></label></td>
                <td><label><b>Date of Launch</b></label></td>
                <td><label><b>Genre</b></label></td>
            </tr>
            <tr>
                <td><input type="text" id="gross" name="boxOffice" autofocus size=15
                    spellcheck="false" autocomplete="off" placeholder="2787965087"
                    value="${movie.getBoxOffice()}"></td>
                <td><c:choose>
                        <c:when test="${movie.isActive()==true}">
                            <input type="radio" name="active" value="yes" checked />Yes <input
                                type="radio" name="active" value="No" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" value="yes" />Yes
                    <input type="radio" name="active" value="No" checked="checked" />No
                </c:otherwise>
                    </c:choose></td>
                <f:formatDate value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input type="text" id="date" name="dateofLaunch" value="${dateOfLaunch}"
                    autofocus size=20 spellcheck="false" autocomplete="off" placeholder="27/04/2022"></td>
                <td><select name="genre">
                        <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                        <option value="Superhero">Superhero</option>
                        <option value="Science Fiction">Science Fiction</option>
                        <option value="Romance">Romance</option>
                        <option value="Comedy">Comedy</option>
                        <option value="Adventure">Adventure</option>
                        <option value="Thriller">Thriller</option>
                </select></td>
            </tr>
            <tr>
                <td height="12px"></td>
            </tr>
            <tr>
                <c:choose>
                    <c:when test="${movie.isHasTeaser()==true}">
                        <td><input type="checkbox" name="hasTeaser" value="Yes"
                            checked="checked" /> <b>Has Teaser </b></td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="checkbox" name="hasTeaser" value="No" /> <b>HasTeaser
                        </b></td>
                    </c:otherwise>
                </c:choose>
            </tr>
            <tr>
                <td height="12px"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save" name="submit" class="button" /></td>
            </tr>
        </table>
    </form>
    <footer>
    <h4>Copyright&copy;2019</h4>
    </footer>
</body>
</html>