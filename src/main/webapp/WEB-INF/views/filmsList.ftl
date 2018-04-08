<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filmai</title>
</head>
<body>


<table>
	<tr>
		<th>Id</th>
		<th>Pavadinimas</th>
		<th>Zanras</th>
		<th>Rezisierius</th>
		<th>Vaidina</th>
		<th>Kinuose nuo</th>
		<th>Trukme</th>
	</tr>
	<#list films as film>
		<tr>
			<td><a href="/CinemaFilms/film/${film.id}">${film.id}</a></td>
			<td>${film.pavadinimas}</td>
			<td>${film.zanras}</td>
			<td>${film.rezisierius}</td>
			<td>${film.aktoriai}</td>
			<td>${film.nuoKada}</td>
			<td>${film.trukme}</td>
			<td><a href="/CinemaFilms/delete/${film.id}">Trinti</a></td>
			<td><a href="/CinemaFilms/update/${film.id}">Redaguoti</a></td>
		</tr>
	</#list>
</table>
<a href="/CinemaFilms/addFilm">Prideti filma</a>
</body>
</html>