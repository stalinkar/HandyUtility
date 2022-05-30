<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Password</title>
<style type="text/css">
.tabcontent {
	margin:auto;
	width: 50%;
	padding: 6px 12px;
	border: 2px solid #ccc;
}

.output {
	font-size: 20px;
	margin: auto;
	font-family: sans-serif;
}
button {
	margin-top: 10px;
	font-size: 20px;
}

input {
	text-align: center;
	margin-top: 10px;
	font-size: 20px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<center>
		<h1>
			<b>Password Generator</b>
		</h1>
	</center>
	<div id="encoderDecoder" class="tabcontent">
		<form action="/HandyUtility/GeneratePasswordServlet" method="post">
			<div id="LogoText"></div>
			<table>
				<tr>
					<td>Please Select Max Password Length:</td>
					<td><select id="pgLength"
						title="Select the length of your password." name="maxlen">
							<optgroup label="Weak">
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
							</optgroup>
							<optgroup label="Strong">
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
							</optgroup>
					</select></td>
				</tr>
				<tr>
					<td>Special Characters (@#$!):</td>
					<td><input type="checkbox" name="splchar" value="splchar"></td>
				</tr>
				<tr>
					<td>Lower Case Alphabets(a-z):</td>
					<td><input type="checkbox" name="lower" value="lower"></td>
				</tr>
				<tr>
					<td>Upper Case Alphabets(A-Z):</td>
					<td><input type="checkbox" name="upper" value="upper"></td>
				</tr>
				<tr>
					<td>Numerics (0-9):</td>
					<td><input type="checkbox" name="num" value="num"></td>
				</tr>
				<tr>
					<td>Please Click Below Button To Generate a Password.</td>
					<td></td>
				</tr>
				<tr>
					<td><input type="submit" value="Generate Password"></td>
					<td><a href="/HandyUtility"><input type="button"
							value="Back"></a></td>
				</tr>
			</table>
		</form>
		<div>
			Your Suggested Password is: <input type="text" class="output" value="${strPassword}">
			<input type="button" value="Copy">
		</div>
	</div>
</body>
</html>