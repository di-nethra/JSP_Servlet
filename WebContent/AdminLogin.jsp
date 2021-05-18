<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>

      <!-- bootstrapCDN -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <script src="validation.js"></script>

</head>
<body>

    <div class="jumbotron text-center">
    <h1>Admin Login</h1>
    </div>

    <div class="container">
        <div class="row justify-content-center">
    <form action="<%=request.getContextPath()%>/list" method="GET" style="margin-top:10px;" onsubmit="return checkpassword()">
        <div class="form-group">
          <label>Email address</label>
          <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter your email" style="width:300px;">
        </div>
        <div class="form-group">
          <label>Password</label>
          <input type="password" class="form-control" id="pass" placeholder="enter Password" style="width:300px;">
        </div>
        <div class="form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Remember me</label>
        </div>
        <div style="text-align: center; margin-top:20px;">
        <button type="submit" class="btn btn-primary " onclick="checkpassword()">Submit</button>
        </div>
      </form>
    </div> 
    </div>
    
    <script >

    function checkpassword(){


        var pass=document.getElementById('pass').value;


    if(pass=='abc123'){

    alert("succuss");
    return true;
    }

    else{
        alert("password failed");
       return false;
    }

    }
    
    </script>
</body>
</html>