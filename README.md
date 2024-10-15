# NoteHub - A Collaborative Notes Sharing Platform

**NoteHub** is a web-based platform developed using **Java EE** that allows users to create, share, and access notes efficiently. It serves as a collaborative environment where users can organize notes into groups, upload documents, and interact with educational content. This project is ideal for students, professionals, and anyone looking to manage and share notes across various topics or subjects.

## Features

- **User Registration & Login**: Secure user authentication allowing users to create accounts and log in.
  
- **Groups and Notes**: 
  - Users can join or create groups and access shared notes within the group.
  - Click on a group in the `groups.jsp` page to display notes relevant to that group.
  
- **Document Uploads**: Users can upload notes/documents to share with others, with all files stored securely in the backend database.

- **Responsive Dashboard**: After logging in, users are directed to a personalized dashboard where they can manage their notes and group activities.

- **Dynamic Content Display**: Notes and files are dynamically fetched from the database based on user interactions, offering a smooth experience.

- **Session Management**: Sessions are maintained to ensure secure and seamless user experiences during each interaction.

## Tech Stack

- **Backend**: Java EE (JSP, Servlets)
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL for storing user data, groups, and notes.
- **Server**: Apache Tomcat

## Current Development

- **No Device Sync Yet**: At present, the platform does not support syncing notes across multiple devices, but it’s a planned feature for future updates.

## How to Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/NoteHub.git
