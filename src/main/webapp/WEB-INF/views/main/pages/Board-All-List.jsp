<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가쓴글 </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
	<%@ include file="All-Cart.jsp" %>
	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>
  <style>
  	#all{
		/* border:1px solid red; */
		margin: auto;
		width: 70%;
		height: 900px;
		display: grid;   	
  		}
  	#all th{
  		text-align:center;
  	}
  		
  </style>
  
</head>
<body>
<div id="all">
<br>
<h1 style=" color: #22; padding:4%; text-align: center; font-weight: bold;">내가 쓴 글</h1>
<br>
<table class="table table-hover" align="center">
    <thead>
      <tr>
        <th style="width:10%">글번호</th>
        <th style="width:50%">제목</th>
        <th style="width:10%">작성자</th>
        <th style="width:20%">작성일</th>
        <th style="width:10%">조회수</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td align="center">1</td>
        <td align="center">내가 글 쓴 이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">2</td>
        <td align="center">내가 글 쓴이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">3</td>
        <td align="center">내가 글 쓴이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">4</td>
        <td align="center">내가 글 쓴 이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">5</td>
        <td align="center">내가 글 쓴 이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">6</td>
        <td align="center">내가 쓴글이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">7</td>
        <td align="center">내가 쓴글이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">8</td>
        <td align="center">내가 쓴글이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">9</td>
        <td align="center">내가 쓴글이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      <tr>
        <td align="center">10</td>
        <td align="center">내가 쓴글이유</td>
        <td align="center">홍길동</td>
        <td align="center">2020-03-21</td>
        <td align="center">1</td>
      </tr>
      
      
     
    </tbody>
  </table>
  
  <div style="margin-left: 40%; display: flex;">
  <ul class="pagination justify-content-center">
    <li class="page-item"><a class="page-link" href="javascript:void(0);" style="color: #222"><</a></li>
    <li class="page-item"><a class="page-link" href="javascript:void(0);" style="color: #222">1</a></li>
    <li class="page-item"><a class="page-link" href="javascript:void(0);" style="color: #222">2</a></li>
    <li class="page-item"><a class="page-link" href="javascript:void(0);" style="color: #222">></a></li>
  </ul>
  <div>
  <button class="btn btn-primary" style="background: #222; width: 100px; border: 1px solid #222; margin-left: 370px;">작 성</button>
  </div>
  </div>

  <div id="searchArea" align="center" >
				<form action="${ contextPath }/search.bo" style="display: inline-flex;" >
					<select id="searchCondition" name="condition">
						<option>--------선택--------</option>
						<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>					
					</select>
					<br>
					<input type="search" name="search" class="form-control form-control" style="width:300px;">
					<button class="btn btn-primary" style="background: #222; width: 100px; border: 1px solid #222;">검색하기</button>				
				</form>			
			</div>
  </div>
<%@ include file="All-Footer.jsp" %>
<!--===============================================================================================-->	
	<script src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
	<script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
<!-- 	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').jsp();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script> -->
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/js/main.js"></script>

</body>
</html>