<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

	<%@ include file="All-Header.jsp" %>
    <%@ include file="All-Sidebar.jsp" %>
    <%@ include file="All-Cart.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

<link rel="stylesheet" type="text/css" href="/brocoli/resources/mainResources/css/product_change.css">

<style>

.tb-center{
padding : 5px;
}

#orderInfo .table-prdinfo .tb-center {
padding : 5px;
}

</style>


<body style="padding:0px;">
    <div id="orderSt">
    <form action="my_p_change.mn">
    <c:forEach var="member" items="Member">
    <p class="txt-date">
        <span>
            <strong>${loginUser.mName}</strong>
                           님께서 ${member.or_Date} 주문하신 내역입니다.
        </span>
    </p>
    <ul class="tab">
       <li>
         <div class="back">
           <div class="button_base b01_simple_rollover" style="padding-top:0px; height: 22px; width: 150px; border-radius: 3px;">
             <a href="<c:url value='my_p_change.mn'/>" style="width: 100%;">
               <strong>교환</strong>
             </a>
           </div>
         </div>
       </li>
       <li>
         <div class="back">
            <div class="button_base b01_simple_rollover" style="padding-top:0px; height: 22px; width: 150px; border-radius: 3px;">
              <a href="<c:url value='my_p_reject.mn'/>" style="width: 100%;">
               <strong>반품</strong>
               </a>
            </div>
         </div>
       </li>
    </ul>   
    <div id="orderInfo">
        <h2>주문자정보</h2>
        <div class="table-w table-orderinfo">
            <table summary>
                <caption>주문자정보</caption>
                <colgroup>
                   <col width="120">
                   <col width="*">
                   <col width="120">
                   <col width="*"> 
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">
                            <div class="tb-center">주문번호</div>
                        </th>
                        <td>
                            <div class="tb-center">${member.or_NO}</div>
                        </td>
                        <th scope="row">
                            <div class="tb-center">주문일자</div>
                        </th>
                        <td>
                            <div class="tb-center"> ${member.or_Date}</div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <div class="tb-center">주문자</div>
                        </th>
                        <td>
                            <div class="tb-center">${member.mName }</div>
                        </td>
                        <th scope="row">
                            <div class="tb-center">주문서 입금현황</div>
                        </th>
                        <td>
                            <div class="tb-center">입금완료</div>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="row">
                            <div class="tb-center">주문 메모</div>
                        </th>
                        <td colspan="3">
                            <div class="tb-left"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <h2>배송지정보</h2>
        <div class="table-w table-region">
            <table summary>
                <caption>배송정보</caption>
                <colgroup>
                   <col width="120">
                   <col width="*">
                   <col width="120">
                   <col width="*"> 
                </colgroup>
                <tbody>
                   <tr>
                <th scope="row">
                    <div class="tb-center">택배사</div>
                </th>
                <td>
                    <div class="tb-center">
                        ${member.or_Deliver_Vender}
                    </div>
                </td>
                <th scope="row">
                    <div class="tb-center">송장번호</div>
                </th>
                 <td>
                     <div class="tb-center">
                         ${member.or_Deliver_Num}
                         <a href=""></a>
                     </div>
                 </td>
            </tr>
            <tr>
                <th scope="row">
                    <div class="tb-center">수취인</div>
                </th>
                <td>
                    <div class="tb-center">(수취인)</div>
                </td>
                <th scope="row">
                    <div class="tb-center">연락처</div>
                </th>
                <td>
                    <div class="tb-center">(연락처)</div>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <div class="tb-center">주소</div>
                </th>
                <td colspan="3">
                    <div class="tb-left">(주소)</div>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <div class="tb-center">배송메세지</div>
                </th>
                <td colspan="3">
                    <div class="tb-left"></div>
                </td>
            </tr>
        </tbody>
       </table>
    </div>
    <h2>주문상품정보</h2>
    <div class="table-w table-prdinfo">
        <table summary>
            <caption>주문상품정보</caption>
            <colgroup>
              <col width="60">
              <col width="*">
              <col width="110">
              <col width="55">
              <col width="80">
              <col width="60">
              <col width="60">
              <col width="80">
            </colgroup>
           <thead>
               <tr>
                   <th scope="row">
                       <div class="tb-center">주문번호</div>
                   </th>
                   <th colspan="2">
                       <div class="tb-center">주문상품정보</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">수량</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">가격</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">적립</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">처리상태</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">배송번호</div>
                   </th>
               </tr>
           </thead>
           <tfoot>
               <tr>
                   <td colspan="8">
                       <div class="t-right">
                           (상품금액) + (배송료)(할인/추가금액) =(총금액)
                       </div>
                   </td>
               </tr>
           </tfoot>
          <tbody>
              <tr>
                  <td>
                       <div class="tb-center">(주문번호)</div> 
                  </td>
					<td colspan="2">
						<div style="float: left;">
							<img src="/brocoli/resources/product-Img/P11001.jpg" style="width: 58px; height: 78px;">
						</div>
						<div style="float: left;">
							<a href=""> (상품명) <br>
								</a> <span class="quantity order_table_Td style4"> 타입 : (상품색상 타입) </span>
						</div>
					</td>
					<td>
                      <div class="tb-center">(수량)</div>
                  </td>
                  <td>
                      <div class="tb-center tb-price">
                          <strong>
                              <font color="#FF5D00">(가격)</font>
                          </strong>
                          원
                      </div>
                  </td>
                  <td>
                      <div class="tb-center">
                          <span class="style4">0</span>
                      </div>
                  </td>
                  <td>
                      <div class="tb-center">거래완료(상태)</div>
                  </td>
                  <td>
                      <div class="tb-center">(배송번호)</div>
                  </td>
              </tr>
          </tbody>
        </table>
    </div>
    <h2>교환사유</h2>
    <div class="table-w table-orderinfo">
        <table summary>
            <caption>교환사유</caption>
            <colgroup>
               <col width="120">
               <col width="*">
               <col width="120">
               <col width="*"> 
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">
                        <div class="tb-center">사유선택</div>
                    </th>
                    <td colspan="3">
                        <div class="tb-center">
                         <select>
                            <option value="선택">--선택--</option>
                            <option value="단순">단순변심</option>
                            <option value="불량">불량교환</option>
                          </select>  
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <div class="tb-center">상세사유</div>
                    </th>
                    <td colspan="3">
                        <div class="tb-center">
                            <input type="text" id="reason" placeholder="상세 사유를 작성해주세요~" style="width: 700px; height: 100px;">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th colspan="row">
                        <div class="tb-center">신청일</div>
                    </th>
                    <td colspan="3">
                        <div class="tb-left">(신청날짜)</div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div id="pop_order_btn_group">
        <button style="height: 35px; width: 97px; border-radius: 3px;">
        <a href="<c:url value='myOrderList.mn'/>" style="width:100%; color:#fff;">신청완료</a>
        </button>
        &nbsp;&nbsp;
         <button style="height: 35px; width: 97px; border-radius: 3px;">
         <a href="<c:url value='myOrderList.mn'/>" style="width:100%; color:#fff;">돌아가기</a>
         </button>
    </div>
</div>
</c:forEach>
</form>
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