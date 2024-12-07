<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <title>H&N -Admin</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
    
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
    
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
    
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    
        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    
        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/login.css" rel="stylesheet">
</head>

<style>
    /* Styles for the navbar */
    .navbar-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color:black;
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
    
    /* Styles for the table */
    table {
      width: 80%; /* Set the table width to 80% of the container */
      margin: 20px auto; /* Center the table horizontally */
      border-collapse: collapse;
    }

    table, th, td {
      border: 1px solid black;
    }

    th, td {
      padding: 10px;
      text-align: center;
    }

    th {
      background-color: black;
      color: white;
    }

    /* Style for the "View" button */
    .view-button {
      background-color: #3498db; /* Button background color (blue) */
      color: white;
      border: none;
      border-radius: 5px;
      padding: 5px 10px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 2px 2px;
      cursor: pointer;
    }

    .view-button:hover {
      background-color: #2772a7; /* Background color on hover (darker blue) */
    }
  </style>
 <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="adminhome.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
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
                     <a href="addingmentor.jsp" class="nav-item nav-link">Add Mentor</a>
                   
                <a href="index.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Log out<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->

<br> 
<h3 align="center"><u>View All Customers</u></h3> 
<table align="center" border="2">  
<tr bgcolor="black" style="color:white"> 
  <th>ID</th> 
  <th>NAME</th> 
  <th>EMAIL ID</th>
  <th>CONTACT NO</th>
  <th>LOCATION</th>   
  <th>ACTION</th>
</tr> 
<c:forEach items="${cusdata}"  var="cus"> 
<tr> 
  <td><c:out value="${cus.id}" /></td> 
  <td><c:out value="${cus.name}" /></td> 
  <td><c:out value="${cus.email}" /></td> 
  <td><c:out value="${cus.contact}" /></td> 
  <td><c:out value="${cus.location}" /></td> 
  <td>
    <a href='<c:url value="view?id=${cus.id}"></c:url>' class="view-button">View</a>
  </td>
</tr> 
</c:forEach> 
</table> 

</body>
</html>