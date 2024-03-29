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

                    <a class="navbar-brand d-sm-none-max"><i class="fas fa-tachometer-alt"></i> Dashboard </a>
                    
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4 d-txt-none-s">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Students</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${studentCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-user-graduate fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                               	Today Attendance</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${attendanceCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                Course</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${courseCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-book-open fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Fees</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">Rs.${feeAmount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-coins fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Fees Overview</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Calander -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="calendar shadow mb-4">
                            </div>
                        </div>

                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Recent Student Fees</h6>
                                </div>
                                <div class="card-body">
                                	<div class="table-responsive-xl">
	                                    <table class="table table-hover table-stripped">
	                                        <thead>
	                                            <tr>
	                                            	<th>#</th>
	                                                <th scope="col">Reg Num</th>
	                                                <th scope="col">Amount</th>
	                                                <th scope="col">Purpose</th>
	                                                <th scope="col">Date</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:forEach items="${feeList}" var="fee">
		                                            <tr>
		                                                <td scope="row">1</td>
		                                                <td>${fee.registrationNumber}</td>
		                                                <td>${fee.paymentAmount}</td>
		                                                <td>${fee.purposeOfPayment}</td>
		                                                <td>${fee.date}</td>
		                                            </tr>
	                                           </c:forEach>
	                                        </tbody>
	                                    </table>
	                            	</div>
                                </div>
                            </div>

                            <!-- Color System -->
                            <div class="row">
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-primary text-white shadow blue">
                                        <a href="new-student" class="card-buttons-dashboard">
                                            <div class="card-body">
                                                <i class="fas fa-user-plus fa-2x text-gray-300"></i>
                                                <span>New Student</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card bg-success text-white shadow green">
                                        <a href="new-fee" class="card-buttons-dashboard">
                                            <div class="card-body">
                                                <i class="fas fa-hand-holding-usd fa-2x text-gray-300"></i>
                                                <span>New Fee</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-6 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Newly Added Students</h6>
                                </div>
                                <div class="card-body">
                                	<div class="table-responsive-xl">
	                                    <table class="table table-hover table-stripped">
	                                        <thead>
	                                            <tr>
	                                           		<th>#</th>
	                                                <th scope="col">Reg Num</th>
	                                                <th scope="col">Name</th>
	                                                <th scope="col">Course</th>
	                                                <th scope="col">Joined Date</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:forEach items="${studentsList}" var="student">
		                                            <tr>
		                                                <td scope="row">1</td>
		                                                <td>${student.registrationNumber}</td>
		                                                <td>${student.studentName}</td>
		                                                <td>${student.course}</td>
		                                                <td>${student.date}</td>
		                                            </tr>
		                                          </c:forEach>
	                                        </tbody>
	                                    </table>
	                            	</div>        
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6 mb-4">
                                    <div class="card bg-info text-white shadow lightBlue ">
                                        <a href="new-course" class="card-buttons-dashboard">
                                            <div class="card-body">
                                                <i class="fas fa-chalkboard-teacher fa-2x text-gray-300"></i>
                                                <span>New Course</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-lg-6 mb-4">
                                    <div class="card text-white shadow yellow">
                                        <a href="new-attendance" class="card-buttons-dashboard">
                                            <div class="card-body">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                                <span>Mark Attendance</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            
                            <input value="${monthJan}" type="hidden" id="monthJan">
                            <input value="${monthFeb}" type="hidden" id="monthFeb">
                            <input value="${monthMar}" type="hidden" id="monthMar">
                            <input value="${monthApr}" type="hidden" id="monthApr">
                            <input value="${monthMay}" type="hidden" id="monthMay">
                            <input value="${monthJun}" type="hidden" id="monthJun">
                            <input value="${monthJul}" type="hidden" id="monthJul">
                            <input value="${monthAug}" type="hidden" id="monthAug">
                            <input value="${monthSpt}" type="hidden" id="monthSpt">
                            <input value="${monthOct}" type="hidden" id="monthOct">
                            <input value="${monthNav}" type="hidden" id="monthNav">
                            <input value="${monthDec}" type="hidden" id="monthDec">
							
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
                        <span>Copyright &copy; Your Website 2021</span>
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
                        <span aria-hidden="true">�</span>
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

    <!-- Calander scripts for all pages-->
    <script src="js/calander.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
    

	<script>
			var table = document.getElementsByTagName('table')[1],
			  rows = table.getElementsByTagName('tr'),
			  text = 'textContent' in document ? 'textContent' : 'innerText';
	
			for (var i = 1, len = rows.length; i < len; i++) {
			  rows[i].children[0][text] = i;
			}
			
			var table = document.getElementsByTagName('table')[0],
			  rows = table.getElementsByTagName('tr'),
			  text = 'textContent' in document ? 'textContent' : 'innerText';
	
			for (var i = 1, len = rows.length; i < len; i++) {
			  rows[i].children[0][text] = i;
			}
			
	</script>

</body>

</html>