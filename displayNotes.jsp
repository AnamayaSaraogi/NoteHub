<%-- 
    Document   : displayNotes
    Created on : 30 Sept 2024, 6:35:45 pm
    Author     : anama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notes</title>
    <style>
    body {
        font-family: Arial, sans-serif; 
        margin: 0;
        padding: 0;
    }

    table {
        width: 80%;
        border-collapse: collapse;
        margin: 20px auto; /* Center the table */
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color:  #1d3bb8;
        color: white;
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

<table>
    <tr>
        <th>Title</th>
        <th>Uploaded By</th>
        <th>File</th>
    </tr>
    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            // Assuming you have a way to get user_id (e.g., from session)
            String groupName = request.getParameter("groupName"); // Replace with the actual user ID

            String sql = "SELECT n.title, r.name, n.file_path " + 
             "FROM notes n " + 
             "JOIN register r ON n.user_id = r.id " + 
             "WHERE n.group_name = ?";

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, groupName);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String noteTitle = rs.getString("title");
                String userid = rs.getString("name");
                String filePath = rs.getString("file_path");
    %>
                <tr>
                    <td><%= noteTitle %></td>
                    <td><%= userid %></td>
                    <td><a href="<%= filePath %>">Download</a></td>
                </tr>
    <%
            }
        } catch (Exception e) {
            out.println("Error retrieving notes: " + e.getMessage());
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
</table>

</body>
</html>

