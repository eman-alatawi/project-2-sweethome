<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<!-- content -->

<div class="container-sm flex flex-col justify-center mt-10">
<div class="w-full flex flex-row justify-end mb-2">
      <div class="btn  bg-green-400 font-bold tracking-widest w-48  shadow-sm  text-gray-50 hover:text-gray-100 "><a href="${appName}room/add">Add New Room</a></div>
</div>
 
  <input class="form-control" id="searchBar" type="text" placeholder="Search..">
  <br>
<table class="table table-hover">
<thead class="bg-blue-100">
 <tr>
  <th>Room Name</th>
  <th>Room Image</th>
  <th>Room Area</th>
  <th>House Number</th>
  <th>House Image</th>
  <% if(session.getAttribute("user") != null) {%>
	<th>Action</th>
  <% } %>
 </tr>
 </thead>
 <tbody id="myRows">
 <c:forEach items="${rooms}" var="room">
 <c:if test="${room.house.user.id == user.id}" >
  <tr>
   <td>${room.roomName}</td>
   <td> <img  src="${room.roomImage}" width="75px" height="75px"/></td>
   <td>${room.roomArea} <b>m2</b></td>
   <td>${room.house.houseNumber}</td>
    <td><a href="${appName}house/detail?id=${room.house.id}"> <img  src="${room.house.houseImage}" width="75px" height="75px"/></a></td>

		<td>
		 <% if(session.getAttribute("user") != null) {%>
         <% if(! session.getAttribute("userRole").equals("rentee")){ %> 

        <div class="flex flex-row w-10 justify-evenly " >
		<a href="${appName}room/edit?id=${room.id}"> <span class="material-icons mr-5 cursor-pointer  transform hover:scale-110 motion-reduce:transform-none group-hover:text-black" >create</span></a> 
		 <a href="${appName}room/delete?id=${room.id}"> <span class="material-icons  cursor-pointer  transform hover:scale-110 motion-reduce:transform-none group-hover:text-black" >clear</span></a>
		</div>
		<%} %>
		<%} %>
		</td>
		
  </tr>
  </c:if>
 </c:forEach>
 </tbody>
</table>
</div>

<script>
$(document).ready(function(){
  $("#searchBar").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myRows tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

 <jsp:include page="../shared/footer.jsp" />   