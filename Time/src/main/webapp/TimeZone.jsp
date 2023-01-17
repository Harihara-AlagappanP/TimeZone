<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>TimeZone</title>
		<link href="cssfiles/TimeZoneStyle.css" type="text/css" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Aladin&family=Chilanka&family=Pangolin&display=swap" rel="stylesheet">

	</head>
	<body>
		<div class="wrapper">
			<span class="title">TimeZone</span>
			<div class="selector-frame">
				<form method="get" action="get-time" class="form">
					<select class="timezone-selector" name="timeZoneId">
						<%
							String[] timeZones = TimeZone.getAvailableIDs();
							for(String timeZone : timeZones){
								out.println("<option>" + timeZone + "</option>");
							}
						%>
					</select>
					<button class="submit-btn">Get Time</button>
				</form>
			</div>
		</div>
	</body>
</html>