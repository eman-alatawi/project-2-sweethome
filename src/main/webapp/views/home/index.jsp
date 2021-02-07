<jsp:include page="../shared/_layout.jsp" />

      <div class=" flex  flex-row justify-center ">
      <div id="carouselExampleCaptions" class="carousel slide max-w-full w-full  shadow" data-bs-ride="carousel">
        <ol class="carousel-indicators">
          <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"></li>
          <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"></li>
          <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner ">
          <div class="carousel-item active">
            <img src="https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h3 class="text-3xl">Luxury homes</h3>
            </div>
          </div>
          <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1554995207-c18c203602cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5 class="text-3xl">Houses with beautiful sunlight</h5>
             
            </div>
          </div>
          <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5 class="text-3xl">Homes for relaxation</h5>
            
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </a>
      </div>
       </div>
       <div class="flex flex-row justify-center pt-2  h-full  bg-red-200  shadow ">
      <div class="btn  bg-green-400 font-bold tracking-widest w-36  shadow-sm  text-gray-50 hover:text-gray-100 "><a href="${appName}user/joinus">Join Us</a></div>
     </div>
        
 
 <jsp:include page="../shared/footer.jsp" />   