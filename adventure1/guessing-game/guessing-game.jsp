<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guessing Game</title>
</head>
<body>
<form method="post" action="guessing-game.jsp">

<% int randomNumber = (int) (Math.random() * 10) + 1;
   int number = -1;
   String n = request.getParameter("randomNumber");

   if (n != null && !n.isEmpty()) {
   randomNumber = Integer.parseInt(n);
   }
   n = request.getParameter("number");
   if (n != null && !n.isEmpty()) {
	 number = Integer.parseInt(n);
   }
if (number > -1) {

	if (randomNumber == number) { %>
    <p>Your guess is correct. Congratulations! The number was <%= number %>.</p>
	<input type=submit value="Play Again">
	<% randomNumber = (int) (Math.random() * 10) + 1; %>
<%  } else if (randomNumber > number) { %>
    <p>Your guess is less than the random number.</p>
<%  } else if (randomNumber < number) { %>
    <p>Your guess is greater than the random number.</p>
<% }} %>

<input type="hidden" value="<%= randomNumber %>" name="randomNumber" />
Enter your guess: <input type=text name="number"> <br>
<input type=submit value="Submit">
<div id="hintDiv" style="display:none;"> <%= randomNumber %></div>
<input type="button" name="hint" value="Hint" onclick="showHint()"/><br>

<script>
function showHint() {
    document.getElementById("hintDiv").style.display = 'block';
}
</script>
</form>
</body>
</html>