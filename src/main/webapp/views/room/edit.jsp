<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<!-- content -->
<div class="container-sm flex flex-col justify-center">
<div class="w-100 flex flex-row justify-center my-1 pt-2">
<p class="text-3xl text-gray-600">Edit Room</p>
</div>
 <div class="shadow-sm p-10 mt-3 mb-5 bg-indigo-100 rounded text-gray-600 flex flex-row ">
 <div class="w-3/4 ">
<form action="${appName}room/add" method="post">

	<div class="form-group row mx-5 my-2">
	  <label class="col-sm-2 col-form-label">Room</label>
		<div class="col-sm-10"> 
			<select name="roomName" class="form-control border-2 border-pink-200"  required>
				<option value="kitchen" <c:if test="${room.roomName == 'kitchen' }">  selected="selected" </c:if>>kitchen</option>
				<option value="bedroom" <c:if test="${room.roomName == 'bedroom' }">  selected="selected" </c:if>>Bedroom</option>
				<option value="bathroom" <c:if test="${room.roomName == 'bathroom' }">  selected="selected" </c:if>>Bathroom</option>
				<option value="living Room" <c:if test="${room.roomName == 'living Room' }">  selected="selected" </c:if>>living Room</option>
				<option value="guest Room" <c:if test="${room.roomName == 'guest Room' }">  selected="selected" </c:if>>Guest Room</option>
			    <option value="washing Room" <c:if test="${room.roomName == 'washing Room' }">  selected="selected" </c:if>>Washing Room</option>
		   </select>
		</div>
	</div>



	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">Room Image</label> 
		<div class="col-sm-10">
		<input type="text" name="roomImage" value="${room.roomImage}" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="https://roomImage.com/"  required>
		</div>
		
	</div>

	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">Room Area</label>
			<div class="col-sm-10">
			 	<input type="number" name="roomArea" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" value="${room.roomArea}"  required>
			 </div>
	</div>
	
	
	
	 <div class="form-group row mx-5 my-2">
  <label class="col-sm-2 col-form-label">House Number</label>
  <div class="col-sm-10">
  <% if(session.getAttribute("user") != null) {%>
  <select name="house" class="form-control border-2 border-pink-200"  required>
   <c:forEach items="${houses}" var="house">
   
       <c:if test="${house.user.id == user.id}"> 
           <option value="${house.id}" <c:if test="${room.house.id == house.id}">  selected="selected" </c:if>> ${house.houseNumber}</option>
             </c:if>
         </c:forEach> 
   
  </select>
  <%} %>
  </div>
 </div>
	
	<input type="hidden" name="id" value="${room.id}">

	<div class="w-100 flex flex-row justify-center mt-11"><button type="submit"  class="btn font-bold tracking-widest w-36 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50">Edit</button></div>

</form>
</div>

<div class="1/4">
	<img  src="${room.roomImage}" class="w-64 h-64  m-3 shadow rounded-md"/>

</div>
</div>
</div>
 <jsp:include page="../shared/footer.jsp" />  
