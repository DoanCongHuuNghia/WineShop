<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Sparkling Shop - Sign Up</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form action="signup" class="">
                <input name="user" type="text" class="form-control" placeholder="User name" required="" autofocus="">
                <input name="fullname" type="text" class="form-control" placeholder="Full name" required autofocus="">
                <input name="address" type="text" class="form-control" placeholder="Address" required autofocus="">
                <input name="phonenumber" type="tel" class="form-control" placeholder="Phonenumber" pattern="[0]{1}[3|5|7|8|9]{1}[0-9]{8}" required autofocus="">
                <input name="age" type="number" class="form-control" placeholder="Age" min="18" max="100" required autofocus="">
                <input name="pass" type="password" class="form-control" placeholder="Password" required autofocus="">
                <input name="repass" type="password" class="form-control" placeholder="Repeat Password" required autofocus="">
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a class="text-dark" href="Login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>
        </div>
    </body>
</html>
