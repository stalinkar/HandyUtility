<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Encode/Decode String</title>
<style type="text/css">
.tabcontent {
	width: 90% padding: 6px 12px;
	border: 2px solid #ccc;
}

textarea {
	margin: auto;
	font-family: sans-serif;
	font-size: 15px;
}

li {
	list-style: none;
}

.output{
	
}
</style>
</head>
<body>
	<div id="encoderDecoder" class="tabcontent">
		<form action="/HandyUtility/EncodeDecodeServlet" method="post">
			<textarea class="textarea" id="_strEncodeDecode"
				name="strEncodeDecode" data-gramm_editor="false" spellcheck="false"
				autofocus=""
				placeholder="Please enter the text need to be Encoded/Decoded"
				rows="15" cols="70">${strText}</textarea>
			<div>
				Category
				<ul>
					<li><input type="radio" id="category-id-1" name="category"
						value="Encode" required><label>Encode</label></input></li>
					<li><input type="radio" id="category-id-2" name="category"
						value="Decode"><label>Decode</label></li>
				</ul>
			</div>
			<div>
				Sub-category
				<ul>
					<li><input type="radio" id="subcategory-id-1"
						name="subcategory" value="Base64" required><label>Base64</label></li>
					<li><input type="radio" id="subcategory-id-2"
						name="subcategory" value="Base64Url"><label>Base64Url</label></li>
					<li><input type="radio" id="subcategory-id-3"
						name="subcategory" value="URL"><label>URL</label></li>
				</ul>
			</div>
			<input type="submit" value="Submit"> <a href="/HandyUtility"><input
				type="button" value="Back"></a>
		</form>
	</div>
	<div>
		<span class="output">${strEncodeDecode}</span>
	</div>
</body>
</html>