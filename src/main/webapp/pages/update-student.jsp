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

    <title>SLIIT</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-start" href="index.html">
                <div class="sidebar-brand-icon">
                    <i><img src="img/SLIIT_Logo_Crest.png" width="25px" height="25px"></i>
                    <div class="sidebar-brand-text mx-3">SLIIT</div>
                </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.html">
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
                        <a class="collapse-item" href="new-student.html">Register</a>
                        <a class="collapse-item active" href="cards.html">View</a>
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
                        <a class="collapse-item" href="new-course.html">New Course</a>
                        <a class="collapse-item" href="utilities-border.html">View</a>
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
                        <a class="collapse-item" href="new-fee.html">New Fee</a>
                        <a class="collapse-item" href="blank.html">View</a>
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
                        <a class="collapse-item" href="new-attendance.html">Mark Attendance</a>
                        <a class="collapse-item" href="blank.html">View</a>
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

                    <a class="navbar-brand d-sm-none-max"><i class="fas fa-user-plus"></i> Update Student </a>

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
                        <h1 class="h3 mb-0 text-gray-800">Update Student</h1>
                    </div>

                    <div class="row">

                        <div class="col-lg-12">

                            <!-- Default Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">New Student Details</h6>
                                </div>
                                <div class="card-body">
                                    <form action="update-student" method="post">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="inputStudentName">Student Name</label>
                                                <input name="studentName" value="${student.studentName}" type="text" class="form-control" id="inputStudentName"
                                                    placeholder="Name" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="registrationNumber">Registration Number</label>
                                                <input name="registrationNumber" value="${student.registrationNumber}" class="form-control" id="registrationNumber"
                                                    placeholder="IT17117760" required readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="course">Course</label>
                                                <select name="course" id="course" class="form-control" required>
	                                               	<option value="">Select Course</option>
	                                               	<c:forEach items="${courseList}" var="courses">
	                                                    <option value="${courses.courseName}" <c:if test="${student.course eq courses.courseName}">selected="selected"</c:if> >${courses.courseName}</option>
	                                                </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="nicNo">NIC No</label>
                                                <input name="nic" value="${student.nic}" type="text" class="form-control" id="nicNo" placeholder="NIC No" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="phoneNumber">Phone Number</label>
                                                <input name="phoneNumber" value="${student.phoneNumber}" type="number" class="form-control" id="phoneNumber"
                                                    placeholder="Phone Number" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="email">Email</label>
                                                <input name="email" value="${student.email}" type="email" class="form-control" id="email" placeholder="Email" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputAddress">Address</label>
                                            <input name="address" value="${student.address}" type="text" class="form-control" id="inputAddress"
                                                placeholder="1234 Main St" required>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-4">
                                                <label for="province">Province</label>
                                                <select name="province" id="province" class="form-control" required>
                                                    <option value="">Select Province</option>
                                                    <option value="Western Province" <c:if test="${student.province eq 'Western Province'}">selected="selected"</c:if> >Western Province</option>
                                                    <option value="Central Province" <c:if test="${student.province eq 'Central Province'}">selected="selected"</c:if> >Central Province</option>
                                                    <option value="Southern Province" <c:if test="${student.province eq 'Southern Province'}">selected="selected"</c:if> >Southern Province</option>
                                                    <option value="Uva Province" <c:if test="${student.province eq 'Uva Province'}">selected="selected"</c:if> >Uva Province</option>
                                                    <option value="Sabaragamuwa Province" <c:if test="${student.province eq 'Sabaragamuwa Province'}">selected="selected"</c:if> >Sabaragamuwa Province</option>
                                                    <option value="North Western Province" <c:if test="${student.province eq 'North Western Province'}">selected="selected"</c:if> >North Western Province</option>
                                                    <option value="North Central Province" <c:if test="${student.province eq 'North Central Province'}">selected="selected"</c:if> >North Central Province</option>
                                                    <option value="Northern Province" <c:if test="${student.province eq 'Northern Province'}">selected="selected"</c:if> >Northern Province</option>
                                                    <option value="Eastern Province" <c:if test="${student.province eq 'Eastern Province'}">selected="selected"</c:if> >Eastern Province</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="district">District</label>
                                                <select name="district" id="district" class="form-control" required>
                                                    <option value="">Select District</option>
                                                    <option value="Colombo" <c:if test="${student.district eq 'Colombo'}">selected="selected"</c:if> >Colombo</option>
                                                    <option value="Gampaha" <c:if test="${student.district eq 'Gampaha'}">selected="selected"</c:if> >Gampaha</option>
                                                    <option value="Kalutara" <c:if test="${student.district eq 'Kalutara'}">selected="selected"</c:if> >Kalutara</option>
                                                    <option value="Kandy" <c:if test="${student.district eq 'Kandy'}">selected="selected"</c:if> >Kandy</option>
                                                    <option value="Matale" <c:if test="${student.district eq 'Matale'}">selected="selected"</c:if> >Matale</option>
                                                    <option value="Nuwara Eliya" <c:if test="${student.district eq 'Nuwara Eliya'}">selected="selected"</c:if> >Nuwara Eliya</option>
                                                    <option value="Galle" <c:if test="${student.district eq 'Galle'}">selected="selected"</c:if> >Galle</option>
                                                    <option value="Matara" <c:if test="${student.district eq 'Matara'}">selected="selected"</c:if> >Matara</option>
                                                    <option value="Hambantota" <c:if test="${student.district eq 'Hambantota'}">selected="selected"</c:if> >Hambantota</option>
                                                    <option value="Jaffna" <c:if test="${student.district eq 'Jaffna'}">selected="selected"</c:if> >Jaffna</option>
                                                    <option value="Kilinochchi" <c:if test="${student.district eq 'Kilinochchi'}">selected="selected"</c:if> >Kilinochchi</option>
                                                    <option value="Mannar" <c:if test="${student.district eq 'Mannar'}">selected="selected"</c:if> >Mannar</option>
                                                    <option value="Vavuniya" <c:if test="${student.district eq 'Vavuniya'}">selected="selected"</c:if> >Vavuniya</option>
                                                    <option value="Mullaitivu" <c:if test="${student.district eq 'Mullaitivu'}">selected="selected"</c:if> >Mullaitivu</option>
                                                    <option value="Batticaloa" <c:if test="${student.district eq 'Batticaloa'}">selected="selected"</c:if> >Batticaloa</option>
                                                    <option value="Ampara" <c:if test="${student.district eq 'Ampara'}">selected="selected"</c:if> >Ampara</option>
                                                    <option value="Trincomalee" <c:if test="${student.district eq 'Trincomalee'}">selected="selected"</c:if> >Trincomalee</option>
                                                    <option value="Kurunegala" <c:if test="${student.district eq 'Kurunegala'}">selected="selected"</c:if> >Kurunegala</option>
                                                    <option value="Puttalam" <c:if test="${student.district eq 'Puttalam'}">selected="selected"</c:if> >Puttalam</option>
                                                    <option value="Anuradhapura" <c:if test="${student.district eq 'Anuradhapura'}">selected="selected"</c:if> >Anuradhapura</option>
                                                    <option value="Polonnaruwa" <c:if test="${student.district eq 'Polonnaruwa'}">selected="selected"</c:if> >Polonnaruwa</option>
                                                    <option value="Badulla" <c:if test="${student.district eq 'Badulla'}">selected="selected"</c:if> >Badulla</option>
                                                    <option value="Moneragala" <c:if test="${student.district eq 'Moneragala'}">selected="selected"</c:if> >Moneragala</option>
                                                    <option value="Ratnapura" <c:if test="${student.district eq 'Ratnapura'}">selected="selected"</c:if> >Ratnapura</option>
                                                    <option value="Kegalle" <c:if test="${student.district eq 'Kegalle'}">selected="selected"</c:if> >Kegalle</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="date">Joined Date</label>
                                                <input name="date" value="${student.date}" type="date" class="form-control" id="date" required>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </form>
                                </div>
                            </div>

                        </div>

                    </div> 
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
	
</body>

</html>