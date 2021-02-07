<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<!-- content -->






<div class="container-xl flex  flex-row justify-evenly   p-10 ">
	<form action="${appName}user/ProfileEdit" method="post">
		<div class="container-sm flex flex-col justify-center  w-100 font-mono capitalize text-lg">
			
			<div class=" pl-2 w-100 border-l-8 border-indigo-400">
			<span class="text-sm mr-2">	 Your Picture: </span> <input type="text"
					name="userImage" value="${rentee.userImage}">
			</div> 



			<div class=" pl-2 w-100 border-l-8 border-pink-500">
				<span class="text-sm mr-2">  First Name:</span>  <input
					type="text" name="firstName" value="${rentee.firstName}">
			</div>


			<div class=" pl-2 w-100 border-l-8 border-yellow-600">
				<span class="text-sm mr-2"> Last Name:</span>

				 <input	type="text" name="lastName" value="${rentee.lastName}"></div>
				 
			<div class=" pl-2 w-100 border-l-8 border-red-400">
				<span class="text-sm mr-2">  Email Address:</span>
				 <input	type="email" name="emailAddress" value="${rentee.emailAddress}"></div>
				 
				 
			<div class=" pl-2 w-100 border-l-8 border-indigo-500">
				<span class="text-sm mr-2">Phone Number:</span>
				 <input	type="number" name="phoneNumber" value="${rentee.phoneNumber}"></div>
				 
				 
			
				 
				 
				 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				 <input name="id" type="hidden" value="${rentee.id}">
				 
				 <input name="password" type="hidden" value="${rentee.password}">
				 <input name="confirmPassword" type="hidden" value="${rentee.confirmPassword}">
				 <input name="userRole" type="hidden" value="${rentee.userRole}">
				 
				        <div class="flex flex-row justify-center pt-2  h-full  bg-red-200  shadow ">
				        <div class="w-100 flex flex-row justify-center mt-4"><button type="submit"  class="btn font-bold tracking-widest w-36 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50">Save Edit</button></div>
				        
				 </div>
		
</div>
	</form>
</div>






<jsp:include page="../shared/footer.jsp" />
