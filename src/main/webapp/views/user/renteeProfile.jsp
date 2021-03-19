<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<!-- content -->

<div class="container-xl flex  flex-row justify-evenly   p-10 ">
	<div
		class="container-sm flex flex-col justify-center  w-100 font-mono capitalize text-lg text-gray-700 ">
	
		<div class="nav-item">
			<img
				class="object-cover m-10 w-60 h-60 rounded-full mr-10 ring-8 ring-green-500 ring-opacity-50"
				src="${rentee.userImage}" />
		</div>
		<div class="pl-2 w-100  border-l-8 border-pink-500  ">
			<span class="text-sm mr-2">Role:</span>${rentee.userRole}</div>
		<div class="pl-2 w-100  border-l-8 border-yellow-600 ">
			<span class="text-sm mr-2">First Name:</span>${rentee.firstName}</div>
		<div class="pl-2 w-100  border-l-8 border-indigo-500 ">
			<span class="text-sm mr-2">Last Name:</span>${rentee.lastName}</div>
		<div class="pl-2 w-100  border-l-8 border-red-400  ">
			<span class="text-sm mr-2">Email Address:</span>${rentee.emailAddress}</div>
		<div class="pl-2 w-100  border-l-8 border-red-800  ">
			<span class="text-sm mr-2">Phone Number:</span>${rentee.phoneNumber}</div>
			
				<% if (session.getAttribute("user") != null) {%>

		<%if (session.getAttribute("userRole").equals("rentee")) {%>
		<c:if test="${rentee.id == user.id}">

			<div class="flex h-10  flex-row justify-evenly w-50 bg-pink-200 pt-2 leading-2">
			<div>
				<a href="${appName}user/renteeProfileEdit?id=${rentee.id}"><img
					class=" mr-2 transform hover:scale-110 motion-reduce:transform-none"
					width="20" height="20"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDQwMS41MjI4OSA0MDEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxsaW5lYXJHcmFkaWVudCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJhIj48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiNmMTY1ODIiIG9mZnNldD0iMCI+PC9zdG9wPjxzdG9wIHN0b3Atb3BhY2l0eT0iMSIgc3RvcC1jb2xvcj0iIzNlOTVmZiIgb2Zmc2V0PSIwLjk5NjEzODk5NjEzODk5NjEiPjwvc3RvcD48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiMwMGFjZWEiIG9mZnNldD0iMSI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImIiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIyNDUuNTIzIiB4Mj0iMjQ1LjUyMyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImMiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIzMTAuMDg0IiB4Mj0iMzEwLjA4NCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzcwLjU4OTg0NCAyNTAuOTcyNjU2Yy01LjUyMzQzOCAwLTEwIDQuNDc2NTYzLTEwIDEwdjg4Ljc4OTA2M2MtLjAxOTUzMiAxNi41NjI1LTEzLjQzNzUgMjkuOTg0Mzc1LTMwIDMwaC0yODAuNTg5ODQ0Yy0xNi41NjI1LS4wMTU2MjUtMjkuOTgwNDY5LTEzLjQzNzUtMzAtMzB2LTI2MC41ODk4NDRjLjAxOTUzMS0xNi41NTg1OTQgMTMuNDM3NS0yOS45ODA0NjkgMzAtMzBoODguNzg5MDYyYzUuNTIzNDM4IDAgMTAtNC40NzY1NjMgMTAtMTAgMC01LjUxOTUzMS00LjQ3NjU2Mi0xMC0xMC0xMGgtODguNzg5MDYyYy0yNy42MDE1NjIuMDMxMjUtNDkuOTY4NzUgMjIuMzk4NDM3LTUwIDUwdjI2MC41OTM3NWMuMDMxMjUgMjcuNjAxNTYzIDIyLjM5ODQzOCA0OS45Njg3NSA1MCA1MGgyODAuNTg5ODQ0YzI3LjYwMTU2Mi0uMDMxMjUgNDkuOTY4NzUtMjIuMzk4NDM3IDUwLTUwdi04OC43OTI5NjljMC01LjUyMzQzNy00LjQ3NjU2My0xMC0xMC0xMHptMCAwIiBmaWxsPSJ1cmwoI2IpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2IpIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzc2LjYyODkwNiAxMy40NDE0MDZjLTE3LjU3NDIxOC0xNy41NzQyMTgtNDYuMDY2NDA2LTE3LjU3NDIxOC02My42NDA2MjUgMGwtMTc4LjQwNjI1IDE3OC40MDYyNWMtMS4yMjI2NTYgMS4yMjI2NTYtMi4xMDU0NjkgMi43MzgyODItMi41NjY0MDYgNC40MDIzNDRsLTIzLjQ2MDkzNyA4NC42OTkyMTljLS45NjQ4NDQgMy40NzI2NTYuMDE1NjI0IDcuMTkxNDA2IDIuNTYyNSA5Ljc0MjE4NyAyLjU1MDc4MSAyLjU0Njg3NSA2LjI2OTUzMSAzLjUyNzM0NCA5Ljc0MjE4NyAyLjU2NjQwNmw4NC42OTkyMTktMjMuNDY0ODQzYzEuNjY0MDYyLS40NjA5MzggMy4xNzk2ODctMS4zNDM3NSA0LjQwMjM0NC0yLjU2NjQwN2wxNzguNDAyMzQzLTE3OC40MTAxNTZjMTcuNTQ2ODc1LTE3LjU4NTkzNyAxNy41NDY4NzUtNDYuMDU0Njg3IDAtNjMuNjQwNjI1em0tMjIwLjI1NzgxMiAxODQuOTA2MjUgMTQ2LjAxMTcxOC0xNDYuMDE1NjI1IDQ3LjA4OTg0NCA0Ny4wODk4NDQtMTQ2LjAxNTYyNSAxNDYuMDE1NjI1em0tOS40MDYyNSAxOC44NzUgMzcuNjIxMDk0IDM3LjYyNS01Mi4wMzkwNjMgMTQuNDE3OTY5em0yMjcuMjU3ODEyLTE0Mi41NDY4NzUtMTAuNjA1NDY4IDEwLjYwNTQ2OS00Ny4wOTM3NS00Ny4wOTM3NSAxMC42MDkzNzQtMTAuNjA1NDY5YzkuNzYxNzE5LTkuNzYxNzE5IDI1LjU4OTg0NC05Ljc2MTcxOSAzNS4zNTE1NjMgMGwxMS43MzgyODEgMTEuNzM0Mzc1YzkuNzQ2MDk0IDkuNzczNDM4IDkuNzQ2MDk0IDI1LjU4OTg0NCAwIDM1LjM1OTM3NXptMCAwIiBmaWxsPSJ1cmwoI2MpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2MpIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvc3ZnPg==" /></a><br></div>
			<span class="text-sm mr-2">Profile</span>
			<div>
			<a href="${appName}user/changePassword?id=${rentee.id}"><img class=" mr-2 transform hover:scale-110 motion-reduce:transform-none"
					width="25" height="25" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxsaW5lYXJHcmFkaWVudCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJsaW5lYXItZ3JhZGllbnQiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMTA1LjU5MiIgeDI9IjQzOC40MDgiIHkxPSI0NzYuOTA2IiB5Mj0iMTQ0LjA5Ij48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiM0MWRmZDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiNlZTgzZWYiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImdyYWRpZW50Ij48cGF0aCBkPSJtMjU2IDI2NGE4MCA4MCAwIDEgMCA4MCA4MCA4MC4wOTEgODAuMDkxIDAgMCAwIC04MC04MHptMzYuNjYgMTMyLjQxM2ExMDguODE1IDEwOC44MTUgMCAwIDAgOS4xODQtMjYuODMgOCA4IDAgMCAwIC0xNS42ODQtMy4xNjYgOTIuODQ2IDkyLjg0NiAwIDAgMSAtMTEuNDI2IDI5LjQ3N2wtNC43OTQgNy45OWE3Ljk2MyA3Ljk2MyAwIDAgMCAtMS4wMjcgMi44MDYgNjMuOTk0IDYzLjk5NCAwIDAgMSAtMTEuNTYzIDEuMjc2bDcuMTEtMTEuODVhOCA4IDAgMCAwIC0xMy43Mi04LjIzMmwtOS42IDE2YTguMDE0IDguMDE0IDAgMCAwIC0uODkzIDIuMTQ5IDYzLjQ4NiA2My40ODYgMCAwIDEgLTguNzc5LTIuOTNsMTcuMjE5LTI4LjdhNTEuMzQ5IDUxLjM0OSAwIDAgMCA3LjMxMy0yNi40MDMgNCA0IDAgMCAxIDggMHY4YTM1LjMxNCAzNS4zMTQgMCAwIDEgLTEuMzgyIDkuNzg0IDggOCAwIDEgMCAxNS4zNzQgNC40MzIgNTEuMzI0IDUxLjMyNCAwIDAgMCAyLjAwOC0xNC4yMTZ2LThhMjAgMjAgMCAwIDAgLTQwIDAgMzUuMzM3IDM1LjMzNyAwIDAgMSAtNS4wMzQgMTguMTc0bC0xNy4zODUgMjguOTc2YTY0LjAwOCA2NC4wMDggMCAxIDEgNzUuMDc5IDEuMjYzem0xMS4wNzItNTMuMjkyYTggOCAwIDAgMSAtNy4wNzMgOC44MzEgOC4zMjYgOC4zMjYgMCAwIDEgLS44ODguMDQ4IDggOCAwIDAgMSAtNy45NDItNy4xMjEgMjcuOTQ2IDI3Ljk0NiAwIDAgMCAtMjcuODI5LTI0Ljg3OSA4IDggMCAwIDEgMC0xNiA0My45MjYgNDMuOTI2IDAgMCAxIDQzLjczMiAzOS4xMjF6bS02MC4xNDMtMjguMTUzYTggOCAwIDAgMSAtMS4xODYgMTEuMjUxIDI3LjkwNSAyNy45MDUgMCAwIDAgLTEwLjQwMyAyMS43ODEgNDIuMzY2IDQyLjM2NiAwIDAgMSAtOS4yNDkgMjYuMzY4bC01LjMgNi42M2E4IDggMCAwIDEgLTEyLjQ5NC0xMGw1LjMtNi42MjlhMjYuMzA2IDI2LjMwNiAwIDAgMCA1Ljc0My0xNi4zNjkgNDMuODM1IDQzLjgzNSAwIDAgMSAxNi4zMzgtMzQuMjE5IDggOCAwIDAgMSAxMS4yNTEgMS4xODd6bTIwLjQxMSAxMzMuMDMyYTggOCAwIDEgMSAtOC04IDggOCAwIDAgMSA4IDh6bS0zMiAwYTYgNiAwIDEgMSAtNi02IDYgNiAwIDAgMSA2IDZ6bTYwIDBhNiA2IDAgMSAxIC02LTYgNiA2IDAgMCAxIDYgNnptLTE2NC0yODB2LTI0YTggOCAwIDAgMSAxNiAwdjI0YTggOCAwIDAgMSAtMTYgMHptMCAzMmE4IDggMCAwIDEgMTYgMHY4YTggOCAwIDAgMSAtMTYgMHptMjY0IDMyaC04di05NmExMTIgMTEyIDAgMCAwIC0yMjQgMHY0OGEzMiAzMiAwIDAgMCA2NCAwdi00OGE0OCA0OCAwIDAgMSA5NiAwdjk2aC0xOTBhMTguMDIxIDE4LjAyMSAwIDAgMCAtMTggMTh2MjMwYTggOCAwIDAgMCA4IDhoMzA0YTggOCAwIDAgMCA4LTh2LTIzMGExOC4wMjEgMTguMDIxIDAgMCAwIC0xOC0xOHptLTEyMC0xNjBhNjQuMDcyIDY0LjA3MiAwIDAgMCAtNjQgNjR2NDhhMTYgMTYgMCAwIDEgLTMyIDB2LTQ4YTk2IDk2IDAgMCAxIDE5MiAwdjk2aC0zMnYtOTZhNjQuMDcyIDY0LjA3MiAwIDAgMCAtNjQtNjR6bS0xNDQgMTc4YTIgMiAwIDAgMSAyLTJoMjU0djIyNGgtMjU2em0yODggMHYyMjJoLTE2di0yMjRoMTRhMiAyIDAgMCAxIDIgMnoiIGZpbGw9InVybCgjbGluZWFyLWdyYWRpZW50KSIgZGF0YS1vcmlnaW5hbD0idXJsKCNsaW5lYXItZ3JhZGllbnQpIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvZz48L3N2Zz4=" /></a></div>
			<span class="text-sm mr-2 ">Password</span>
			</div>
		</c:if>
        <%}%>
		<%}%>
	</div>

<!-- RENTED HOUSES -->

<div class="container-sm flex flex-col justify-center border-l-2 border-fuchsia-900 h-100 w-100 ">
<h2 class="w-100  text-center text-gray-700 mt-3 tracking-widest antialiased">RENTED HOUSES</h2>
<c:forEach items="${rentee.getRentedHouses()}" var="house">

<div class="container-xl mr-2 ">
 <div class="card mb-3 mt-3 shadow" style="max-width: 600px;">
        <div class="row g-0">
          <div class="col-md-4">
            <img  class="w-full h-full object-cover shadow-sm " src="${house.houseImage}" alt="House Image">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              
              <a href="${appName}house/detail?id=${house.id}" class="btn  shadow-sm bg-indigo-400 hover:bg-indigo-100 text-gray-50 hover:text-gray-700">More Details</a>
              <div class="px-1 pt-3 pb-4 ">
                <div class="text-xs uppercase font-bold text-gray-600 tracking-wide">Owner</div>
                <div class="flex items-center pt-2">
                    <a href="${appName}user/ownerProfile?id=${house.user.id}" class="">
                    <div class="bg-cover bg-center w-10 h-10 rounded-full mr-3 ring-4 ring-red-500 ring-opacity-50" style="background-image: url(${house.user.userImage})"></div></a>
                    
                    <div>
                        <p class="font-bold text-gray-900">${house.user.firstName} ${house.user.lastName}</p>
                    </div>
               </div>
               </div>
              <div class="flex flex-row w-100 justify-between ">
               <p class="card-text"><small class="text-muted ">Last updated: ${house.updateAt}</small></p>
               <% if(session.getAttribute("user") != null) {%>
                 <% if(session.getAttribute("userRole").equals("rentee")){ %> 
                <c:if test="${rentee.id == user.id}">
                    <div class="flex flex-row w-10 justify-evenly " >
     				 <div><a href="${appName}house/leave?id=${house.id}&renteeId=${rentee.id}"> <img class=" mr-10 transform hover:scale-110 motion-reduce:transform-none" width="20" height="20"  src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTUwMS4wODQsMjk1Ljk4MmgtMTcuNDYyYzAtOC4zOTgsMC0xMy45MTQsMC0yMi4xMjZjMC01LjU3LTQuNTE1LTEwLjA4Ni0xMC4wODYtMTAuMDg2aC01Ljk2NCAgICBjMC43MDktOC43MTctNC45MTQtMTYuOTM4LTEzLjY3Mi0xOS4xODljLTYuOTYtMS43ODktNTAuODUxLTEzLjA3LTU3LjYyLTE0LjgxbDE4LjU2MS00OC42MTEgICAgYzUuMzc0LTE0LjA3Ni0xLjY3My0yOS44NTItMTUuNzYxLTM1LjIzMWwtNDIuNDktMTYuNDRjLTguMTQzLTMuMTUxLTE2Ljg5MS0zLjk1Ni0yNS40NzktMi4zOCAgICBjLTMzLjcxNiw2LjE4NS04OS4xMjksMTYuMzUyLTk1LjUzMSwxNy41MjJjLTQuMjMzLDAuNzc0LTguMDU2LDMuMDE0LTEwLjgwMiw2LjMyN2wtMzcuNzE5LDQ1LjUyM1Y1OS4zNjkgICAgYzAtNS4zNTgtMy41MzUtMTAuMDcyLTguNjc4LTExLjU3M2wtODEuMTQtMjMuNjhoMjEwLjM3N3Y4OS4wMjVsMjQuMTEyLTMuMTVWMTIuMDZjMC02LjY1OC01LjM5OC0xMi4wNTYtMTIuMDU2LTEyLjA1NiAgICBjLTEuNzA5LDAtMzA2LjgzMi0wLjAyNy0zMDcuNzY0LDAuMDVDNS41MjYsMC41OCwwLjg0MSw1Ljk0NiwwLjg0MSwxMi4wNmMwLDIuOTU4LTAuMDU3LDQ0MC43OSwwLjEwNCw0NDIuMDc1ICAgIGMwLjYxMyw0Ljg3Miw0LjA5NSw4Ljc1NSw4LjU3NSwxMC4wNjRsMTYyLjEwNyw0Ny4zMDljNy43MjMsMi4yNTcsMTUuNDMzLTMuNTYxLDE1LjQzMy0xMS41NzNWMjUwLjI1ICAgIGMyLjc5NC0xLjA5Myw1LjM2Ny0yLjg2NCw3LjQxNi01LjMzOWw1NC4yNDMtNjUuNDY3YzYuNjAzLTEuMjA3LDUzLjAxOS05LjY5Nyw2MC40NzktMTEuMDYxbC00MC43NjQsMTA2Ljc2MiAgICBjMCwwLDEuNDUzLTMuNjcyLTI1LjcxMiw4OS4zMThsLTMxLjYxNCw2MC4wOTN2NTYuOTM0aDAuMDAxYzkuMzA1LDIuMjcsMTkuMjctMS45NzcsMjMuOTA4LTEwLjc5NWw0Ni40MzgtODguMjczICAgIGMwLjY2My0xLjI1OSwxLjE5Ny0yLjU4MiwxLjU5Ny0zLjk0OGwyNS42ODktODcuOTM4YzEuODY4LDAuNzEzLDAuOTQ4LDAuMzYyLDUuNzg5LDIuMjFjNi40NjksMTAuMTYsMzguMzEsNjAuMTY4LDQ0Ljc1MSw3MC4yODYgICAgbC0zMi4xNjksOTAuNjA0Yy0zLjk0LDExLjA5NiwxLjg2MSwyMy4yODYsMTIuOTU4LDI3LjIyNmMxMS4wMzYsMy45MTksMjMuMjc5LTEuODQxLDI3LjIyNi0xMi45NThsMzUuNjUxLTEwMC40MTEgICAgYzIuMTQzLTYuMDM4LDEuNTAzLTEyLjkxNy0yLjEwNy0xOC41ODVsLTMxLjI4Ni00OS4xMzdjNC41NTktMTEuOTQxLDkuMDAzLTIzLjU4LDEzLjU4NC0zNS41NzggICAgYzE3LjM3MSw0LjQ2NSwyOC44MDcsNy40MDUsMjguODA3LDcuNDA1bC0wLjI2MywyNC4zODZIMzk0LjIyYy0yLjI2OSwwLTQuMzU1LDAuNzU5LTYuMDM5LDIuMDIybDI2LjcxMyw0MS45NTUgICAgYzYuMzI3LDkuOTM3LDcuNjk1LDIyLjAwNCwzLjc1NCwzMy4xMDZsLTQuNDM3LDEyLjQ5OGg4Ni44NzVjNS41NjksMCwxMC4wODMtNC41MTUsMTAuMDgzLTEwLjA4M3YtNjkuNDE0ICAgIEM1MTEuMTY5LDMwMC40OTcsNTA2LjY1NCwyOTUuOTgyLDUwMS4wODQsMjk1Ljk4MnogTTE1Mi42OTgsMzE2Ljk3YzAsNi42NTgtNS4zOTgsMTIuMDU2LTEyLjA1NiwxMi4wNTYgICAgYy02LjY1OCwwLTEyLjA1Ni01LjM5OC0xMi4wNTYtMTIuMDU2di02OS41OTZjMC02LjY1OCw1LjM5OC0xMi4wNTYsMTIuMDU2LTEyLjA1NmM2LjY1OCwwLDEyLjA1Niw1LjM5OCwxMi4wNTYsMTIuMDU2VjMxNi45N3ogICAgIE00NjMuNDUzLDI5NS45ODJoLTAuMDAxaC0zMS41OTl2LTEyLjA0MWgzMS42VjI5NS45ODJ6IiBmaWxsPSIjN2FkNThjIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0zMTUuODA1LDMyNS43NjdsLTguMTg4LDI4LjAyOHY4Ni43NzdoLTM3LjkyOWwtMTIuNjg1LDI0LjExM2g1Mi40MDVjLTAuNTc5LTUuNTUyLDAuMDgxLTExLjIwNywyLjAwNS0xNi42MjQgICAgbDIwLjMxOC01Ny4yMjJ2LTQwLjA2TDMxNS44MDUsMzI1Ljc2N3oiIGZpbGw9IiM3YWQ1OGMiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTQxNi45MTQsNTAuNjM0Yy0yMC44NDUtNy45NTktNDQuMTk1LDIuNDg3LTUyLjE1NCwyMy4zMzJjLTguMDI5LDIxLjAyNSwyLjcwMSw0NC4yNzcsMjMuMzMyLDUyLjE1NCAgICBjMjAuNjU2LDcuODg4LDQ0LjEzNi0yLjMzMiw1Mi4xNTQtMjMuMzMyQzQ0OC4yMDQsODEuOTQzLDQzNy43NTksNTguNTkzLDQxNi45MTQsNTAuNjM0eiIgZmlsbD0iIzdhZDU4YyIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPgoJPC9nPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjwvZz48L3N2Zz4=" /></a></div>
   				    </div>
   				    </c:if>
   				  <%} %>
   			    <%} %>
   			</div>
   			  </div>
    
                 
            </div>
          </div>
        </div>
      </div>
</c:forEach>

	</div>
</div>


<jsp:include page="../shared/footer.jsp" />
