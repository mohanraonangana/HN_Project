<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
<html> 
<head> 

 
 <style>
    /* Styles for the navbar */
    .navbar-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: black;
      padding: 10px 20px;
    }

    h1 {
      color: #ffffff; /* Header text color (white) */
      margin: 0;
    }

    ul.navbar {
      list-style-type: none;
      margin: 0;
      padding: 0;
      display: flex;
      gap: 20px; /* Adjust the spacing between navbar links */
    }

    ul.navbar li {
      background-color: #ff6b81; /* Button background color (pink) */
      border-radius: 5px;
    }

    ul.navbar li a {
      display: block;
      color: #ffffff; /* Navbar link text color (white) */
      text-align: center;
      text-decoration: none;
      padding: 10px 16px;
    }

    ul.navbar li a:hover {
      background-color: #ff4961; /* Background color on hover (darker pink) */
    }

    .navbar-icon {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 24px; /* Adjust the icon size as needed */
      color: #ffffff; /* Icon color (white) */
    }
    
    /* Styles for the card */
    .card {
      background-color: pink; /* Card background color (white) */
      border-radius: 5px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* Add shadow for card effect */
      padding: 20px;
      margin: 20px auto;
      max-width: 400px; /* Adjust the maximum width of the card as needed */
    }

    .card-item {
      margin-bottom: 10px;
    }
  </style>
</head> 
<body> 
<!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="adindex.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>H&N</h2>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="adminhome.jsp" class="nav-item nav-link active">Home</a>
                    <a href="viewallcus" class="nav-item nav-link">View Customers</a>
                    <a href="viewallmen" class="nav-item nav-link">View Mentors</a>
                   
                <a href="index.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Log out<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->

<div class="card">
  <div class="card-item">ID : ${men.id}</div>
  <div class="card-item">Name : ${men.name}</div>
  <div class="card-item">DateOfBirth : ${men.dateofbirth}</div>
   <div class="card-item">Email : ${men.email}</div>
   <div class="card-item">Occupation : ${men.occupation}</div>
    <div class="card-item">Education : ${men.education}</div>
    <div class="card-item">Location : ${cus.location}</div>
  <div class="card-item">Experience : ${men.experience}</div>
  <div class="card-item">Domain : ${men.domain}</div>
 
</div>

</body>
</html>
