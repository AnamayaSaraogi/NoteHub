<%-- 
    Document   : groups
    Created on : 30 Sept 2024, 5:42:23 pm
    Author     : anama
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Groups</title>
    <style>
        body {
            font-family: Arial, sans-serif; 
            margin: 0;
            padding: 0;
        }

        .nav {
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

        .search-container {
            display: flex;
            align-items: center;
            justify-content: center; /* Center horizontally */
            margin: 20px 0;
        }

        .search-container p {
            font-size: 30px;
            margin-right: 20px; /* Space between the paragraph and input */
            color: #333;
        }

        .search-container input[type="text"] {
            padding: 10px;
            font-size: 16px;
            margin-right: 10px; /* Space between text box and submit button */
            border: 1px solid #838485;
            border-radius: 5px;
        }

        .search-container input[type="submit"] {
            padding: 10px 15px;
            font-size: 16px;
            background-color: transparent;
            color: black;
            border: 1px solid #838485;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-container input[type="submit"]:hover {
            background-color: black; 
            color:white
        }

        .grps {
            display: flex;
            flex-wrap: wrap; 
            max-width: 1000px; 
            margin: 0 auto; 
            justify-content: center; 
        }

        .group-button {
            margin: 10px; 
            padding: 20px; 
            background-color: #1d3bb8; 
            color: white; 
            border: none;
            border-radius: 10px; 
            cursor: pointer;
            text-align: center;
            font-size: 30px; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
            transition: background-color 0.3s, transform 0.2s; 
            width: 300px;
            height: 250px;
        }

        .group-button:hover {
            background-color: #1d5eb1; 
            transform: scale(1.05); 
        }

        .group-button:active {
            transform: scale(0.95); 
        }
        
        .showall{
            padding: 10px 15px;
            font-size: 16px;
            background-color: transparent;
            color: black;
            border: 1px solid #838485;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .showall:hover {
            background-color: black; 
            color:white
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
    
    <div class="search-container">
        <p><b>My Groups</b></p>
        <form action="searchGroup" method="post">
            <input type="text" placeholder="Search for a group" name="group">
            <input type="submit" value="Search">
        </form>
        &nbsp;&nbsp;&nbsp;
        <button class="showall" onclick="window.location.href='groups.jsp';">Show all</button>
    </div>

    <div class="grps">
        <%
            // Check if search results are available
            ArrayList<String> groupList = (ArrayList<String>) request.getAttribute("groupList");
            if (groupList != null && !groupList.isEmpty()) {
                // Display search results
                for (String groupName : groupList) {
        %>
                    <button class="group-button" onclick="alert('Group: <%= groupName %>');"><%= groupName %></button>
        <%
                }
            } else {
                // No search results or no search performed, display all groups from the database
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
                        <button class="group-button" onclick="window.location.href='displayNotes.jsp?groupName=<%= groupName %>';"><%= groupName %></button>
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
            }
        %>
    </div>
</body>
</html>
