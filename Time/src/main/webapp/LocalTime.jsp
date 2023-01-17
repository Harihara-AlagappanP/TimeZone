<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Local Time</title>
		<link href="cssfiles/LocalTimeStyle.css" type="text/css" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Kalam&family=Neucha&display=swap" rel="stylesheet">
	</head>
	<body>
		<div class="frame">
			<p class="title">
				<%
					String zone = request.getParameter("timeZoneId");
					out.println("Local Time of " + zone);
				%>
			</p>
			<div class="display-region">
				<%
					String time = (String) request.getAttribute("time");
					String ID = (String) request.getAttribute("zoneID");
					out.println(time + "\t" + ID);
				%>
			</div>
		</div>
	</body>
</html>