<%-- 
    Document   : blog
    Created on : 8 Oct 2024, 5:16:48 pm
    Author     : anama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog - Notes Sharing Website</title>
    <style>
        /* General Styles */
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

        main {
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .blog-post {
            margin-bottom: 40px;
        }

        .blog-post h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        .blog-post p {
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 10px;
        }

        .blog-post .meta {
            color: #777;
            font-size: 14px;
            margin-bottom: 20px;
        }

        

        /* Add responsiveness */
        @media (max-width: 768px) {
            main {
                padding: 10px;
            }

            .blog-post h2 {
                font-size: 20px;
            }

            .blog-post p {
                font-size: 14px;
            }
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
    <br><br>

    <main>
        <section class="blog-post">
            <h2>Best Practices for Sharing Notes Online</h2>
            <p class="meta">Published on October 5, 2024 by Admin</p>
            <p>Sharing notes online is a great way to collaborate with classmates or co-workers. Here are some best practices to follow when sharing notes:</p>
            <ul>
                <li>Organize your notes clearly using headings and bullet points.</li>
                <li>Make sure to use a consistent format for all your notes.</li>
                <li>Always give proper credit if you’re using notes from someone else.</li>
                <li>Keep your notes updated and ensure they’re accessible.</li>
            </ul>
        </section>

        <section class="blog-post">
            <h2>Why Taking Digital Notes Is Better</h2>
            <p class="meta">Published on September 15, 2024 by Admin</p>
            <p>In today’s digital world, using pen and paper for note-taking is becoming less common. Here are a few reasons why digital note-taking is better:</p>
            <ul>
                <li>You can easily search and find specific information within your notes.</li>
                <li>Digital notes are easier to organize and share.</li>
                <li>They reduce the risk of losing important information.</li>
                <li>You can add multimedia elements, such as images and links.</li>
            </ul>
        </section>
    </main>

    
</body>
</html>
