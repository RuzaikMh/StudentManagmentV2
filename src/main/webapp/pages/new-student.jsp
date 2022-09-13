<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SLIIT Student Management Tool</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/calander.css" rel="stylesheet">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-start" href="/">
                <div class="sidebar-brand-icon">
                    <i><img src="img/SLIIT_Logo_Crest.png" width="25px" height="25px"></i>
                    <div class="sidebar-brand-text mx-3">SLIIT</div>
                </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="/">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Functions
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                    aria-controls="collapseTwo">
                    <i class="fas fa-user-plus"></i>
                    <span>Student Registration</span>
                </a>
                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="new-student">Register</a>
                        <a class="collapse-item active" href="view-student">View</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-chalkboard-teacher"></i>
                    <span>Course Creation</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="new-course">New Course</a>
                        <a class="collapse-item" href="view-course">View</a>
                    </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-hand-holding-usd"></i>
                    <span>Student Fees</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="new-fee">New Fee</a>
                        <a class="collapse-item" href="view-fee">View</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAttendance"
                    aria-expanded="true" aria-controls="collapseAttendance">
                    <i class="fas fa-clipboard-list"></i>
                    <span>Student Attendance</span>
                </a>
                <div id="collapseAttendance" class="collapse" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="new-attendance">Mark Attendance</a>
                        <a class="collapse-item" href="view-attendance">View</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow mb-nav">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <a class="navbar-brand d-sm-none-max"><i class="fas fa-user-plus"></i> Register Student </a>

                    <a href="view-student" class="btn btn-primary ml-auto btn-icon-split">
                        <span class="icon text-white-50">
                            <i class="fas fa-arrow-right"></i>
                        </span>
                        <span class="text">View Students</span>
                    </a>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4 d-txt-none-s">
                        <h1 class="h3 mb-0 text-gray-800">Register Student</h1>
                    </div>

                    <div class="row">

                        <div class="col-lg-12">

                            <!-- Default Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Add New Student</h6>
                                </div>
                                <div class="card-body">
                                    <form action="add-new-student" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="inputStudentName">Student Name</label>
                                                <input name="studentName" type="text" class="form-control" id="inputStudentName"
                                                    placeholder="Name" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="registrationNumber">Registration Number</label>
                                                <input name="registrationNumber" class="form-control" id="registrationNumber"
                                                    placeholder="IT17117760" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="course">Course</label>
                                                <select name="course" id="course" class="form-control" required>
	                                               	<option value="">Select Course</option>
	                                               	<c:forEach items="${courseList}" var="courses">
	                                                    <option value="${courses.courseName}">${courses.courseName}</option>
	                                                </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="nicNo">NIC No</label>
                                                <input name="nic" type="text" class="form-control" id="nicNo" placeholder="NIC No" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="phoneNumber">Phone Number</label>
                                                <input name="phoneNumber" type="number" class="form-control" id="phoneNumber"
                                                    placeholder="Phone Number" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="email">Email</label>
                                                <input name="email" type="email" class="form-control" id="email" placeholder="Email" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputAddress">Address</label>
                                            <input name="address" type="text" class="form-control" id="inputAddress"
                                                placeholder="1234 Main St" required>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-4">
                                                <label for="province">Province</label>
                                                <select name="province" id="province" class="form-control" required>
                                                    <option value="">Select Province</option>
                                                    <option value="Western Province">Western Province</option>
                                                    <option value="Central Province">Central Province</option>
                                                    <option value="Southern Province">Southern Province</option>
                                                    <option value="Uva Province">Uva Province</option>
                                                    <option value="Sabaragamuwa Province">Sabaragamuwa Province</option>
                                                    <option value="North Western Province">North Western Province</option>
                                                    <option value="North Central Province">North Central Province</option>
                                                    <option value="Northern Province">Northern Province</option>
                                                    <option value="Eastern Province">Eastern Province</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="district">District</label>
                                                <select name="district" id="district" class="form-control" required>
                                                    <option value="">Select District</option>
                                                    <option value="Colombo">Colombo</option>
                                                    <option value="Gampaha">Gampaha</option>
                                                    <option value="Kalutara">Kalutara</option>
                                                    <option value="Kandy">Kandy</option>
                                                    <option value="Matale">Matale</option>
                                                    <option value="Nuwara Eliya">Nuwara Eliya</option>
                                                    <option value="Galle">Galle</option>
                                                    <option value="Matara">Matara</option>
                                                    <option value="Hambantota">Hambantota</option>
                                                    <option value="Jaffna">Jaffna</option>
                                                    <option value="Kilinochchi">Kilinochchi</option>
                                                    <option value="Mannar">Mannar</option>
                                                    <option value="Vavuniya">Vavuniya</option>
                                                    <option value="Mullaitivu">Mullaitivu</option>
                                                    <option value="Batticaloa">Batticaloa</option>
                                                    <option value="Ampara">Ampara</option>
                                                    <option value="Trincomalee">Trincomalee</option>
                                                    <option value="Kurunegala">Kurunegala</option>
                                                    <option value="Puttalam">Puttalam</option>
                                                    <option value="Anuradhapura">Anuradhapura</option>
                                                    <option value="Polonnaruwa">Polonnaruwa</option>
                                                    <option value="Badulla">Badulla</option>
                                                    <option value="Moneragala">Moneragala</option>
                                                    <option value="Ratnapura">Ratnapura</option>
                                                    <option value="Kegalle">Kegalle</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="date">Joined Date</label>
                                                <input name="date" type="date" class="form-control" id="date" required>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Register</button>
                                    </form>
                                </div>
                            </div>

                        </div>

                    </div>
                    
                    <div class="row">
                   	 	<div class="col-lg-12" id="myalert">
                   	 		
                   	 	</div>
                    </div>
                    
                    <textarea id="successMsg" rows="1" cols="1" hidden>${alertMsg}</textarea>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Ruzaik Ahamed 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    
    <!-- MyCustom scripts -->
	<script src="js/custom.js"></script>
	
</body>

</html>