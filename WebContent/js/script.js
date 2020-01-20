function validateMovieForm() {
    var title = document.forms["movieForm"]["title"].value;
    var boxOffice = document.forms["movieForm"]["boxOffice"].value;
    var dateofLaunch = document.forms["movieForm"]["dateofLaunch"].value;
    var genre = document.forms["movieForm"]["genre"].value;
    var regexname = (/^.*[0-9].*$/);

    if (title == "") {
        alert("Title is required.");
        return false;
    }
    if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    }
    if (boxOffice == "") {
        alert("Box Office is required.");
        return false;
    }
    if (!boxOffice.match(regexname)) {
        alert("Box Office has to be a number.");
        return false;
    }
    if (dateofLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}	
	