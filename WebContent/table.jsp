<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>Marvel Characters</title>
    <meta name="description" content="This was generated by the Codeply editor and responsive design playground." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">

	<!-- Hosted Bootstrap 4 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    
    <!-- site specific styling -->
    <link rel="stylesheet" href="./css/styles.css" />
    
    <!-- font awesome -->
    <link href="./font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- jQuery DataTable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
    
</head>
<body class="bg-faded">
 
<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <button class="navbar-toggler hidden-md-up pull-right" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
            ☰
        </button>

        <a class="navbar-brand page-scroll" href="index.jsp">Marvel Super Characters</a>

        <div class="collapse navbar-toggleable-sm" id="collapsingNavbar">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.jsp#one">Search Tool</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="add.do">Add Character</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="GetAllCharactersData.do?">Get All</a>
                </li>
            </ul>

            <ul class="nav navbar-nav pull-xs-right">
                <li class="nav-item">
                    <a class="nav-link page-scroll" data-toggle="modal" href="#aboutModal">About</a>
                </li>
            </ul>
        </div>
    </div><!-- .container -->
</nav>

<c:choose>
	<c:when test="${!empty characters}">

	<section id="one">
		<div class="container wow fadeInUp">
			<div class="col-lg-12">
				<table id="allCharacters" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>Index</th>
							<th>Marvel ID</th>
							<th>Name</th>
							<th>Alias</th>
							<th>Affiliation</th>
							<th>Description</th>
							<th>Image URL</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Index</th>
							<th>Marvel ID</th>
							<th>Name</th>
							<th>Alias</th>
							<th>Affiliation</th>
							<th>Description</th>
							<th>Image URL</th>
						</tr>
					</tfoot>
					<tbody>
					<c:forEach var="character" items="${characters}">
						<tr>
							<td>${character.id}</td>
							<td>${character.marvelId}</td>
							<td><a href="GetCharacterData.do?characterName=${character.name}">${character.name}</a></td>
							<td>${character.alias}</td>
							<td>${character.affiliation}</td>
							<td>${character.desc}</td>
							<td>${character.image}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
		</div><!-- container -->
	</section>
	</c:when>
	<c:otherwise>	
	</c:otherwise>
</c:choose>

<footer>
	<div class="row">
		<div class="col-lg-12">
			<p class="text-xs-center"><a href="http://www.chrisriouxdevelopment.com">Chris Rioux Development</a> &copy; 2016</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3" style="text-align:center">
			<a href="https://twitter.com/chrisrioux_"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://www.linkedin.com/in/chris-rioux-b500569a"><i class="fa fa-linkedin fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://github.com/chrisrioux2"><i class="fa fa-github fa-2x"></i></a>
			</br>
      	</div>
	</div>
</footer>

<!-- Modals -->
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
            <div class="card card-block text-xs-center">
		            <div class="card card-block text-xs-center">
		                <h4 class="card-header">Chris Rioux</h4>
						<p class="text-xs-center">Full Stack Java Web Development. Visit My<a href="http://www.chrisriouxdevelopment.com"> Site!</p> 
						<a href="https://twitter.com/chrisrioux_" class="btn btn-primary-outline"><i class="fa fa-twitter fa-fw"></i>&nbsp;&nbsp;Twitter</a>
	                    <a href="https://github.com/chrisrioux2" class="btn btn-primary-outline"><i class="fa fa-github-alt fa-fw"></i>&nbsp;&nbsp;Github</a>
	                    <a href="https://www.linkedin.com/in/chris-rioux-b500569a" class="btn btn-primary-outline"><i class="fa fa-linkedin fa-fw"></i>&nbsp;&nbsp;Linkedin</a>
						<p class="text-xs-center"> </p>
					<div class="card-footer text-muted">
					<img class="card-img-bottom" src="./img/smallestPic.jpg" alt="Card image cap">
					<p class="text-xs-center"> </p>
					<button class="btn btn-primary center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
		            </div>
		       	</div>
            </div>
        	</div>
    	</div>
	</div>
</div><!-- #aboutModal -->

    <!--scripts loaded here-->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    
    <script src="js/scripts.js"></script>
    
    <!-- jQuery DataTable -->
    <script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    
    <script>
    	$(document).ready(function() {
        	$('#allCharacters').DataTable();
    	} );
    </script>
    
  </body>
</html>