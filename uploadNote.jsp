<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NoteHub - Upload A Note</title>
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

            input[type="text"], input[type="password"], input[type="file"]{
                width: calc(100% - 20px);
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 14px;
            }
            
            input[name="groupName"]{
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
        <nav class="nav">
        <div class="nav-left">
            <h1>NoteHub</h1>
        </div>
        <div class="nav-right">
            <a href="groups.jsp">MyGroups</a>
            <a href="uploadNote.jsp">Upload</a>
            <a href="myNotes.jsp">My Notes</a>
            <a href="profile.jsp" class="signup-btn">Profile</a>
        </div>
    </nav>

        <div class="container">
            <div class="headings">
                <h1>UPLOAD A NOTE</h1><br>
                <h2>You can choose to add the document in an existing group or 
                    <br>create a new group simply by entering the name. </h2>
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
            <form action="UploadNoteServlet" method="post" enctype="multipart/form-data">
                Title: <input type="text" name="title" required><br><br>
                
                
                Group Name: <input list="groupOptions" name="groupName" required><br><br>
                <datalist id="groupOptions">
                    
                    <%
                Connection con = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                try {
                    String sql = "SELECT DISTINCT group_name FROM notes";
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
                    pstmt = con.prepareStatement(sql);
                    rs = pstmt.executeQuery();

                    while (rs.next()) {
                        String groupName = rs.getString("group_name");
                        %>
                        <option value="<%= groupName %>"><%= groupName %></option>

                        <%
                    }
                } catch (Exception e) {
                    out.println("Error retrieving notes: " + e.getMessage());
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (con != null) con.close();
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
            
        %>
                </datalist>
                
                File: <input type="file" name="file" accept=".pdf, .doc, .docx, .txt" required><br><br>
                <input type="submit" value="Upload Note">
            </form>
        </div>
    </body>
</html>
