<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
        body {
            margin: 0%;
            padding: 0%;
        }

        body {
            background: url("iamge2.jpg");
            background-repeat: no-repeat;
            background-size: cover;

        }
        h2 {
            text-align: center;
            padding: 20px;
            font-family: sans-serif;
        }

        .register {
            display: flex;
            justify-content: center;
            margin-top: 100px;
            margin-left: 40%;
            height: 600px;
            width: 500px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            font-size: 20px;
            border: 5px solid rgba(255, 255, 255, 0.3);
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            color: #fff;
            
        }

        #register11 {
            margin: 40px;
        }

        label {
            /* border: 5px  solid aqua; */
            font-family: sans-serif;
            font-size: 20px;
            font-style: italic;
        }

        input#name {
            width: 300px;
            border: 1px solid white;
            border-radius: 3px;
            outline: 0;
            padding: 10px;
            background-color: white;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        
          input#email {
            width: 300px;
            border: 1px solid white;
            border-radius: 3px;
            outline: 0;
            padding: 10px;
            background-color: white;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }

        input#submit {
            width: 200px;
            padding: 7px;
            font-size: 16px;
            font-family: sans-serif;
            font-weight: 600;
            border: none;
            border-radius: 3px;
            background-color: rgba(250, 100, 0, 0.8);
            color: #fff;
            cursor: pointer;
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
        }

        label,
        span,
        h2 {
            text-shadow: 1px 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>
    <form action="register" class="register">
        <div class="main">
            <div class="register11">
                <h2>
                    Registration Form
                </h2>
                <form id="register">
                    <label for="name">First Name : </label>
                    <br>
                    <input type="text" name="Fname" id="name" placeholder="Enter your first name">
                    <br><br>
                    <label for="name">Last Name : </label>
                    <br>
                    <input type="text" name="Lname" id="name" placeholder="enter the your  last name">
                    <br><br>
                    <label for="email">Email : </label>
                    <br><input type="email" name="email" id="email" placeholder="enter the your email">
                    <br><br>
                    <label for="">Gender : </label><br>
                    &nbsp; &nbsp; &nbsp;
                    <input type="radio" name="gender" id="male">
                    &nbsp;
                    <span id="male">Male</span>
                    &nbsp; &nbsp;
                    <input type="radio" name="gender" id="female">
                    &nbsp;
                    <span id="female">Female</span>
                    <br><br>
                    <label for="">Known language : </label>
                    <br>
                    &nbsp; &nbsp; &nbsp;
                    <input type="checkbox" name="language" id="hindi">
                    &nbsp;
                    <span id="hindi">Hindi</span>
                    &nbsp; &nbsp; &nbsp;
                    <input type="checkbox" name="language" id="english">
                    &nbsp;
                    <span id="english">English</span>
                    &nbsp; &nbsp; &nbsp;
                    <input type="checkbox" name="language" id="urdu">
                    &nbsp;
                    <span id="urdu">Urdu</span>
                    <br><br>
                    <input type="submit" value="Submit" name="submit" id="submit">
                </form>
            </div>
        </div>
    </form>
</body>
</html>