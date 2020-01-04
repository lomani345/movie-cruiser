function validate() {
    var title = document.forms["movie"]["title"].value;
    var Gross = document.forms["movie"]["Gross"].value;
    var dateOfLaunch = document.forms["movie"]["dateOfLaunch"].value;
    var genre = document.forms["movie"]["genre"].value;
    var regexname = (/^.*[0-9].*$/);

    if (title == "") {
        alert("Title is required.");
        return false;
    }
    if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    }
    if (Gross == "") {
        alert("Gross is required.");
        return false;
    }
    if (!Gross.match(regexname)) {
        alert("Gross has to be a number.");
        return false;
    }
    if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}	
	