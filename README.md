# Social-Media-Platform-Database-
social media platform designed to facilitate meaningful connections and interactions among users while offering robust privacy and security features. 

<img width="970" height="701" alt="image" src="https://github.com/user-attachments/assets/acb58daf-1927-473b-bcfe-dca3737f3e72" /> 

## Features
- User registration and profile management  
- Privacy settings for user accounts  
- Content creation and sharing (posts, photos, videos)  
- Interaction with content (likes, comments, shares)  
- Friendship management and messaging system  
- Groups and pages with unique interests and topics  
- Influencer and sponsor support for monetization  

---

## Database Design

### Entities & Attributes

| Entity             | Attributes |
|-------------------|------------|
| **Platform Company** | Name, Location, Tax Registration (PK) |
| **User**           | UserID (PK), Username, Full Name, Birth Date, Gender, Email, Address, Bio (Optional), Password, Profile Picture |
| **Post**           | PostID (PK), UserID (FK), Content, MediaType, MediaURL, Timestamp |
| **Comment**        | CommentID (PK), PostID (FK), UserID (FK), Content, Timestamp |
| **Like**           | LikeID (PK), PostID / CommentID (FK), UserID (FK), Timestamp |
| **Friendship**     | FriendshipID (PK), UserID1 (FK), UserID2 (FK), Timestamp |
| **Message**        | MessageID (PK), SenderID (FK), ReceiverID (FK), Content, Timestamp |
| **Groups/Pages**   | Name, Type, Interests, Services, Promotion |
| **Influencers**    | Name, Content, Promotion, Income |
| **Sponsors**       | Name, Location, Products and Resources |

---

### Relationships
- User ↔ Post (M:N)  
- User ↔ Comment (M:N)  
- User ↔ Like (M:N)  
- User ↔ User (Friendship 1:1)  
- User ↔ Message (1:M)  
- Post ↔ Comment (1:M)  
- Post ↔ Like (1:M)  
- Groups/Pages ↔ Post (1:M)  
- Platform Company ↔ Sponsor (1:M)  
- Platform Company ↔ Influencer (1:M)  
- User ↔ Groups/Pages (M:N)  
- User ↔ Influencer (M:N)  

---

## Normalization
The database is normalized to **3NF** to reduce redundancy, ensure data consistency, and optimize query performance.

---

## Tools & Technologies
- **DBMS**: Microsoft SQL Server  
- **Design Tools**: Microsoft Word, Lucidchart
- **Documentation**: Word 

---

## Implementation
- Fully normalized database schema implemented in SQL Server  
- Scripts include table creation, relationships, constraints, and sample data  


