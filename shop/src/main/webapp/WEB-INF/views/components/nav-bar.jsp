<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-inverse navbar-fixed-top" id="myNavbar">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://velecti.com">VE</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<c:url value="/new" />" >What's New</a></li>
        <li><a href="<c:url value="/all-products" />" >All Products</a></li>
        <!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">CDs</a></li>
            <li><a href="#">Art Books</a></li>
            <li><a href="#">Games</a></li>
            <li><a href="#">Collaborated Works</a></li>
            <li><a href="#">Others</a></li>
          </ul>
        </li> -->
      </ul>

      <ul class="nav navbar-nav navbar-right">
      
      	<sec:authorize access="!hasRole('ROLE_USER')">
					<li><a href="<c:url value="/login" />">Sign In</a></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('ROLE_USER')">
	        <li><a href="<c:url value="/user/cart" />">Cart</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">My Orders</a></li>
	            <li><a href="#">Settings</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">Log out</a></li>
	          </ul>
	        </li>
				</sec:authorize>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>