<%-- 
    Document   : profile
    Created on : 30 Sept 2024, 11:55:07 am
    Author     : anama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
        }

        
        .nav-left h1 {
            color: #333;
            font-size: 24px;
        }

                nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: white;
            padding: 20px 20px; /* Increase padding */
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            margin-left: 300px; 
            margin-right: 300px;
        }

        .nav-right a {
            color: #333;
            text-decoration: none;
            margin-left: 30px; /* Increase space between links */
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
        
        .dashboard-container {
            width: 50%;
            margin: 20px auto;  /* Center the container */
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #333;
            text-align: center;  /* Center the title */
        }

        .info {
            margin-top: 10px;
            font-size: 18px;
        }

        input[type="submit"] {
                width: calc(100% - 20px);
                padding: 10px;
                background-color: #1d3bb8;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
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
    
    <br><br><br><br><br><br>
    
    <div class="dashboard-container">
        <%
        int userId = (Integer) session.getAttribute("userId");
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * from register where id=?";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String dob = rs.getString("dob");
                String gender = rs.getString("gender");
        %>
        
                <h1>Welcome, <%= name %>!</h1>
                
                <br>
                <p><strong>User Id:</strong> <%= userId %></p><br>
                <p><strong>Email:</strong> <%= email %></p><br>
                <p><strong>Phone:</strong> <%= phone %></p><br>
                <p><strong>Address:</strong> <%= address %></p><br>
                <p><strong>Date of Birth:</strong> <%= dob %></p><br>
                <p><strong>Gender:</strong> <%= gender %></p>
        <%
            }
        } catch (Exception e) {
            out.println("Error retrieving profile: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        %>
        
        <br><br>
        
        <form action="logout" method="post" class="logout-button">
            <input type="submit" value="Logout">
        </form>
    </div>
    
</body>
</html>
