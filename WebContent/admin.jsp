<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<style>

div.scroll {

height: 400px;

overflow-y: scroll;

}

* {box-sizing: border-box;}

.wrapper {

margin: 0 auto;

overflow-x: scroll;

}

.wrapper > div {

border: 2px solid rgb(90,90,90);

border-radius: 2px;

padding: 1em;

display: inline-block;

}

.one{

width: 33%;

}

.two{

width: 33%;

}

.three{

width: 33%;

}

.four{

width: 33%;

}

.five{

width: 33%;

}

.six{

width: 33%;

}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Admin Page</title>

<link

href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"

rel="stylesheet" />

<link rel="stylesheet"

href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>

<nav class="navbar navbar-default navbar-static-top">

<div class="container-fluid">

<!-- Brand and toggle get grouped for better mobile display -->

<div class="navbar-header">

<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">

<span class="sr-only">Toggle navigation</span>

<span class="icon-bar"></span>

<span class="icon-bar"></span>

<span clasbs="icon-bar"></span>

</button>

<a class="navbar-brand" href="#">

Admin Page

</a>

</div>

<!-- Collect the nav links, forms, and other content for toggling -->

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

<!-- <form class="navbar-form navbar-left" method="GET" role="search">

<div class="form-group">

<input type="text" name="q" class="form-control" placeholder="Search">

</div>

<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>

</form> -->

<ul class="nav navbar-nav navbar-right">

<li><a href="index.jsp">Logout</a></li>

<li class="dropdown ">

<!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">

Account

<span class="caret"></span></a>

<ul class="dropdown-menu" role="menu">

<li class="dropdown-header">SETTINGS</li>

<li class=""><a href="#">Other Link</a></li>

<li class=""><a href="#">Other Link</a></li>

<li class=""><a href="#">Other Link</a></li>

<li class="divider"></li>

<li><a href="#">Logout</a></li>

</ul>

</li> -->

</ul>

</div><!-- /.navbar-collapse -->

</div><!-- /.container-fluid -->

</nav>

<div class="container-fluid main-container">

<!--

<div class="col-md-2 sidebar">

<ul class="nav nav-pills nav-stacked">

<li class="active"><a href="#">Videos</a></li>

<li><a href="#">Send Warning</a></li>

</ul>

</div> -->

<div class="col-md-10 content">

<div class="panel panel-default">

<div class="panel-heading">

Uploaded Videos

</div>

<div class="panel-body">

Here are the currently uploaded videos on the website. You may delete videos that are inappropriate or spam here.

<br><br/>

<div class="wrapper">

<div class="one">Video 1</div>

<div class="two">Video 2</div>

<div class="three">Video 3</div>

<div class="four">Video 4</div>

<div class="five">Video 5</div>

<div class="six">Video 6</div>

</div>

</div>

</div>

</div>

<div class="col-md-10 content">

<div class="panel panel-default">

<div class="panel-heading">

Send Warning

</div>

<div class="panel-body">

Here are you may send a warning to a user who is breaking the rules.

<br><br/>

<div class="scroll">

<ul>

<li>John Doe Profile ID: 354355 Warn Administrative Action</li>

<li>Mike Doe Profile ID: 999933 Warn Administrative Action</li>

<li>Jane Doe Profile ID: 343243 Warn Administrative Action</li>

</ul>

</div>

</div>

</div>

</div>

<!-- Copyright from example put into comments; let me know if we need it

<footer class="pull-left footer">

<p class="col-md-12">

<hr class="divider">

Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a>

</p> -->

</footer>

</div>

</body>

</html>

