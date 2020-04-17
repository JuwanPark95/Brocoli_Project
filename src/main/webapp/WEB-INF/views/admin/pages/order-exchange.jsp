<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html lang="en">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>주문관리</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
</head>

<body>
   <%@ include file="header.jsp" %>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">

        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">교환/환불</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">주문관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">교환/환불</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">교환 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="change" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
	                                        	<th style="width:3%">번호</th>
	                                            <th style="width:3%">교환번호</th>
	                                            <th style="width:8%">주문자</th>
	                                            <th style="width:8%">아이디</th> 
	                                            <th style="width:10%">상품명</th>
	                                            <th style="width:8%">가격</th>
	                                            <th style="width:8%">교환사유</th>
	                                            <th style="width:8%">교환내용</th>
	                                            <th style="width:8%">교환요청일</th>
	                                            <th style="width:8%">교환완료일</th>
	                                            <th style="width:12%">교환상태</th>
	                                            <th style="width:12%">교환</th>
	                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="c" items="${changeList}" varStatus="cl"> 
                                            <tr>
                                                <td>${cl.count}</td>
	                                            <td>${c.ch_No}</td>
	                                            <td>${c.changeMember.mId}</td>
	                                            <td>${c.changeMember.mName}</td>
	                                            <td>${c.ch_Pname}</td>
	                                            <td>${c.ch_Price}</td>
	                                            <td>${c.ch_Reason}</td>
	                                            <td>${c.ch_Comment}</td>
	                                            <td>${c.ch_Date}</td>
	                                            <td>${c.ch_EnDate}</td>
	                                            <td>${c.ch_Status}</td>
	                                            <td>
									                <button type="submit" class="btn btn-outline-dark"
									                      style="width:60px; height:40px; ">
									                      	교환
									                </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                      </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                     
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">환불 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="reject" class="table table-striped table-bordered first" style="text-align:center;">
                                    <thead>
                                        <tr>
                                        	<th style="width:3%">번호</th>
                                            <th style="width:3%">환불번호</th>
                                            <th style="width:8%">주문자</th>
                                            <th style="width:8%">아이디</th> 
                                            <th style="width:10%">상품명</th>
                                            <th style="width:8%">가격</th>
                                            <th style="width:8%">환불사유</th>
                                            <th style="width:8%">환불내용</th>
                                            <th style="width:8%">환불요청일</th>
                                            <th style="width:8%">환불완료일</th>
                                            <th style="width:12%">환불상태</th>
                                            <th style="width:12%">환불</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="r" items="${rejectList}" varStatus="rl"> <!-- for -->
                                        <tr>
                                        	<td>${rl.count}</td>
                                            <td>${r.re_No}</td>
                                            <td>${r.rejectMember.mId}</td>
                                            <td>${r.rejectMember.mName}</td>
                                            <td>${r.re_Pname}</td>
                                            <td>${r.re_Price}</td>
                                            <td>${r.re_Reason}</td>
                                            <td>${r.re_Comment}</td>
                                            <td>${r.re_Date}</td>
                                            <td>${r.re_Enddate}</td>
                                            <td>${r.re_Status}</td>
                                            <td>
								               <button type="submit" class="btn btn-outline-danger "
								                      style="width:60px; height:40px; ">
								                      	반품
								               </button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                  </tbody>
                                </table>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
         </div>       
    </div>
		    <!-- ============================================================== -->
		    <!-- end main wrapper -->
		    <!-- ============================================================== -->
		    
		    <!-- ============================================================== -->
		    <!--반품시 alert창으로 한번 확인 -->  
		    <!-- ============================================================== -->
		    
		    
		    
		    <!-- ============================================================== -->
		    <!--/ 반품시 alert창으로 한번 확인 -->  
		    <!-- ============================================================== -->
		    
		    
		    <!-- ============================================================== -->
		    <!--교환시 팝업창 띄우기-->  
		    <!-- ============================================================== -->
		    
		    
		    
		    <!-- ============================================================== -->
		    <!--교환시 팝업창  -->  
		    <!-- ============================================================== -->
		    
    
    
    
    
    
		    <!-- ============================================================== -->
		    <!-- Optional JavaScript -->
		    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
		    <script src="/brocoli/resources/adminResources/vendor/multi-select/js/jquery.multi-select.js"></script>
		    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
		    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
		    <script src="/brocoli/resources/adminResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
		    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
		    <script src="/brocoli/resources/adminResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
		    <script src="/brocoli/resources/adminResources/vendor/datatables/js/data-table.js"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
		    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
		    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
		    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
		    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
		    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
		    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
		    
		    <!-- end Optional JavaScript -->
		    <!-- ============================================================== -->
         
</body>
 
</html>