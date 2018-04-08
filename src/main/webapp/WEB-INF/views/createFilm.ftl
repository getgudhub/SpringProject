
<#import "templates/spring.ftl" as spring />
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<meta charset="UTF-8">
		<title>Naujo filmo sukurimas</title>
	
	<style>
			.container{
				background-color:white;
				text-align: center;
				height:100%;
			}
			.container-fluid{
				height:100%;
				background: linear-gradient(white, #00BFFF);
			}
			html, body{
				height:100%;
			}
			form{
				margin-top:30px;
			}
			.button{ 
				margin-top:30px;
				display: block;
				text-align: center;
			}
			.duom{
				margin-top:50px;
			}
	</style>
	</head>
	<body>
	<div class="container-fluid">
		<div class="container">
			<@spring.bind "film"/>
			<#if noErrors??>
				<div class="duom">
					Ivesti duomenys:<p><br>
					Pavadinimas:		${film.pavadinimas}<br>
					Zanras:				${film.zanras}<br>
					Rezisierius:		${film.rezisierius}<br>
					Aktoriai:			${film.aktoriai}<br>
						<#setting date_format="yyyy-MM-dd">
					Kinuose nuo:		${film.nuoKada?date}<br>
					Trukme:				${film.trukme}<br>
				</div>
			<#else>
				<form name="film" action="/CinemaFilms/addFilm" method="post">
					Pavadinimas:<br>
					<@spring.formInput "film.pavadinimas" /><br>
					<@spring.showErrors "<br>" /><p>
					Zanras:<br>
					<@spring.formInput "film.zanras" /><br>
					<@spring.showErrors "<br>" /><p>
					Rezisierius:<br>
					<@spring.formInput "film.rezisierius" /><br>
					<@spring.showErrors "<br>" /><p>
					Aktoriai:<br>
					<@spring.formInput "film.aktoriai" /><br>
					<@spring.showErrors "<br>" /><p>
					Kinuose nuo:<br>
					<#setting date_format="yyyy-MM-dd">
					<@spring.formInput "film.nuoKada"/><br>
					<@spring.showErrors "<br>" /><p>
					Trukme:<br>
					<@spring.formInput "film.trukme" /><br>
					<@spring.showErrors "<br>" /><p>
					<input type="submit" value="Prideti">
				</form>
			</#if>
			<div>
				<a type="button" href="/CinemaFilms" class="button">Grizti</a>
			</div>
		</div>
	</div>
	</body>
</html>