<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <!DOCTYPE html>
    <html lang="en">
       <style>
  .container {
  display: flex;
  align-items: center;
  justify-content: center
}

img {
  max-width: 100%;
  max-height:100%;
}

.text {
  font-size: 20px;
  padding-left: 20px;
}
  </style>
    
    <head>
        <meta charset="utf-8">
        <title>H&N</title>
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
    </head>
    
    <body>
        
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="cusindex.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>H&N</h2>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="customerhome.jsp" class="nav-item nav-link active">Home</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">About Us</a>
                        <div class="dropdown-menu fade-down m-0">
                            <a href="custeam.jsp" class="dropdown-item">Our Team</a>
                            <a href="cusaboutus.jsp" class="dropdown-item">About Our Page</a>
                           
                        </div>
                    </div>
                    <a href="cusonlinestore.jsp" class="nav-item nav-link">Online Store</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Specialities</a>
                        <div class="dropdown-menu fade-down m-0">
                            <a href="cusnd.jsp" class="dropdown-item">Nutrition & Dietetics</a>
                             <a href="cusslotbooking.jsp" class="dropdown-item">Appointment</a>
                            
                        </div>
                    </div>
                    <a href="cuscontact.jsp" class="nav-item nav-link">Contact</a>
                   
                <a href="index.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->
        
         <!-- Nutrition and Dieteies page -->
        <br><br>
        <center><h1>Fitness Training</h1></center>
        
       <h2>Yoga: A Journey to Wellness</h2>
       <br>
        <div class="container">
      <div class="image">
        <img src="img/yoga.jpg">
      </div>
      <div class="text">
        <p>Yoga is more than just a form of exercise; it's a holistic approach to well-being that has been practiced for thousands of years. Originating in ancient India, this ancient discipline combines physical postures, breath control, meditation, and philosophy to create a balanced and healthy lifestyle.</p>
      </div>
    </div>
     <br>
       <h2>Home Workouts: Fitness at Your Fingertips</h2>
       <br>
        <div class="container">
      <div class="image">
        <img src="img/homeworkouts.jpg">
      </div>
      <div class="text">
        <p>In today's busy world, maintaining a regular fitness routine can be challenging. Home workouts have become a popular and convenient solution, allowing you to achieve your fitness goals without the need for a gym or specialized equipment.</p>
      	<p>1.	Convenience: Home workouts provide the convenience of exercising on your schedule without the need to commute to a gym.</p>

		<p>2.	Diverse Workout Options: You can explore a wide range of workout types, from bodyweight exercises to yoga and HIIT, to keep your routine interesting.</p>
      	
      </div>
    </div>
    <br>
       <h2>Zumba Dance: The Joy of Fitness</h2>
       <br>
        <div class="container">
      <div class="image">
        <img src="img/zumbadance.jpg">
      </div>
      <div class="text">
        <p>Zumba is a high-energy workout that combines dance, music, and fitness. Discover the history and benefits of Zumba, explore its diverse dance styles, and learn how it welcomes all ages and levels. Get started with Zumba classes, and make your fitness journey a joyful dance party</p>
      	<p>1.Dance Fitness Fusion: Zumba is a dynamic fitness program that blends dance and aerobic elements with music from various genres, creating a unique and enjoyable workout.</p>
      </div>
    </div>
        
        </body>
        </html>
        