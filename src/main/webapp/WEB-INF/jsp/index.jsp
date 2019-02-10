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
	function validate() {
		var a = document.getElementById("exampleInputLastname");
		var b = document.getElementById("exampleInputFirstname");
		var c = document.getElementById("exampleInputLastname").value;
		var d = document.getElementById("exampleInputFirstname").value;
		
		var age = document.getElementById("exampleInputAge");
		var ageValue = document.getElementById("exampleInputAge").value;
		
		var av = true;
		var bv = true;
		var ageValid = true;
	
		document.getElementById("ck1").innerHTML = "";
		document.getElementById("ck2").innerHTML = "";
		document.getElementById("ck3").innerHTML = "";

		if (a.value.length <= 0) {
			av = false;
			document.getElementById("ck1").innerHTML = "Der Nachname konnte nicht leer sein ";
		} else {
			if (!isNaN(c)) {
				av = false;
				document.getElementById("ck1").innerHTML = "falsches Format, nur Text";
			}
		}
		
		if (b.value.length <= 0) {
			bv = false;
			document.getElementById("ck2").innerHTML = "Der Vorname konnte nicht leer sein ";
		} else {
			if (!isNaN(d)) {
				bv = false;
				document.getElementById("ck2").innerHTML = "falsches Format, nur Text";
			}
		}
		
		if (age.value.length <= 0) {
			bv = false;
			document.getElementById("ck3").innerHTML = "Das Alter konnte nicht leer sein";
		} else {
			if (isNaN(ageValue)) {
				bv = false;
				document.getElementById("ck3").innerHTML = "falsches Format, nur Number";
			}
		}
	
		return av && bv && ageValid;
	};
	
	
	function addUserForm() {
		var last = document.getElementById("exampleInputLastname").value;
		var first = document.getElementById("exampleInputFirstname").value;
		var age = document.getElementById("exampleInputAge").value;


		try {
			
			   jQuery.ajax({
					url : "http://localhost:8080/klt/rest/rest/age/" + age,
			        dataType: 'json',
			        type    : 'GET'
			    }).done(function(a) {

			    	if(a.name=="OK" || a.name=="funny" ){
			    	jQuery.ajax({
						   url : "http://localhost:8080/klt/rest/rest/save/"+first+"/"+ last+ "/"+ age,
					        dataType: 'json',
					        type    : 'GET'
					    }).done(function(a) {
					    }).fail(function(xhr, status, error) {
					    });
			    	}
			    	else{

			    	}
			    	
			    }).fail(function(xhr, status, error) {


			    });

		

		} catch (e) {
			alert(e);
		}
	}
</script>

</head>
<body>
	<div class="container">
		<h1>${formName}</h1>
		<form action="process" method="post"
			onsubmit="return validate();">
			<div class="form-group">
				<label for="exampleInputLastname">Nachname</label> 
				<input
					type="text" name="lastName" class="form-control"
					id="exampleInputLastname" placeholder="Nachname">
				<p id="ck1"></p>
			</div>
			<div class="form-group">
				<label for="exampleInputFirstname">Vorname</label> 
				<input
					type="text" name="firstName" class="form-control"
					id="exampleInputFirstname" placeholder="Vorname">
				<p id="ck2"></p>
			</div>
				<div class="form-group">
				<label for="exampleInputAge">Alter</label> 
				<input
					type="text" name="age" class="form-control"
					id="exampleInputAge" placeholder="Alter">
				<p id="ck3"></p>
			</div>
			<button type="submit" class="btn btn-default"  onclick="addUserForm()" >Anmelden!</button>
			
			<p id="ck5"></p>
			
			
			
			
		</form>
	</div>
</body>
</html>
