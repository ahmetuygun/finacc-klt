<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Anmeldeformular - Kennenlerntagaufgabe</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

			$.ajax({
				type : 'GET',
				headers : {
					Accept : "application/json; charset=utf-8",
					"Content-Type" : "application/json; charset=utf-8"
				},
				url : "http://localhost:8080/klt/rest/rest/getAll",
				success : function(result) {
					var s = '';
					for(var i = 0; i < result.length; i++) {
						s += 'Name: ' + result[i].name + ' | ';
						s += 'Last Name: ' + result[i].lastname + '| ';
						s += 'Age: ' + result[i].age + '<br>';

						s += '----------------------<br>';
					}
					$('#result').html(s);
				}
			});
		

	});
</script>
</head>
<body>
		<h3>All Person</h3>
	<form>
		
		<span id="result"></span>
	</form>
</body>
</html>
