
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="CSS/profile.css">
</head>
<body>
	<div class="container emp-profile"> 
            <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                       <%= request.getAttribute("empName") %>
                                    </h5>
                                    <h6>
                                       <%= request.getAttribute("e_type") %>
                                    </h6>
                                    <p class="proile-rating">Birth date: <span> <%= request.getAttribute("dob") %>  </span></p >
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                  <div class="row">
                                      <div class="col-md-6">
                                          <label>Username</label>
                                      </div>
                                      <div class="col-md-6">
                                          <p><%= request.getAttribute("username") %></p>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <label>Name</label>
                                      </div>
                                      <div class="col-md-6">
                                        	<p><%= request.getAttribute("empName") %></p>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <label>Email</label>
                                      </div>
                                      <div class="col-md-6">
                                          <p><%= request.getAttribute("email") %></p>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <label>Phone</label>
                                      </div>
                                      <div class="col-md-6">
                                          <p><%= request.getAttribute("phone") %></p>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <label>Department</label>
                                      </div>
                                      <div class="col-md-6">
                                          <p><%= request.getAttribute("e_type") %></p>
                                      </div>
                                  </div>
                                        
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</body>
</html>