<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guessing Game</title>
</head>
<body>
<form method="post" action="guessing-game.jsp">
<% int randomNumber = 0;
   int number = 0;
   String n = request.getParameter("randomNumber");
   if (n != null || !n.isEmpty()) {
   randomNumber = Integer.parseInt(n);
   }
   %>
<%
// int num = request.getParameter("number");
n = request.getParameter("randomNumber");

if (!request.getParameter("number").isEmpty()){
	number = Integer.parseInt(request.getParameter("number"));
} else { number = 0; }
if( n == null || n.isEmpty() || request.getParameter("number").isEmpty()) {
	randomNumber = (int) (Math.random() * 10) + 1;
} else { if (randomNumber == number) { %>
    <p>Your guess is correct. Congratulations!</p>
	<input type=submit value="Play Again">
<%  } else if (randomNumber < number) { %>
    <p>Your guess is less than the random number.</p>
<%  } else if (randomNumber > number) { %>
    <p>Your guess is greater than the random number.</p>
<% }} %>

<input type="hidden" value="<%= randomNumber %>" name="randomNumber" />
Enter your guess: <input type=text name="number"> <br>
<input type=submit value="Submit">
<div id="hintDiv" style="display:none;"><%= randomNumber %></div>
<input type="button" name="hint" value="Hint" onclick="showHint()"/><br>

<script>
function showHint() {
    document.getElementById("hintDiv").style.display = 'block';
}
</script>
</form>
</body>
</html>