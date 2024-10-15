<%-- 
    Document   : login
    Created on : 26 Sept 2024, 3:28:01 pm
    Author     : anama
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NoteHub - Login</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: white; 
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                padding: 0 20px; 
                padding-top: 50px; 
            }

            .container {
                display: flex;
                align-items: center;
                gap: 50px;
            }

            .headings {
                text-align: right;
            }

            h1, h2 {
                margin: 0;
                color: #333;
            }

            form {
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                width: 280px;
                text-align: center;
            }

            input[type="text"], input[type="password"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 14px;
            }

            input[type="submit"] {
                width: calc(100% - 20px);
                padding: 10px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }

            a {
                color: black;
                text-decoration: none;
                margin-top: 15px;
                display: inline-block;
            }

            a:hover {
                text-decoration: underline;
            }

            nav {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background-color: white;
                padding: 10px 20px;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                z-index: 1000;
                margin-left: 300px; 
                margin-right: 300px;
            }

            .nav-left h1 {
                color: #333;
                font-size: 24px;
                text-decoration: none;
            }

            .nav-right a {
                color: #333;
                text-decoration: none;
                margin-left: 20px;
                font-size: 16px;
            }

            .nav-right .signup-btn {
                border: 2px solid #838485;
                padding: 5px 15px;
                border-radius: 5px;
                background-color: transparent;
                transition: background-color 0.3s ease, color 0.3s ease;
            }

            .nav-right .signup-btn:hover {
                background-color: #333;
                color: white;
            }
        </style>
    </head>
    <body>
        <nav>
            <div class="nav-left">
                <a href="home_general.jsp"><h1>NoteHub</h1></a>
            </div>
            <div class="nav-right">
                <a href="contact_us.jsp">Contact Us</a>
                <a href="blog.jsp">Blog</a>
                <a href="login.jsp">Login</a>
                <a href="signup.jsp" class="signup-btn">Sign Up</a>
            </div>
        </nav>

        <div class="container">
            <div class="headings">
                <h1>WELCOME BACK</h1><br>
                <h2>Please enter your details to log in</h2>
                <%
                    String error = (String) request.getAttribute("errorMessage");
                    if (error != null) {
                %>
                <p style="color:red;"><%= error %></p>
                <%
                    }
                %>
                
                <%
                    String success = (String) request.getAttribute("successMessage");
                    if (success != null) {
                %>
                <p style="color:green;"><%= success %></p>
                <%
                    }
                %>
            </div>
            <form action="logged_in" method="post"> 
                Username: <input type="text" name="username"><br><br> 
                Password: <input type="password" name="pass"><br><br> 
                <input type="submit" value="Log In"><br><br>  
                <center>Don't have an account yet? <a href="signup.jsp"> <u>Sign Up</u> </a></center><br>
                <center>OR</center>
                <center><a href="forgotPassword.jsp"> <u>Forgot password</u> </a></center>
            </form>
        </div>
    </body>
</html>
