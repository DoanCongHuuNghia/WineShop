<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <title>Sparkling Shop - Sign In</title>
</head>
<body>
    <div id="logreg-forms">
        <form action="login" method="post" class="form-signin">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
            <p class="text-danger">${mess}</p>
                
            <input name="user" type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
            <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
<!--            <input name="remember" type="checkbox" id="checkbox-1-1" name="remember" value="ON"/>-->
<!--            <label for="checkbox-1-1">Remember me</label>-->
            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            <a href="ForgotPassword.jsp" id="forgot_pswd" class="text-dark">Forgot password?</a>
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            <!--<button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>-->
            <a href="Signup.jsp" class="btn btn-primary btn-block text-white" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</a>
        </form>        
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!--<script src="js/control.js" type="text/javascript"></script>-->
</body>
</html>
