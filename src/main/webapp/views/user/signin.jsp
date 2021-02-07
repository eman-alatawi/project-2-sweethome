<jsp:include page="../shared/_layout.jsp" />

<!-- content -->

<div class="container-xl flex flex-col justify-center">
<div class="w-100 flex flex-row justify-center my-1 pt-2">

 <div class="shadow-sm p-10 mt-2 mb-5 bg-indigo-100 rounded text-gray-600 ">
 
  <div class="w-100 text-center mb-3" >
 <h1 class="text-indigo-500 text-2xl" >Sign in to your account </h1>
</div>

  <form action="${appName}user/signin" method="post">

	<div class="form-group mb-4">
		<label class="mb-2">Email address </label> 
		<input type="email" name="emailAddress" class="form-control border-2 border-pink-400">
	</div>

	<div class="form-group mb-4">
		<label class="mb-2">Password </label> 
		<input type="password" name="password" class="form-control border-2 border-pink-400">
	</div>
	
	<br>
	<div class="w-100 flex flex-row justify-center mt-4 text-sm">
	<p class="text-indigo-900">Is this your first time? you can <a class="underline text-indigo-700 font-medium" href="${appName}user/joinus">Join Us</a></p>
	</div>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<div class="w-100 flex flex-row justify-center mt-4"><button type="submit"  class="btn font-bold tracking-widest w-36 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50">Sign in</button></div>


</form>
</div>
<div class="w-50 bg-pink-50 shadow-sm mt-2 mb-5">
 <img  class= "w-100 h-100 object-none object-center "  src="../images/pic.jpeg"> 

</div>
</div>
</div>
 <jsp:include page="../shared/footer.jsp" />  