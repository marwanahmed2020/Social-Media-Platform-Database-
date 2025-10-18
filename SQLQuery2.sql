create table friendship
(
friendship_ID int primary key,
userID_userID2 int, 
t_stamp date,

);
create table messsage
(
message_ID int primary key,
s_ID_R_ID int,
m_content varchar (50),
t_stamp date ,
);
create table groups_pages 
(
naame varchar (50) primary key,
tyype varchar (20),
interests varchar (50),
serviices varchar (50),
promotion varchar (50),

);
create table sponsors
(
com_tax_r int primary key ,
s_name varchar ,
integirty int ,
locations varchar(50),
productes_resources varchar (50),
 tax_R int ,
 foreign key (tax_R) references platformcompany (taxregistration),

);
create table influencer 
(
  com_tax_reg int primary key,
  naame varchar (50),
  content varchar (50),
  promotion_income varchar (50),


);
create table user_groups_pages
(
usserid int ,
g_pname varchar (50) ,
primary key (usserid, g_pname),

FOREIGN KEY (usserid) REFERENCES usser(userID),
FOREIGN KEY(g_pname) REFERENCES groups_pages(naame),
);

create table usser_influencer
(
usser_id int,
com_tax_reg int,
inf_name varchar(50),
primary key (usser_id, com_tax_reg,inf_name),
	FOREIGN KEY(usser_id) REFERENCES usser(userID),
	FOREIGN KEY (com_tax_reg) REFERENCES influencer(com_tax_reg),
	
);
create table usser_like
(
	usser_id int ,
	like_id int  ,
	primary key (usser_id,like_id),
	FOREIGN KEY(usser_id) REFERENCES usser(userID),
	FOREIGN KEY(like_id) REFERENCES llike (like_id),
);
create table usser_comment
(
	usser_id int,
	comment_id int,
	primary key(usser_id, comment_id),
	FOREIGN KEY(usser_id) REFERENCES usser(userID),
	FOREIGN KEY(comment_id) REFERENCES comment (c_id),

);
create table usser_post
(
	usser_id int,
	post_id int,
	primary key(usser_id, post_id),
	FOREIGN KEY(usser_id) REFERENCES usser(userID),
	FOREIGN KEY(post_id) REFERENCES post(postID),
);

