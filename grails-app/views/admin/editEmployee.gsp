<%@ page import="com.grails.RoleEmployee; com.grails.Company" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="home_view_style.css.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Stylesheet.css">

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>HRM | ${company.companyName} Edit Employee</title>
    <g:javascript>
    var userCheck=true;
    var req = true;
    function act(){
        //Field Check---------------------
        if(document.getElementById('firstName').value == "" || document.getElementById('lastName').value == "" || document.getElementById('email').value == "" || document.getElementById('username').value == "" || document.getElementById('password').value == ""){
            req = false;
            alert("Required fields are empty")
        }

        //Username check-------------------
        <% if (user != null) {
        for (com.administrate.User userDetail : user) {
    %>

        if(document.getElementById('username').value == "${userDetail.getUsername()}"){
             userCheck=false;
          }
        <% }
        } %>

        if(document.getElementById('username').value == "${userObject.getUsername()}"){
            userCheck=true;
        }

        if(req){
            if(userCheck){
                document.getElementById("editEmployee").submit();
            }else {
                userCheck = true;
                alert("Username already exists")
            }
        }else {
            req=true;
        }
    }
    </g:javascript>
</head>
<body>
<div class="col-md-12">
    <div class="col-md-12" style="background-color: white; padding:4px; padding-left: 0px; padding-right: 0px">
        <div class="col-md-10">
            <h2 style="text-align:left;color:darkorange;font-family: Verdana" >Human Resource Management </h2>
        </div>
        <div class="col-md-2" style="padding:20px;padding-bottom: 0px; height:100%; color: #666666" >
            Welcome ${username}<button class="btn btn-primary dropdown-toggle" style="border: 0px;color: black; background-color: white; padding-bottom: 3px; padding-top: 3px; padding-left: 6px;padding-right: 6px" type="button" data-toggle="dropdown">
            <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><g:link controller="#" action="newCompPage" style="text-decoration: none">Profile</g:link></li>
                <li><g:link controller="#" action="newCompPage" style="text-decoration: none">Setting</g:link></li>
                <li><g:link controller="logout" style="text-decoration: none">Log Out</g:link></li>
            </ul>
        </div>
    </div>

    <div class="col-md-12" style="background-color: #f28c38; color: white ">
        <h1 style="text-align:left;font-size:20px;font-family:Verdana ">${company.companyName} Edit Employee</h1>
    </div>
    <div>
        <ul class="nav nav-tabs">
            <li><g:link class="home" controller="secure"><g:message code="Home"/></g:link></li>

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><g:link controller="admin" action="createEmployee">Add Employee</g:link></li>
                    <li><g:link class="list" controller="admin" action="employeePage">Employee List</g:link></li>
                </ul>
            </li>


        </ul><br>
    </div>
    <div class="box, col-md-12" style="border-radius:5px; background-color: #f7f6f6; padding-top: 15px; padding-bottom: 15px">
        <div class="inner" style="font-size:20px;height: auto">
            <g:form name="editEmployee" url="[controller:'admin', action:'updateEmployee']">
                <fieldset>Employee Information</fieldset>
                <hr>
                <div class="col-md-12" style="padding: 10px 0 10px 0" >
                    <div class="col-md-6" style="padding: 5px" >
                        <div class="col-md-4" style="font-family:verdana;font-size:12px" >
                            <p style="padding-right:10px">First Name* </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="text" size="25" id="firstName" name="firstName" value="${employee.firstName}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Middle Name</p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="text" size="25" id="middleName" name="middleName" value="${employee.middleName}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Last Name* </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="text" size="25" id="lastName" name="lastName"  value="${employee.lastName}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Email* </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="email" size="25" id="email" name="email" value="${employee.email}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Phone </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="text" size="25" id="phone" name="phone" value="${employee.phone}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Age </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="number" min="18" max="50" id="age" name="age" value="${employee.age}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Location </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="text" size="25" id="location" name="location" value="${employee.location}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Username </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="text" size="25" id="username" name="username" value="${userObject.username}">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Password </p>
                        </div>
                        <div class="col-md-8">
                            <input class="inputStyle" type="password" size="25" id="password" name="password" value="">
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 5px">
                        <div class="col-md-4" style="font-family:verdana;font-size:12px;" >
                            <p style="padding-right:10px">Role* </p>
                        </div>
                        <div class="col-md-8">
                            <select name="role" class="inputStyle">
                                <option value="<%=employee.getEmployeeRole()%>"><%=employee.getEmployeeRole()%></option>
                                <%for(com.grails.RoleEmployee roleEmployee : role){
                                    if(!(roleEmployee.getName().equals(employee.getEmployeeRole()))) %>

                                <option value="<%=roleEmployee.getName()%>"><%=roleEmployee.getName()%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>
                </div>
                <hr style="padding: 5px;margin: 0px">
                <input type="hidden" name="empIndex" value="${employee.id}">
                <input type="hidden" name="userIndex" value="${userObject.id}">
                <input type="hidden" name="company" value="${company.companyName}">
                <button type="button" class="btn btn-success" name="create" onclick="act()">Save</button>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>