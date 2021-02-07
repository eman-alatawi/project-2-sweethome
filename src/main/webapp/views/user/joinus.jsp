<jsp:include page="../shared/_layout.jsp" />

<!-- content -->
<script>
          function myFunction(){
              var x = document.getElementById("password").value;
              var y = document.getElementById("confirmPassword").value;
              var ok = true;
              if(x !== y)
              {
                  swal("Miss Match!", "Passwords do not match!", "error")
                  return false;  
              }else{
            	  return true;
              }
             
          }  
</script>



<div class="container-sm flex flex-col justify-center">
<div class="w-100 flex flex-row justify-center my-1 pt-2">

 <div class="shadow-sm p-10 mt-2 mb-5 bg-indigo-100 rounded text-gray-600 w-50">
 <div class="w-100 text-center mb-3" >
 <h1 class="text-indigo-500 text-2xl" >Join Us</h1>
 <h3 class="text-indigo-500 opacity-50">Enter Your information to join</h3>
</div> <!-- enctype="multipart/form-data" -->
  <form action="${appName}user/joinus" method="post" onsubmit="return myFunction()"  >

	<div class="form-group row mx-5 my-2">
	
	<div class="form-group mb-4">
		<label class="mb-2">First Name</label>
		 <input type="text" name="firstName"  class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="John"  required >
	</div>

	<div class="form-group  mb-4">
		<label class="mb-2">Last Name </label> 
		
		<input type="text" name="lastName"  class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="Smith"  required >
		
	</div>
	
	
	<div class="form-group  mb-4">
		<label class="mb-2">Email Address </label> 
		
		<input type="email" name="emailAddress" class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="Johnsmith@example.com"  required >
		
	</div>

	<div class="form-group  mb-4">
		<label class="mb-2">Password </label> 
		
		<input id="password" type="password" name="password"   class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="******" required>
	
	</div>
	
		<div class="form-group  mb-4">
		<label class="mb-2">Confirm Password </label> 
		
		<input id="confirmPassword" type="password" name="confirmPassword"   class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="******" required>
		
	</div>
	
	<div class="form-group  mb-4">
		<label class="mb-2">Phone Number</label>
	
		 <input type="text" name="phoneNumber" class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="0123456789"  required >
		
	</div>
	
	<div class="form-group  mb-4">
		<label class="mb-2">Profile Photo</label>
		
<!-- 		<input type="file" name="image" accept="image/png, image/jpeg"  placeholder="upload profile image"/>
 -->		
<!-- 		<div class="form-group">
<input type="file" name="image" accept="image/png, image/jpeg" placeholder="Upload image *" />
</div> -->
		    
		<input type="text" name="userImage" class="form-control border-2 border-pink-400 placeholder-gray-500 placeholder-opacity-50" placeholder="https://profilePhoto.com/" >
	
	</div>
	
<div class="form-group  mb-4">
		<label class="mb-2">Are You?</label>
	
		<select name="userRole" class="form-control border-2 border-pink-400 "  required >
			<option value="owner">House Owner</option>
			<option value="rentee">House Rentee  </option>
		</select>
	</div>
	</div>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<div class="w-100 flex flex-row justify-center mt-4"><button type="submit"  class="btn font-bold tracking-widest w-36 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50">join</button></div>

</form>
</div>

<div class="w-50 bg-pink-50 shadow-sm mt-2 mb-5 "  >
 <img  class= "w-100 h-100 object-none object-left"  src="../images/rent.png"> 
</div>

</div>




 <jsp:include page="../shared/footer.jsp" />  