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

<div class="card">
  <div class="card-item">ID : ${cus_id.id}</div>
  <div class="card-item">Name : ${cus.name}</div>
   <div class="card-item">Email : ${cus.email}</div>
   <div class="card-item">Contact No : ${cus.contact}</div>
    <div class="card-item">DateofBirth : ${cus.dateofbirth}</div>
  <div class="card-item">Gender : ${cus.gender}</div>
  <div class="card-item">Location : ${cus.location}</div>
</div>

</body>
</html>
