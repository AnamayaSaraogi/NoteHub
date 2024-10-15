<%-- 
    Document   : contact_us
    Created on : 8 Oct 2024, 5:23:27 pm
    Author     : anama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Notes Sharing Website</title>
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
            margin: 20px auto;
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .contact-section h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .contact-section p {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            display: block;
            width: 100%;
            background-color: #1d3bb8;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #555;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #333;
            color: #fff;
            position: fixed;
            width: 100%;
            bottom: 0;
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
        <section class="contact-section">
            <h2>Contact Us</h2>
            <p>If you have any questions, feel free to contact us using the form below:</p>

            <form action="submit_form.php" method="post">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address:</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="5" required></textarea>
                </div>

                <button type="submit">Submit</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Notes Sharing Website. All rights reserved.</p>
    </footer>
</body>
</html>

