<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sweet Home</title>

<link rel="icon" href="images/home.svg" />


<!-- CSS only -->
<link rel="stylesheet" href="../css/myStyles.css">
<link rel="stylesheet" href="css/myStyles.css">
<link href="/tailwind.css" rel="stylesheet"> 

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">


</head>
<body>

<% if(session.getAttribute("user") != null) {%>

  <nav class="navbar navbar-expand-lg  bg-gray-50 font-mono shadow-md ">
    <div class="container-fluid">
      <a class="navbar-brand" href="${appName}"><img class=" ml-7 h-14" alt="logo"  src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0ibTM3My4xNDMgNTEuNDA2Yy00OS40MzguMDc0LTkyLjc2NCAyNi4wMzQtMTE3LjI1NCA2NS4wMTctMjQuNjAzLTM4LjkwOS02OC4wMDgtNjQuNzQtMTE3LjQ0Ny02NC42NjctNzYuNTc0LjExNi0xMzguNTU2IDYyLjI4NC0xMzguNDQyIDEzOC44NTcuMDkxIDYwLjc0OSA0NC4zNSAxMjguODMzIDEwMi4wMjMgMTg1LjY3NnYtMTI4LjI0M2wxNTQuMDQtNTcuODMxIDE1NC4wNDEgNTcuODMxdjEyOC4yMDRjNTcuNzEyLTU3LjEgMTAxLjk4Ni0xMjUuNTAzIDEwMS44OTYtMTg2LjQwMi0uMTE1LTc2LjU3NC02Mi4yODItMTM4LjU1Ni0xMzguODU3LTEzOC40NDJ6IiBmaWxsPSIjZjRjOGQyIiBkYXRhLW9yaWdpbmFsPSIjZjRjOGQyIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggZD0ibTEwMi4wMjMgMjQ4LjA0NnYxMjguMjQyYzM4LjgxIDM4LjI1MiA4My42OTIgNzEuNDE1IDEyNS4yODcgOTMuODE3IDE4LjIyMiA5LjgxNCA0MC4wMjIgOS43ODMgNTguMjE0LS4wODYgNDEuMzc2LTIyLjQ0NCA4NS45ODItNTUuNTggMTI0LjU4LTkzLjc3di0xMjguMjAzbC0xNTQuMDQxLTU3LjgzMnoiIGZpbGw9IiNmYmYxY2YiIGRhdGEtb3JpZ2luYWw9IiNmYmYxY2YiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMTAyLjAyMyAyNDguMDQ2djU4Ljg5M2MuOTctLjI4NyAxLjkzNy0uNTk0IDIuODkzLS45NDJsMTUwLjM5My01NC43MzhjLjI0Mi0uMDg4LjQ5Ny0uMTMzLjc1NS0uMTMzLjI1OSAwIC41MTMuMDQ1Ljc1NS4xMzNsMTUwLjM5MiA1NC43MzhjLjk1Ny4zNDggMS45MjMuNjU1IDIuODk0Ljk0MnYtNTguODkzbC0xNTQuMDQxLTU3LjgzMnoiIGZpbGw9IiNmYWUwYmQiIGRhdGEtb3JpZ2luYWw9IiNmYWUwYmQiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMzI2LjgyMSAzNzMuMjM0YzAtMTIuOTg4LTEwLjUyOS0yMy41MTYtMjMuNTE2LTIzLjUxNmgtOTQuNDgyYy0xMi45ODggMC0yMy41MTYgMTAuNTI5LTIzLjUxNiAyMy41MTZ2NzEuMzE1YzE0LjEzNSA5LjU1NSAyOC4yNSAxOC4xNDkgNDIuMDA0IDI1LjU1NyAxOC4yMjIgOS44MTQgNDAuMDIyIDkuNzgzIDU4LjIxNC0uMDg2IDEzLjUyNy03LjMzOCAyNy40MDEtMTUuODI3IDQxLjI5Ny0yNS4yNTN2LTcxLjUzM3oiIGZpbGw9IiNlMGI3OTkiIGRhdGEtb3JpZ2luYWw9IiNlMGI3OTkiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMTUwLjE5MSAxMjcuMTM0Yy00LjAyMyAyLjE4My04Ljg0NCAyLjE5LTEyLjg3NC4wMTktMjIuODY5LTEyLjMxNy01MC4yMzctMzkuMzM2LTUwLjI3MS02MS44MTItLjAyNS0xNi45MzUgMTMuNjgyLTMwLjY4MyAzMC42MTctMzAuNzA5IDEwLjkzNC0uMDE2IDIwLjUzMyA1LjY5NyAyNS45NzQgMTQuMzAxIDUuNDE2LTguNjIxIDE0Ljk5OC0xNC4zNjIgMjUuOTMxLTE0LjM3OSAxNi45MzUtLjAyNSAzMC42ODQgMTMuNjgyIDMwLjcwOSAzMC42MTcuMDMzIDIyLjQ3OC0yNy4yNTQgNDkuNTc4LTUwLjA4NiA2MS45NjN6IiBmaWxsPSIjZTc4ODlkIiBkYXRhLW9yaWdpbmFsPSIjZTc4ODlkIiBzdHlsZT0iIj48L3BhdGg+PGc+PGcgZmlsbD0iI2VkYTFhYiI+PGVsbGlwc2UgY3g9IjE3NS4zMjIiIGN5PSIzMTYuMTk1IiByeD0iMjkuNzkyIiByeT0iMjMuNzI1IiBmaWxsPSIjZWRhMWFiIiBkYXRhLW9yaWdpbmFsPSIjZWRhMWFiIiBzdHlsZT0iIj48L2VsbGlwc2U+PGVsbGlwc2UgY3g9IjMzNi44MDYiIGN5PSIzMTYuMTk1IiByeD0iMjkuNzkyIiByeT0iMjMuNzI1IiBmaWxsPSIjZWRhMWFiIiBkYXRhLW9yaWdpbmFsPSIjZWRhMWFiIiBzdHlsZT0iIj48L2VsbGlwc2U+PC9nPjxnIGZpbGw9IiM0ZTU2NjAiPjxwYXRoIGQ9Im0yMDYuODY1IDI5Ny44NzhjLTQuMTQyIDAtNy41LTMuMzU4LTcuNS03LjUgMC0zLjY4NC0yLjk5Ny02LjY4MS02LjY4MS02LjY4MXMtNi42ODEgMi45OTctNi42ODEgNi42ODFjMCA0LjE0Mi0zLjM1OCA3LjUtNy41IDcuNXMtNy41LTMuMzU4LTcuNS03LjVjMC0xMS45NTUgOS43MjYtMjEuNjgxIDIxLjY4MS0yMS42ODFzMjEuNjgxIDkuNzI2IDIxLjY4MSAyMS42ODFjMCA0LjE0My0zLjM1OCA3LjUtNy41IDcuNXoiIGZpbGw9IiM0ZTU2NjAiIGRhdGEtb3JpZ2luYWw9IiM0ZTU2NjAiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMzMzLjYyNCAyOTcuODc4Yy00LjE0MyAwLTcuNS0zLjM1OC03LjUtNy41IDAtMy42ODQtMi45OTctNi42ODEtNi42ODEtNi42ODFzLTYuNjgxIDIuOTk3LTYuNjgxIDYuNjgxYzAgNC4xNDItMy4zNTcgNy41LTcuNSA3LjVzLTcuNS0zLjM1OC03LjUtNy41YzAtMTEuOTU1IDkuNzI2LTIxLjY4MSAyMS42ODEtMjEuNjgxczIxLjY4MSA5LjcyNiAyMS42ODEgMjEuNjgxYzAgNC4xNDMtMy4zNTcgNy41LTcuNSA3LjV6IiBmaWxsPSIjNGU1NjYwIiBkYXRhLW9yaWdpbmFsPSIjNGU1NjYwIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggZD0ibTI1Ni4wNjQgMzIxLjMwNWMtNy45MzMgMC0xNS40NzYtMy40MzYtMjAuNjk2LTkuNDI2LTIuNzIxLTMuMTIzLTIuMzk2LTcuODYuNzI3LTEwLjU4MiAzLjEyMi0yLjcyMSA3Ljg2LTIuMzk2IDEwLjU4Mi43MjcgMi4zNzEgMi43MiA1Ljc5MiA0LjI4IDkuMzg4IDQuMjggMy41OTUgMCA3LjAxNy0xLjU2IDkuMzg3LTQuMjggMi43Mi0zLjEyMyA3LjQ1OC0zLjQ0OCAxMC41ODItLjcyNyAzLjEyMiAyLjcyMSAzLjQ0OCA3LjQ1OS43MjcgMTAuNTgyLTUuMjIxIDUuOTkxLTEyLjc2NSA5LjQyNi0yMC42OTcgOS40MjZ6IiBmaWxsPSIjNGU1NjYwIiBkYXRhLW9yaWdpbmFsPSIjNGU1NjYwIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvZz48ZWxsaXBzZSBjeD0iMjkyLjY2NCIgY3k9IjQwNy42NzIiIGZpbGw9IiM0ZTU2NjAiIHJ4PSI3Ljg5MyIgcnk9IjcuODkzIiB0cmFuc2Zvcm09Im1hdHJpeCguOTM5IC0uMzQzIC4zNDMgLjkzOSAtMTIxLjk4NyAxMjQuOTgzKSIgZGF0YS1vcmlnaW5hbD0iIzRlNTY2MCIgc3R5bGU9IiI+PC9lbGxpcHNlPjxwYXRoIGQ9Im0xODUuMzA2IDIzMS4wMjNoLTgzLjI4M3YtOTguMTM0YzAtOC4xODYgNi42MzYtMTQuODIzIDE0LjgyMy0xNC44MjNoNTMuNjM4YzguMTg2IDAgMTQuODIzIDYuNjM2IDE0LjgyMyAxNC44MjN2OTguMTM0eiIgZmlsbD0iI2UwYjc5OSIgZGF0YS1vcmlnaW5hbD0iI2UwYjc5OSIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIGQ9Im0xODUuMzA2IDE0Ni41NTEtODMuMjgzIDMwLjMxM3Y1NC4xNTloODMuMjgzeiIgZmlsbD0iI2QxOTg2ZiIgZGF0YS1vcmlnaW5hbD0iI2QxOTg2ZiIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIGQ9Im0yODEuMDQ5IDE2Ni4wNjkgMTQzLjg2MyA1Mi4zNjJjOC4yODcgMy4wMTYgMTMuODAyIDEwLjg5MyAxMy44MDIgMTkuNzExdjIxLjk5MmMwIDEwLjI4LTEwLjIxNiAxNy40MzMtMTkuODc2IDEzLjkxN2wtMTUwLjM5Mi01NC43MzhjLTcuOTk4LTIuOTExLTE2Ljc2Ni0yLjkxMS0yNC43NjQgMGwtMTUwLjM5MyA1NC43MzljLTkuNjYgMy41MTYtMTkuODc2LTMuNjM4LTE5Ljg3Ni0xMy45MTd2LTIxLjk5MmMwLTguODE4IDUuNTE2LTE2LjY5NSAxMy44MDItMTkuNzExbDE0My44NjMtNTIuMzYyYzE2LjE0LTUuODc1IDMzLjgzMi01Ljg3NSA0OS45NzEtLjAwMXoiIGZpbGw9IiM4ZGFlZTEiIGRhdGEtb3JpZ2luYWw9IiM4ZGFlZTEiIHN0eWxlPSIiPjwvcGF0aD48L2c+PC9nPjwvc3ZnPg==" />
      </a> 
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item "><a  href="${appName}" class="nav-link active text-indigo-400 tracking-widest text-xl transform skew-x-12   mr-10 font"
            aria-current="page" >Sweet Home</a></li>
          <li class="nav-item"><a class="nav-link active text-pink-700  hover:text-pink-400  mr-10 "
            aria-current="page" href="${appName}house/index"><i class="fas fa-home text-yellow-500"></i> Houses</a></li>
 
       

            
            <% if(! session.getAttribute("userRole").equals("rentee")){ %>
      <%--       <li class="nav-item"><a class="nav-link active text-pink-700  hover:text-pink-400  mr-10 "
            aria-current="page" href="${appName}house/add"><i class="fas fa-home text-yellow-500"></i><i class="fas fa-plus-square text-green-400"></i> Add House</a></li> --%>
            
             <li class="nav-item"><a class="nav-link active text-pink-700  hover:text-pink-400  mr-10 "
            aria-current="page" href="${appName}room/index"><i class="fas fa-couch text-indigo-400"></i> Rooms</a></li>
           
            
            <%--  <li class="nav-item"><a class="nav-link active text-pink-700  hover:text-pink-400  mr-10"
            aria-current="page" href="${appName}room/add"><i class="fas fa-couch text-indigo-400"></i><i class="fas fa-plus-square text-green-400"></i> Add Rooms</a></li> --%>
            
            <%} %>
        </ul>

        <span class="float-right">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          
          <% if(session.getAttribute("userRole").equals("owner")){ %>
           <li class="nav-item"><a href="${appName}user/ownerProfile?id=${user.id}" ><img class="object-cover  w-10 h-10 rounded-full mr-10 ring-4 ring-indigo-400 ring-opacity-50" src="${user.userImage}" alt="profile photo"/> </a>${user.firstName}</li>
           <%} else { %>
            <li class="nav-item"><a href="${appName}user/renteeProfile?id=${user.id}" ><img class="object-cover  w-10 h-10 rounded-full mr-10 ring-4 ring-indigo-400 ring-opacity-50" src="${user.userImage}" alt="profile photo"/></a>${user.firstName}</li>
            <%} %>
            
            <li class="nav-item "><a class="nav-link active a mr-20 text-pink-700 hover:text-pink-400 ring-4 ring-pink-500 ring-opacity-50 rounded"
              aria-current="page" href="${appName}user/signout">Sign out</a></li>
          </ul>
        </span>
      </div>
    </div>
  </nav>

<% } else { %>
  <nav class="navbar navbar-expand-lg  bg-gray-50 font-mono shadow-md  ">
    <div class="container-fluid">
      <a class="navbar-brand" href="${appName}"><img class=" ml-7 h-14" alt="logo" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0ibTM3My4xNDMgNTEuNDA2Yy00OS40MzguMDc0LTkyLjc2NCAyNi4wMzQtMTE3LjI1NCA2NS4wMTctMjQuNjAzLTM4LjkwOS02OC4wMDgtNjQuNzQtMTE3LjQ0Ny02NC42NjctNzYuNTc0LjExNi0xMzguNTU2IDYyLjI4NC0xMzguNDQyIDEzOC44NTcuMDkxIDYwLjc0OSA0NC4zNSAxMjguODMzIDEwMi4wMjMgMTg1LjY3NnYtMTI4LjI0M2wxNTQuMDQtNTcuODMxIDE1NC4wNDEgNTcuODMxdjEyOC4yMDRjNTcuNzEyLTU3LjEgMTAxLjk4Ni0xMjUuNTAzIDEwMS44OTYtMTg2LjQwMi0uMTE1LTc2LjU3NC02Mi4yODItMTM4LjU1Ni0xMzguODU3LTEzOC40NDJ6IiBmaWxsPSIjZjRjOGQyIiBkYXRhLW9yaWdpbmFsPSIjZjRjOGQyIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggZD0ibTEwMi4wMjMgMjQ4LjA0NnYxMjguMjQyYzM4LjgxIDM4LjI1MiA4My42OTIgNzEuNDE1IDEyNS4yODcgOTMuODE3IDE4LjIyMiA5LjgxNCA0MC4wMjIgOS43ODMgNTguMjE0LS4wODYgNDEuMzc2LTIyLjQ0NCA4NS45ODItNTUuNTggMTI0LjU4LTkzLjc3di0xMjguMjAzbC0xNTQuMDQxLTU3LjgzMnoiIGZpbGw9IiNmYmYxY2YiIGRhdGEtb3JpZ2luYWw9IiNmYmYxY2YiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMTAyLjAyMyAyNDguMDQ2djU4Ljg5M2MuOTctLjI4NyAxLjkzNy0uNTk0IDIuODkzLS45NDJsMTUwLjM5My01NC43MzhjLjI0Mi0uMDg4LjQ5Ny0uMTMzLjc1NS0uMTMzLjI1OSAwIC41MTMuMDQ1Ljc1NS4xMzNsMTUwLjM5MiA1NC43MzhjLjk1Ny4zNDggMS45MjMuNjU1IDIuODk0Ljk0MnYtNTguODkzbC0xNTQuMDQxLTU3LjgzMnoiIGZpbGw9IiNmYWUwYmQiIGRhdGEtb3JpZ2luYWw9IiNmYWUwYmQiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMzI2LjgyMSAzNzMuMjM0YzAtMTIuOTg4LTEwLjUyOS0yMy41MTYtMjMuNTE2LTIzLjUxNmgtOTQuNDgyYy0xMi45ODggMC0yMy41MTYgMTAuNTI5LTIzLjUxNiAyMy41MTZ2NzEuMzE1YzE0LjEzNSA5LjU1NSAyOC4yNSAxOC4xNDkgNDIuMDA0IDI1LjU1NyAxOC4yMjIgOS44MTQgNDAuMDIyIDkuNzgzIDU4LjIxNC0uMDg2IDEzLjUyNy03LjMzOCAyNy40MDEtMTUuODI3IDQxLjI5Ny0yNS4yNTN2LTcxLjUzM3oiIGZpbGw9IiNlMGI3OTkiIGRhdGEtb3JpZ2luYWw9IiNlMGI3OTkiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMTUwLjE5MSAxMjcuMTM0Yy00LjAyMyAyLjE4My04Ljg0NCAyLjE5LTEyLjg3NC4wMTktMjIuODY5LTEyLjMxNy01MC4yMzctMzkuMzM2LTUwLjI3MS02MS44MTItLjAyNS0xNi45MzUgMTMuNjgyLTMwLjY4MyAzMC42MTctMzAuNzA5IDEwLjkzNC0uMDE2IDIwLjUzMyA1LjY5NyAyNS45NzQgMTQuMzAxIDUuNDE2LTguNjIxIDE0Ljk5OC0xNC4zNjIgMjUuOTMxLTE0LjM3OSAxNi45MzUtLjAyNSAzMC42ODQgMTMuNjgyIDMwLjcwOSAzMC42MTcuMDMzIDIyLjQ3OC0yNy4yNTQgNDkuNTc4LTUwLjA4NiA2MS45NjN6IiBmaWxsPSIjZTc4ODlkIiBkYXRhLW9yaWdpbmFsPSIjZTc4ODlkIiBzdHlsZT0iIj48L3BhdGg+PGc+PGcgZmlsbD0iI2VkYTFhYiI+PGVsbGlwc2UgY3g9IjE3NS4zMjIiIGN5PSIzMTYuMTk1IiByeD0iMjkuNzkyIiByeT0iMjMuNzI1IiBmaWxsPSIjZWRhMWFiIiBkYXRhLW9yaWdpbmFsPSIjZWRhMWFiIiBzdHlsZT0iIj48L2VsbGlwc2U+PGVsbGlwc2UgY3g9IjMzNi44MDYiIGN5PSIzMTYuMTk1IiByeD0iMjkuNzkyIiByeT0iMjMuNzI1IiBmaWxsPSIjZWRhMWFiIiBkYXRhLW9yaWdpbmFsPSIjZWRhMWFiIiBzdHlsZT0iIj48L2VsbGlwc2U+PC9nPjxnIGZpbGw9IiM0ZTU2NjAiPjxwYXRoIGQ9Im0yMDYuODY1IDI5Ny44NzhjLTQuMTQyIDAtNy41LTMuMzU4LTcuNS03LjUgMC0zLjY4NC0yLjk5Ny02LjY4MS02LjY4MS02LjY4MXMtNi42ODEgMi45OTctNi42ODEgNi42ODFjMCA0LjE0Mi0zLjM1OCA3LjUtNy41IDcuNXMtNy41LTMuMzU4LTcuNS03LjVjMC0xMS45NTUgOS43MjYtMjEuNjgxIDIxLjY4MS0yMS42ODFzMjEuNjgxIDkuNzI2IDIxLjY4MSAyMS42ODFjMCA0LjE0My0zLjM1OCA3LjUtNy41IDcuNXoiIGZpbGw9IiM0ZTU2NjAiIGRhdGEtb3JpZ2luYWw9IiM0ZTU2NjAiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMzMzLjYyNCAyOTcuODc4Yy00LjE0MyAwLTcuNS0zLjM1OC03LjUtNy41IDAtMy42ODQtMi45OTctNi42ODEtNi42ODEtNi42ODFzLTYuNjgxIDIuOTk3LTYuNjgxIDYuNjgxYzAgNC4xNDItMy4zNTcgNy41LTcuNSA3LjVzLTcuNS0zLjM1OC03LjUtNy41YzAtMTEuOTU1IDkuNzI2LTIxLjY4MSAyMS42ODEtMjEuNjgxczIxLjY4MSA5LjcyNiAyMS42ODEgMjEuNjgxYzAgNC4xNDMtMy4zNTcgNy41LTcuNSA3LjV6IiBmaWxsPSIjNGU1NjYwIiBkYXRhLW9yaWdpbmFsPSIjNGU1NjYwIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggZD0ibTI1Ni4wNjQgMzIxLjMwNWMtNy45MzMgMC0xNS40NzYtMy40MzYtMjAuNjk2LTkuNDI2LTIuNzIxLTMuMTIzLTIuMzk2LTcuODYuNzI3LTEwLjU4MiAzLjEyMi0yLjcyMSA3Ljg2LTIuMzk2IDEwLjU4Mi43MjcgMi4zNzEgMi43MiA1Ljc5MiA0LjI4IDkuMzg4IDQuMjggMy41OTUgMCA3LjAxNy0xLjU2IDkuMzg3LTQuMjggMi43Mi0zLjEyMyA3LjQ1OC0zLjQ0OCAxMC41ODItLjcyNyAzLjEyMiAyLjcyMSAzLjQ0OCA3LjQ1OS43MjcgMTAuNTgyLTUuMjIxIDUuOTkxLTEyLjc2NSA5LjQyNi0yMC42OTcgOS40MjZ6IiBmaWxsPSIjNGU1NjYwIiBkYXRhLW9yaWdpbmFsPSIjNGU1NjYwIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvZz48ZWxsaXBzZSBjeD0iMjkyLjY2NCIgY3k9IjQwNy42NzIiIGZpbGw9IiM0ZTU2NjAiIHJ4PSI3Ljg5MyIgcnk9IjcuODkzIiB0cmFuc2Zvcm09Im1hdHJpeCguOTM5IC0uMzQzIC4zNDMgLjkzOSAtMTIxLjk4NyAxMjQuOTgzKSIgZGF0YS1vcmlnaW5hbD0iIzRlNTY2MCIgc3R5bGU9IiI+PC9lbGxpcHNlPjxwYXRoIGQ9Im0xODUuMzA2IDIzMS4wMjNoLTgzLjI4M3YtOTguMTM0YzAtOC4xODYgNi42MzYtMTQuODIzIDE0LjgyMy0xNC44MjNoNTMuNjM4YzguMTg2IDAgMTQuODIzIDYuNjM2IDE0LjgyMyAxNC44MjN2OTguMTM0eiIgZmlsbD0iI2UwYjc5OSIgZGF0YS1vcmlnaW5hbD0iI2UwYjc5OSIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIGQ9Im0xODUuMzA2IDE0Ni41NTEtODMuMjgzIDMwLjMxM3Y1NC4xNTloODMuMjgzeiIgZmlsbD0iI2QxOTg2ZiIgZGF0YS1vcmlnaW5hbD0iI2QxOTg2ZiIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIGQ9Im0yODEuMDQ5IDE2Ni4wNjkgMTQzLjg2MyA1Mi4zNjJjOC4yODcgMy4wMTYgMTMuODAyIDEwLjg5MyAxMy44MDIgMTkuNzExdjIxLjk5MmMwIDEwLjI4LTEwLjIxNiAxNy40MzMtMTkuODc2IDEzLjkxN2wtMTUwLjM5Mi01NC43MzhjLTcuOTk4LTIuOTExLTE2Ljc2Ni0yLjkxMS0yNC43NjQgMGwtMTUwLjM5MyA1NC43MzljLTkuNjYgMy41MTYtMTkuODc2LTMuNjM4LTE5Ljg3Ni0xMy45MTd2LTIxLjk5MmMwLTguODE4IDUuNTE2LTE2LjY5NSAxMy44MDItMTkuNzExbDE0My44NjMtNTIuMzYyYzE2LjE0LTUuODc1IDMzLjgzMi01Ljg3NSA0OS45NzEtLjAwMXoiIGZpbGw9IiM4ZGFlZTEiIGRhdGEtb3JpZ2luYWw9IiM4ZGFlZTEiIHN0eWxlPSIiPjwvcGF0aD48L2c+PC9nPjwvc3ZnPg==" /></a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item "><a href="${appName}" class="nav-link active text-indigo-400 tracking-widest text-xl transform skew-x-12   mr-10 font"
            aria-current="page" >Sweet Home</a></li>
          <li class="nav-item"><a class="nav-link active text-pink-700  hover:text-pink-400  mr-10 "
            aria-current="page" href="${appName}house/index"><i class="fas fa-home text-yellow-500"></i> Houses</a></li>
 
        </ul>

        <span class="float-right">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item "><a class="nav-link active a mr-20 text-pink-700 hover:text-pink-400 ring-4 ring-pink-500 ring-opacity-50 rounded"
              aria-current="page" href="${appName}user/signin">Sign in</a></li>
          </ul>
        </span>
      </div>
    </div>
  </nav>
  
<% } %>


 <c:if test="${warning != null}">
<div class="alert alert-warning fade show" role="alert">
${warning}
</div>
<% session.removeAttribute("warning"); %>
</c:if>

<c:if test="${successfull != null}">
<div class="alert alert-success fade show" role="alert">
${successfull}
</div>
<% session.removeAttribute("successfull"); %>
</c:if>

<c:if test="${danger != null}">
<div class="alert alert-danger fade show" role="alert">
${danger}
</div>
<% session.removeAttribute("danger"); %>
</c:if>  

<c:if test="${info != null}">
<div class="alert alert-info fade show" role="alert">
${info}
</div>
<% session.removeAttribute("info"); %>
</c:if>   

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').fadeOut(4000);
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</body>
</html>