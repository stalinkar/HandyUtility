<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style type="text/css">
/* Style the header */
.header {
	margin: auto;
	text-align: center;
	font-family: sans-serif;
	font-size: calc(28px + 15 *( 10vw - 200px)/880);
}

.container {
	margin: auto;
	width: 50%;
	padding: 10px;
	text-align: center;
}

.icon {
	width: 20%;
	height: 50px;
	text-align: center;
	background-color: #1371C3;
	border-color: #1371C3;
	color: #FFFFFF;
}
</style>
</head>
<body>
	<div class="header">
		<h3>Select your operation</h3>
	</div>
	<div class="container">
		<a href="/HandyUtility/FormatJSONServlet">
			<button class="icon">JSON Utility</button>
		</a>
		<a href="/HandyUtility/EncodeDecodeServlet">
			<button class="icon">Encoder/Decoder</button>
		</a>
		<a href="/HandyUtility/GeneratePasswordServlet">
			<button class="icon">Generate Password</button>
		</a>

	</div>
</body>
</html>