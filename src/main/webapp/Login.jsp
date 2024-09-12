<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
      <style>
      body {
        padding: 0%;
        margin: 0%;
      }
        body {
            background: url("iamge2.jpg");
            background-repeat: no-repeat;
            background-size: cover;

        }
      .form1{
        border: 2px solid red;
        width: 300px;
        height: 300px;
      }
      h1 {
            text-align: center;
            padding: 20px;
            font-family: sans-serif;
        }
        #Login {
            position: relative; 
            
            text-align: center;
            padding: 10px;
            font-family: sans-serif;
        }
        .form1 {
            display: flex;
            justify-content: center;
            margin-top: 100px;
            margin-left: 40%;
            height: 500px;
            width: 500px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            font-size: 20px;
            border: 5px solid rgba(255, 255, 255, 0.3);
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            color: #fff;
            
        }
        
        input#Login {
            justify-content: center;
            width: 200px;
            border-radius: 20px;
            margin-top: 15px;
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
        input#email  {
            width: 300px;
            border: 1px solid white;
            border-radius: 3px;
            outline: 0;
            padding: 10px;
            background-color: white;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        input#password  {
            margin-top: 10px;
            width: 300px;
            border: 1px solid white;
            border-radius: 3px;
            outline: 0;
            padding: 10px;
            background-color: white;
            box-shadow: inset 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>

<%
   String msg= (String)request.getAttribute("wrongemail");
   String sessionMsg=(String)request.getAttribute("sessionMsg");
   String success=(String)request.getAttribute("success");
%>

    <%if(sessionMsg != null){ %>
        <%=sessionMsg %>
    <%} %>
    <form action="loginPage"class="form1" method="post">
        <div class="full">
            <h1>
                Login
            </h1>
                <h2>
                  <%if(msg !=null){%>
                      <%=msg %>
                      
                    <%} %>  
                    
                 </h2>
                 <h3 >
                        <%if(sessionMsg != null){ %>
                               <%=sessionMsg %>
                       <%} %>
                 </h3>
                <input type="email" name="email"id="email" placeholder="email" required>
                <br>
                <input type="password" name="password"id="password" placeholder="Password" required>
                <br>

                <a href="">Forget Password ?</a>
            <br>
            <input type="submit" name="Login" value="Login" placeholder="Login" id="Login">

            <br>
            <br><br>
            <input type="submit" value="Submit" name="submit" id="submit">
                   <h5>
            <% if(success != null) {%>
               
                 <%=success %>
            <%} %>     
        </h5> 
        </div>
        
    
    </form>

</body>
</html>