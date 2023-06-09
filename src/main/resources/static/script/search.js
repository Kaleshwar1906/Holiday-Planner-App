//this function is for the search form in the home.jsp page

function searchCity() {
	var n1 = document.getElementById("search").value;
	var n2 = n1.length;
	n1 = n1.toLowerCase();
	if (n2 < 1)
		alert("Search cannot be empty")
	else {
		if ((n1 == "madurai") || (n1 == "ooty") || (n1 == "kannyakumari")
				|| (n1 == "manali") || (n1 == "goa") || (n1 == "allepey")) {
			var n1 = document.getElementById("searchform").action = "http://localhost:8080/"
					.concat(n1);
		}

		else {
			alert("Enter the search properly. Only Cities allowed are allepey, goa,kannyakumari, madurai, manali and ooty");
			var n1 = document.getElementById("searchform").action = "#";
		}
	}

}