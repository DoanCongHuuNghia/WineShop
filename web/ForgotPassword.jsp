<%-- 
    Document   : ForgotPassword
    Created on : Mar 3, 2023, 11:00:08 PM
    Author     : DOANCONGHUUNGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Forgot Password</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form action="resetpassword" class="">
                <input name="user" type="text" class="form-control" value="${user}" placeholder="User name" required="" autofocus="">
                    <input name="phonenumber" type="tel" class="form-control" value="${phone}" placeholder="Phonenumber" pattern="[0]{1}[3|5|7|8|9]{1}[0-9]{8}" required autofocus="">
                    <p class="text-danger">${mess} ${mess1}</p>
                    <p class="text-danger">${mess2}</p>
                    <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                    <a class="text-dark" href="Login.jsp" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
            </form>
        </div>
    </body>
</html>
