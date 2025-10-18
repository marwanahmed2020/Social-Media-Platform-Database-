# Social-Media-Platform-Database-
social media platform designed to facilitate meaningful connections and interactions among users while offering robust privacy and security features. 

<img width="970" height="701" alt="image" src="https://github.com/user-attachments/assets/acb58daf-1927-473b-bcfe-dca3737f3e72" /> 

Features

User registration and profile management

Privacy settings for user accounts

Content creation and sharing (posts, photos, videos)

Interaction with content (likes, comments, shares)

Friendship management and messaging system

Groups and pages with unique interests and topics

Influencer and sponsor support for monetization

Database Design
Entities & Attributes

Platform Company

Name

Location

Tax Registration (Primary Key)

User

UserID (Primary Key)

Username

Full Name

Birth Date

Gender

Email

Address

Bio (Optional)

Password

Profile Picture

Post

PostID (Primary Key)

UserID (Foreign Key)

Content

MediaType

MediaURL

Timestamp

Comment

CommentID (Primary Key)

PostID (Foreign Key)

UserID (Foreign Key)

Content

Timestamp

Like

LikeID (Primary Key)

PostID / CommentID (Foreign Key)

UserID (Foreign Key)

Timestamp

Friendship

FriendshipID (Primary Key)

UserID1, UserID2 (Foreign Keys)

Timestamp

Message

MessageID (Primary Key)

SenderID, ReceiverID (Foreign Keys)

Content

Timestamp

Groups/Pages

Name

Type

Interests

Services

Promotion

Influencers (Weak Entity)

Name

Content

Promotion

Income

Sponsors (Weak Entity)

Name

Location

Products and Resources

Relationships

User ↔ Post (M:N)

User ↔ Comment (M:N)

User ↔ Like (M:N)

User ↔ User (Friendship 1:1)

User ↔ Message (1:M)

Post ↔ Comment (1:M)

Post ↔ Like (1:M)

Groups/Pages ↔ Post (1:M)

Platform Company ↔ Sponsor (1:M)

Platform Company ↔ Influencer (1:M)

User ↔ Groups/Pages (M:N)

User ↔ Influencer (M:N)

Normalization

The database is normalized to 3NF to reduce redundancy, ensure data consistency, and optimize query performance.

Tools & Technologies

DBMS: Microsoft SQL Server

Design Tools: Microsoft Word, Visio, EDraw Max

Documentation: Markdown

Implementation

Fully normalized database schema implemented in SQL Server

Scripts include table creation, relationships, constraints, and sample data
