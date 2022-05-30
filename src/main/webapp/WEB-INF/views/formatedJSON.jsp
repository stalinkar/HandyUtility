<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Format JSON</title>
<style type="text/css">
textarea {
	margin: auto;
	font-family: sans-serif;
	font-size: 20px;
}

.tabcontent {
	width: 90% padding: 6px 12px;
	border: 2px solid #ccc;
	text-align: center;
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

.text-center {
	text-align: center;
}
</style>
</head>
<body>

	<div id="json" class="tabcontent">
		<table>
			<form action="/HandyUtility/FormatJSONServlet"
				method="post">
			<thead>
				<tr>
					<th><span class="label text-center">Please enter JSON
							need to be formated</span></th>
					<th><span class="label text-center">Formated JSON</span></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><textarea class="textarea" id="_strJSON" name="strJSON"
							data-gramm_editor="false" spellcheck="false" autofocus=""
							placeholder="{}" rows="25" cols="70">${strJSON}</textarea></td>

					<td><textarea class="textarea" id="_strFormatedJSON" name="strFormatedJSON"
							autofocus="" placeholder="{}" rows="25" cols="70">${strFormatedJSON}</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><div class="text-center">
							<input type="submit" value="Parse/Format JSON"> 
							<a href="/HandyUtility"><input type="button"
								value="Back"></a>
						</div></td>
				</tr>
			</tbody>
			</form>
		</table>
	</div>
</body>
</html>