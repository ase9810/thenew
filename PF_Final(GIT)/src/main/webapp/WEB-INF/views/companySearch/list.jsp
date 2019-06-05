
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Company List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Company List Page</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                    	<th>Company Name</th>
                                        <th>Company ID</th>                                     
                                        <th>Company Domain</th>
                                        <th>Company Content</th>
                                        <th>RegDate</th>
                                        
                                    </tr>
                                </thead>
                                
                                <c:forEach var="Company" items="${list}" >
                                 <tr>
                                	<td><a class='move' href='<c:out value="${Company.compId }"/>'>
                                 	<c:out value="${Company.compName}"/></a></td>  
                                 	<td><c:out value="${Company.compId}"/>                             	
                                 	<td><a href='<c:out value="${Company.compDomain}"/>'>
                                	 	<c:out value="${Company.compDomain}"/></a></td>
                                 	<td><c:out value="${Company.compContent}"/></td>                
                                 	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${Company.regdate}" /></td> 
                                 	
                       			</tr>
                            	</c:forEach>
                            </table>
<!--                             search 클릭  -->
                            <div class='row'>
                            	<div class="col-lg-12">
                            	<form id='searchForm' action="${pageContext.request.contextPath}/companySearch/list" method='get'>
                            		<select name='type'>
                            			<option value=""
                            				<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>-----------</option>
                            			<option value="T"
                            				<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>Company ID</option>
 	                          			<option value="C"
 	                          				<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>Company Name</option>
<!--  	                          		<option value="W"
										<c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>Company Content</option>                         			 -->
                            		</select>
                            		<input type='text' name='keyword'
                            		value='<c:out value="${pageMaker.cri.keyword }"/>'/>
                            		<input type='hidden' name='pageNum'
                            		 value='<c:out value= "${pageMaker.cri.pageNum }"/>'/>
                            		<input type='hidden' name='amount'
                            		 value='<c:out value= "${pageMaker.cri.amount }"/>'/>
                            		
                            		<button class='btn btn-default'>Search</button>
                            	</form>
                            	
                            	</div>
                            </div>
                            
<!--                             PAGING 처리 부분 -->
                            <div class='pull-right'>
                            	<ul class="pagination">
                            	
                            		<c:if test="${pageMaker.prev }">
                            			<li class="paginate_button previous">
                            			<a href="${pageMaker.startPage -1 }">Previous</a>
                            			</li>
                            		</c:if>
                            		
                            		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                             			<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" } ">
                             			<a href="${num }">${num } </a></li>
                            		</c:forEach>
                            		
                             		<c:if test="${pageMaker.next }"> 
                            			<li class="paginate_button next">
                            			<a href="${pageMaker.endPage +1 }">Next</a></li>
                             		</c:if> 
                            	</ul>
                            </div>
                            
                        </div>
                      </div>
                      <!-- end Pagination -->
                </div>
                <form id='actionForm' action="${pageContext.request.contextPath}/companySearch/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'>
				<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
				</form>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->

  <script type="text/javascript"> 
 
  
  
	$(document).ready(function() {
		
		$(".move").on("click", function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='CompId' value='"+$(this).attr("href")+"'>");
			actionForm.attr("action","${pageContext.request.contextPath}/companySearch/get");
			actionForm.submit();
		});
		
		
		var searchForm = $("#searchForm");
		
		$("#searchForm button").on("click", function(e){

			if(!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요.");
				return false;
			}	
			if(!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요.");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			
			searchForm.submit();
		});
		
			var actionForm = $("#actionForm");
	
			$(".paginate_button a").on("click", function(e) {
			
				e.preventDefault();
				console.log('click');

				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
				});
				
		});
</script>
 <%@ include file="../includes/footer.jsp" %>