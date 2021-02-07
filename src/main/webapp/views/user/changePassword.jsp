<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<script>
          function myFunction(){
        	  
              var x = document.getElementById("newPassword").value;
              var y = document.getElementById("confirmNewPassword").value;
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<div class="container-xl flex  flex-row justify-evenly   p-10 ">
	<form action="${appName}user/changePassword" method="post" onsubmit="return myFunction()">
		<div class="container-sm flex flex-col justify-center  w-100 font-mono capitalize text-lg">
			
			
		  <div class=" pl-2 w-100 border-l-8 border-red-800 mb-2">
				<span class="text-sm mr-2"> Old Password:</span>
				 <input class="bg-gray-100 rounded" id="oldpassword" type="password" name="oldPass"  required> </div> 
				 
		 <div class=" pl-2 w-100 border-l-8 border-red-800 mb-2">
				<span class="text-sm mr-2"> new Password:</span>
				 <input class="bg-gray-100 rounded" id="newPassword" type="password" name="password"  required> </div>
		
		<div class=" pl-2 w-100 border-l-8 border-red-800 mb-2">
				<span class="text-sm mr-2"> confirm New Password:</span>
				 <input class="bg-gray-100 rounded" id="confirmNewPassword" type="password" name="confirmPassword"  required> </div>
				 
				 
		
				 
		
				 
				 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				 <input name="id" type="hidden" value="${owner.id}">
				 
				
				 <input name="userRole" type="hidden" value="${owner.userRole}">
				 <input type="hidden" name="userImage" value="${owner.userImage}">
			
				<input type="hidden" name="firstName" value="${owner.firstName}">
		
				<input	type="hidden" name="lastName" value="${owner.lastName}">
				
			     <input	type="hidden" name="emailAddress" value="${owner.emailAddress}">
			     <input	type="hidden" name="phoneNumber" value="${owner.phoneNumber}">
				 
				<div class="flex flex-row justify-center pt-2  h-full  bg-red-200  shadow ">
					<div class="w-100 flex flex-row justify-center mt-4"><button type="submit"  class="btn font-bold tracking-widest w-36 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50">Save Edit</button></div>
					
				 </div>
		
</div>
	</form>
</div>
</div>





<jsp:include page="../shared/footer.jsp" />