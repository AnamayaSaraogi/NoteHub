<%-- 
    Document   : home_general
    Created on : 26 Sept 2024, 1:11:09 pm
    Author     : anama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NoteHub</title>
        
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
            }

            nav {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background-color: white; 
                padding: 10px 20px;
                margin-top: 20px; 
                margin-left: 300px; 
                margin-right: 300px; 
            }

            .nav-left h1 {
                color: #333;
                font-size: 24px;
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

            .tagline-heading {
                font-size: 45px; 
                font-weight: bold;
                color: #474747;
            }

            .tagline-subheading {
                font-size: 20px; 
            }
            
            .signup {
                border: 1px solid #838485;
                padding: 15px 20px;
                border-radius: 5px;
                background-color: #1d3bb8;
                transition: background-color 0.3s ease, color 0.3s ease;
                color: white;
            }

            .signup:hover {
                background-color: white;
                color: black;
                cursor: pointer;
            }

            table {
                width: 70%;
                margin: 0 auto;
                border-spacing: 20px;
            }

            td {
                vertical-align: top;
            }

            h2 {
                font-size: 22px;
                color: #333;
                margin-bottom: 10px;
            }

            p {
                font-size: 16px;
                color: #666;
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
    
        <br><br><br>

    <center><div class="tagline-heading">The simplest way to <br> share notes</div></center><br>
    <center><div class="tagline-subheading">Organize, Share, and Access your notes anytime, anywhere with NoteHub.</div></center><br>
    <center><button class="signup" onclick="window.location.href='signup.jsp';"> Sign Up Now</button></center>

    <br><br><br>
    <center><div class="tagline-heading">Powerfully organised,<br> effortlessly simple</div></center><br>
    <table>
        <tr>
            <td>
                <h2>Stay Organized</h2>
                <p>Organize your notes effortlessly with customizable folders and tags, making it easy to categorize and find your content.</p>
            </td>
            <td>
                <h2>Efficient Search</h2>
                <p>Use our advanced search feature to instantly locate any note by keywords or tags, streamlining your note-taking process.</p>
            </td>
            <td>
                <h2>Easy Sharing</h2>
                <p>Publish your notes online with a simple link, or share via email and social platforms, making it easy to spread knowledge.</p>
            </td>
        </tr>
    </table>

    </body>
</html>
