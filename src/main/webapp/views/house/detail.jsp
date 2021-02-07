<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<!--  content -->
 <div class="container-xl flex  flex-row justify-evenly   p-10 ">
<div class="container-sm flex flex-col justify-center  w-100 font-mono capitalize text-lg">
	 <div id="carouselExampleCaptions"
				class="carousel slide max-w-2xl  shadow"
				data-bs-ride="carousel">
				
				<div class="carousel-inner ">
					<div class="carousel-item active">
						<img
							src="${house.houseImage }"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>House</h5>
						</div>
					</div>
					<c:forEach items="${rooms}" var="room">
						<c:if test="${room.house.id == house.id }">
							<div class="carousel-item">
								<img
									src="${room.roomImage }"
									class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>${room.roomName}</h5>
								<p>	<span>Room Area</span>: ${room.roomArea}<b>m2</b></p>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleCaptions"
					role="button" data-bs-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="visually-hidden">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
					role="button" data-bs-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="visually-hidden">Next</span>
				</a>
			</div>
		</div>
		
     <!-- house info -->
     
     <div class="container-sm flex flex-col justify-center  w-100 mt-5 ">
        <table id="table" class="table table-striped">
  <tr>
    <th>House Address</th>
    <td>${house.houseAddress}</td>
  </tr>
  <tr>
    <th>House Number</th>  
    <td>${house.houseNumber}</td>      
  </tr>  
  <tr>
    <th>Number Of Rooms</th>  
    <td>${house.totalRoomNum}</td>      
  </tr> 
  <tr>
    <td colspan="2" class="text-center">&nbsp; ${house.rentPrice}$</td>
   </tr>
</table>
 
 <div class="container-xl flex  flex-row justify-evenly    ">     
    <div class="btn font-bold tracking-widest w-60  mr-2 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50 wb" ><a href="${appName}user/ownerProfile?id=${house.user.id}">Contact The Owner</a></div>
    <% if(session.getAttribute("user") != null && session.getAttribute("userRole").equals("rentee")) {%>
    <div class="btn rentBtn font-bold tracking-widest w-60 shadow-sm  bg-pink-400 hover:bg-green-400 text-gray-50 hover:text-gray-50"><a id ="rent" href="${appName}house/rent?id=${house.id}&renteeId=${user.id}">Rent Now </a></div>
     <% } %> 
  </div>
 
 </div>
  </div> 
 
 
 <jsp:include page="../shared/footer.jsp" /> 