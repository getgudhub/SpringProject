<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<style>
	.container-fluid{
		background: linear-gradient(white, #00BFFF);
	}
	#grad a{	
		color:black;
		font-style:bold;
	}
	#grad{
		background: linear-gradient(hsl(120,60%,70%), white);
	}
	.navbar a:hover{
		background: linear-gradient(white, hsl(120,60%,70%));
	}
	#zanrai:hover{
		background: linear-gradient(white, hsl(120,60%,70%));
	}
	#zanrai{
		border-radius: 0px;
		-webkit-appearance:none;
		-moz-appearance: none;
		padding-left:10px;
		margin:-15px;
		height:50px;
		background: linear-gradient(white, #00BFFF);
	}
	#firstOpt a{
		padding-left:25px;
	}
	#mainOpt{
		text-shadow: 1px 2px #e0f7fa;
		font-family: "Times New Roman", Times, serif;
		font-style: oblique;
		padding-left:25px;
	}
	
</style>
<nav class="navbar navbar-default" id="grad">
	<div class="container-fluid">
		<div class="navbar-header" >
			<a class="navbar-brand" id="mainOpt" href="http://localhost:8080/CinemaFilms/">Cinema Films</a>
		</div>
		<ul class="nav navbar-nav navbar-left">
			<li class="floating-box" id="firstOpt"><a href="/CinemaFilms/Naujausi">Naujausi</a></li>
			<li class="floating-box"><a>
				<select id="zanrai" onchange="location = this.value;">
					  <option value="zanrai">Zanrai</option>
  					  <option value="/CinemaFilms/Komedija">Komedija</option>
					  <option value="/CinemaFilms/Dokumentika">Dokumentika</option>
					  <option value="/CinemaFilms/Animacija">Animacija</option>
					  <option value="/CinemaFilms/Drama">Drama</option>
					  <option value="/CinemaFilms/Fantastinis">Fantastinis</option>
					  <option value="/CinemaFilms/Siaubo">Siaubo</option>
					  <option value="/CinemaFilms/Istorinis">Istorinis</option>
					  <option value="/CinemaFilms/Lietuviskas">Lietuviskas</option>
					  <option value="/CinemaFilms/Veiksmo">Veiksmo</option>
				</select></a>
			</li>
			<li class="floating-box"><a href="/CinemaFilms/">Naujienos</a></li>
		</ul>
	</div>
</nav>