<jsp:include page="../shared/_layout.jsp" />

<!-- content -->

<div class="container-sm flex flex-col justify-center">
<div class="w-100 flex flex-row justify-center my-1 pt-2">
<p class="text-3xl text-gray-600">Edit House</p>
</div>
 <div class="shadow-sm p-10 mt-3 mb-5 bg-indigo-100 rounded text-gray-600 ">
 <form action="${appName}house/add" method="post">

	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">Description</label>
		<div class="col-sm-10">
		 <input type="text" name="description"  value="${house.description}" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="This lovely Single Family Home peacefully nestled near the border of St. Francis"  required>
		 </div>
	</div>

	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">House Address</label> 
		<div class="col-sm-10">
		<input type="text" name="houseAddress" value="${house.houseAddress}" class="form-control  border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="1440 E Howard Ave is a house located in Milwaukee County"  required>
		</div>
	</div>
	
	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">House Number</label> 
		<div class="col-sm-10">
		<input type="text" name="houseNumber" value="${house.houseNumber}" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="ex.53207"  required>
		</div>
	</div>

	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">House Image</label> 
		<div class="col-sm-10">
		<input type="text" name="houseImage" value="${house.houseImage}" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="https://houseImage.com/"  required>
		</div>
	</div>
	
	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">Number of Rooms</label>
		<div class="col-sm-10">
		 <input type="number" name="totalRoomNum" value="${house.totalRoomNum}" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="5"  required>
		 </div>
	</div>
	
	<div class="form-group row mx-5 my-2">
		<label class="col-sm-2 col-form-label">Rent Per Month</label>
		<div class="col-sm-10"> 
		<input type="text" name="rentPrice" value="${house.rentPrice}" class="form-control border-2 border-pink-200 placeholder-gray-500 placeholder-opacity-50" placeholder="1375"  required>
		</div>
	</div>
	
	<div class="form-group row mx-5 my-2">
  	<label class="col-sm-2 col-form-label">Owner</label>
  	<div class="col-sm-10">
	  <% if(session.getAttribute("user") != null) {%>
  		<select name="user" class="form-control border-2 border-pink-200"  required>
           <option value="${user.id}" selected="selected"> ${user.firstName} ${user.lastName}</option>
 	    </select>
      <%} %>
   </div>
   </div>
   

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
<input name="id" type="hidden" value="${house.id}">
 

<div class="w-100 flex flex-row justify-center mt-4"><button type="submit"  class="btn font-bold tracking-widest w-36 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50">Edit</button></div>

</form>
</div>
</div>

 <jsp:include page="../shared/footer.jsp" /> 