<%@ page import="com.grails.Employee" %>
%{--
<%@ page import="com.grails.Company; com.grails.Employee" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="configstyle.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Stylesheet.css">

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Administration</title>
</head>
<body>

<div class="container">
    <header style="padding: 0px">
        <table border=0 style="width:100%">
            <tr>
                <td style="width:80%">
                    <g:link controller="secure" style="text-decoration: none"><h3 class="h3color">HR Management</h3></g:link>
                </td>
                <td style="width:6%" align="center" valign="middle">
                    <h5 class="h5color">Welcome</h5>
                </td>
                <td style="width:15%" align="left" valign="middle">
                    <div class="dropdown">
                        <%=username%><button class="dropbtn"><span class="caret"></span></button>
                        <div class="dropdown-content">
                            <g:link controller="addComp" action="newCompPage" style="text-decoration: none">Add Company</g:link>
                            <g:link controller="#" action="#" style="text-decoration: none">My Profile</g:link>
                            <g:link controller="#" action="#" style="text-decoration: none">Setting/Configuration</g:link>
                            <g:link controller='logout' style="text-decoration: none">Log Out</g:link>
                            --}%
%{--<g:link>Change Password</g:link>--}%%{--


                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <table><tr><td><g:link controller="addComp" action="newCompPage" style="text-decoration: none">Add Company</g:link></td>
            <td><g:link controller="#" action="#" style="text-decoration: none">My Profile</g:link></td>
            <td><g:link controller="#" action="#" style="text-decoration: none">Setting/Configuration</g:link></td>
            <td><g:link controller='logout' style="text-decoration: none">Log Out</g:link></td></tr>
        </table>
    </header>
</div>
<div>
    <div class="col-sm-2" style="height:572px; background-color:lavender;" align="center">
        <g:img dir="images" file="dp.png" alt="user" width="175" height="175" style="border-radius: 1000px;padding-top: 10px" />
        <h2 style="color: #666666"><%=username%></h2>
        <g:link controller="admin" action="createEmployee" style="color: #2b406e; text-decoration: none">Create Employee</g:link>
    </div>
    <div class="col-sm-10" style="height:572px; background-color:lavenderblush;">
        <center><h2 style="background-color:lavenderblush;color:#737373;margin-top: 5px;margin-bottom: 5px"><%=company.getCompanyName()%> : Employee List</h2></center><hr style="margin-bottom: 0px">
        <g:form controller="admin" action="employeeModify">
        <div class="col-sm-12" style="height:470px; margin-bottom: 10px;padding-left: 0px;padding-right: 0px" >

            <table border=1 style="margin: 20px;">
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 2%"></th>
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 10%">
                    <b>First Name</b>
                </th>
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 10%">
                    <b>Middle Name</b>
                </th>
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 10%">
                    <b>Last Name</b>
                </th>
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 10%">
                    <b>Employee Id</b>
                </th>
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 10%">
                    <b>Location</b>
                </th>
                <th align="center" style="padding-top: 10px; padding-bottom: 10px; width: 10%">
                    <b>Role</b>
                </th>
                <%if(company.getEmployee()!=null){
                    for(Employee emp : company.getEmployee().sort{it.id}){
                %>
                <tr>
                    <td><input type="radio" name="radio" required value="<%=emp.getId()%>"></td>
                    <td><p class="tdstyle"><%=emp.getFirstName()%></p></td>
                    <td><p class="tdstyle"><%=emp.getMiddleName()%></p></td>
                    <td><p class="tdstyle"><%=emp.getLastName()%></p></td>
                    <td><p class="tdstyle"><%=emp.getId()%></p></td>
                    <td><p class="tdstyle"><%=emp.getLocation()%></p></td>
                    <td><p class="tdstyle"><%=emp.getEmployeeRole()%></p></td>
                </tr>
                <%}}%>
            </table>
            <div align="right" style="margin-right: 70px">
                <input type="submit" name="modify" value="Edit" style="width: 10%;margin-bottom: 0px">
                <input type="submit" name="modify" value="Delete" style="width: 10%;margin-bottom: 0px">
            </div>
        </g:form>

        </div>
    </div>

</div>
</body>
</html>--}%
%{--====================================================================================--}%
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="home_view_style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Stylesheet.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>HRM | ${company.companyName} Employees</title>
</head>
<body>
<div class="col-md-12">
<div class="col-md-12" style="padding:4px; padding-left: 0px; padding-right: 0px">
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

<div class="col-md-12" style="background-color: #f28c38; color: white "><h1 style="text-align:left;font-size:20px;font-family:Verdana ">${company.companyName} Employees</h1></div>
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
<div class="col-sm-12" style="padding: 0 0 0 0; background-color: #f28c38">
    <div class="col-sm-2" style="border:1px solid white; padding: 10px"><a href="/secure/superAdmin?sort=companyName&max=4&order=asc" style="color: #f2f2f2; text-decoration: none">First Name</a></div>
    <div class="col-sm-2" style="border:1px solid white; padding: 10px"><a href="/secure/superAdmin?sort=taxId&max=4&order=asc" style="color: #f2f2f2; text-decoration: none">Middle Name</a></div>
    <div class="col-sm-2" style="border:1px solid white; padding: 10px"><a href="/secure/superAdmin?sort=companyStatus&max=4&order=asc" style="color: #f2f2f2; text-decoration: none">Last Name</a></div>
    <div class="col-sm-2" style="border:1px solid white; padding: 10px"><a href="/secure/superAdmin?sort=registrationNo&max=4&order=asc" style="color: #f2f2f2; text-decoration: none">Employee Id</a></div>
    <div class="col-sm-2" style="border:1px solid white; padding: 10px"><a href="/secure/superAdmin?sort=totalEmployee&max=4&order=asc" style="color: #f2f2f2; text-decoration: none">Location</a></div>
    <div class="col-sm-2" style="border:1px solid white; padding: 10px"><a href="/secure/superAdmin?sort=email&max=4&order=asc" style="color: #f2f2f2; text-decoration: none">Role</a></div>

</div>
<g:form name="showForm" controller="admin" action="employeeModify">
    <%if(company.getEmployee()!=null){
        for(com.grails.Employee emp : company.getEmployee().sort{it.id}){%>
        <div class="col-sm-12" style="background-color: #f2f2f2; padding: 5px 0 5px 0; border:1px solid white">
            <div class="col-sm-2" style="padding-left:0px; padding-right:0px">
                <div class="col-sm-1" style=" padding: 0 0 0 10px"align="center"><input type="radio" id="ohrmList_chkSelectRecord_1" name="radio" value="${emp.id}"></div>
                <div class="col-sm-9" style=" padding: 0 0 0 15px">${emp.firstName}</div>
            </div>
            <div class="col-sm-2" style="padding: 0 0 0 10px;">${emp.middleName}</div>
            <div class="col-sm-2" style="padding: 0 0 0 10px;">${emp.lastName}</div>
            <div class="col-sm-2" style="padding: 0 0 0 10px;">${emp.id}</div>
            <div class="col-sm-2" style="padding: 0 0 0 10px;">${emp.location}</div>
            <div class="col-sm-2" style="padding: 0 0 0 10px;">${emp.employeeRole}</div>
        </div>
    <%}}%>

    <div class="top, col-sm-12" style="padding: 20px; background-color: white" align="center">
        <input type="submit" class="btn btn-warning" name="modify" value="Edit">
        <input type="submit" class="btn btn-danger"  name="modify" value="Delete">

    </div>
    </div>

</g:form>
</div>
</body>
</html>