<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie admin</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <h3 class="movie-cruiser">Movie Cruiser</h3>
    <img src="images/logo.png" alt="logo" /> <nav> <a href="ShowMovieListAdmin" class="movie">Movies</a>
    </nav> </header>
    <h1 class="movie-name">Movies</h1>
    <table cellspacing=10 cellpadding=5>
        <col width=400>
        <col width=250>
        <col width=150>
        <col width=250>
        <col width=200>
        <col width=200>
        <col width=150>
        <tr>
            <th align="left"><b>Title</b></th>
            <th align="center"><b>Box Office</b></th>
            <th align="center"><b>Active</b></th>
            <th align="center"><b>Date of Launch</b></th>
            <th align="center"><b>Genre</b></th>
            <th align="center"><b>Has Teaser</b></th>
            <th align="center"><b>Action</b></th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td align="left">${movie.getTitle()}</td>
                <td><f:formatNumber type="currency" value="${movie.getBoxOffice()}"
                        maxFractionDigits="0" /></td>



                <td align="center"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><f:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><a href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <h4>Copyright&copy;2019</h4>
    </footer>
</body>
</html>