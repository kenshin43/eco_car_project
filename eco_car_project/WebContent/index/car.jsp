<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.CarDTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Car -->
    <section id="car" class="portfolio">
      <div class="container" >
        <div class="row">
          <div class="col-lg-12 mx-auto text-center">
            <h2>전기자동차</h2>
            <hr class="small">
            <div class="row">
            <div class="pagination">
 				 <a class="w3-btn" onclick="viewCarTable()"> < </a>
 			</div>
              <div class="col-md-3">
                <div class="portfolio-item">
                  <a href="#" id="car0">
                  </a>
                </div>
              </div>
              <div class="col-md-3">
                <div class="portfolio-item">
                  <a href="#" id="car1">
                  </a>
                </div>
              </div>
              <div class="col-md-3">
                <div class="portfolio-item">
                  <a href="#" id="car2">
                  </a>
                </div>
              </div>
              <div class="pagination">
  				 <a class="w3-btn" href="#">></a>
			  </div>
              </div>
        </div>
      </div>
    </section>
</body>
</html>