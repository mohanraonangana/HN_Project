<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <!DOCTYPE html>
    <html lang="en">
    
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
                     <a href="cusmentors.jsp" class="nav-item nav-link">our Mentors</a>
                    <a href="cuscontact.jsp" class="nav-item nav-link">Contact</a>
                   
                <a href="index.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->

         <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Nutritionist</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                           
                            <li class="breadcrumb-item text-white active" aria-current="page">Our Team of Doctors</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
        
    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Mentors of Nutrition</h6>
                <h1 class="mb-5">Experienced Doctors</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d4.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Ms. Manjari Chandra</h5>
                            <small>Nutrition And Dietetics, Dietetics</small>
                            <h6> Doctor available time</h6>
                             <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                           
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d5.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                           <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Dr. Matthew Nagra</h5>
                            <small>Endocrinology & Diabetes, Nutrition And Dietetics, Dietetics</small>
                           
                               <h6> Doctor available time</h6>
                                <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                             
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d6.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Dr. Raghu D K</h5>
                            <small>Gastroenterologist Dietetics, Nutrition And Dietetics</small>
                            
                              <h6> Doctor available time</h6>
                               <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                             
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d7.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Dr. Roshan Agarwala</h5>
                            <small>Gastroenterologist</small>
                              <h6> Doctor available time</h6>
                               <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                            
                        </div>
                    </div>
                </div>
               
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d8.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Dr. Bhuvan Chugh</h5>
                            <small>Medical Oncologist</small>
                              <h6> Doctor available time</h6>
                               <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                         
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d3.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Dr. Aastha Khungar</h5>
                            <small>Nutrition And Dietetics</small>
                                     <h6> Doctor available time</h6>
                                      <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                            

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d2.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                           <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Dt. Gurbrinder Kaur</h5>
                            <small>Nutrition And Dietetics</small>                        
                              <h6> Doctor available time</h6>
                               <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/d1.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
    <a href="cusslotbooking.jsp" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 30px;">Slot Booking</a>
</div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">ARPITA B. ACHARYA</h5>
                            <small>Endocrinology & Diabetes, Nutrition And Dietetics</small>
                              <h6> Doctor available time</h6>
                               <h7>Mon-Sat</h7>
                            <p>9.30am to 5pm</p>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- Team End -->