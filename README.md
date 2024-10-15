# NoteHub - A Collaborative Notes Sharing Platform

**NoteHub** is a web-based platform developed using **Java EE** that allows users to create, share, and access notes efficiently. It serves as a collaborative environment where users can organize notes into groups, upload documents, and interact with educational content. This project is ideal for students, professionals, and anyone looking to manage and share notes across various topics or subjects.

## Features

- **User Registration & Login**: Secure user authentication allowing users to create accounts and log in.
  
- **Groups and Notes**: 
  - Users can join or create groups and access shared notes within the group.
  - Click on a group in the `groups.jsp` page to display notes relevant to that group.

  <img src="images/groups.png" alt="groups" width="500" style="display: block; margin: 20px auto;" />
  
- **Document Uploads**: Users can upload notes/documents to share with others, with all files stored securely in the backend database.

  <img src="images/upload note.png" alt="upload notes" width="500" style="display: block; margin: 20px auto;" />
  
- **Profile**: After logging in, userscan view their profile and the notes uploaded by the user.

  <div style="display: flex; justify-content: space-around;">
      <img src="images/profile.png" alt="profile Page" width="500" />
      <img src="images/myNotes.png" alt="View your notes Page" width="500" />
  </div>

- **Dynamic Content Display**: Notes and files are dynamically fetched from the database based on user interactions, offering a smooth experience.

  <img src="images/notes.png" alt="notes" width="500" style="display: block; margin: 20px auto;" />
  
- **Session Management**: Sessions are maintained to ensure secure and seamless user experiences during each interaction.

## Tech Stack

- **Backend**: Java EE (JSP, Servlets)
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL for storing user data, groups, and notes.
- **Server**: Apache Tomcat

## How to Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/NoteHub.git
