use 21331A0557;
create table Post(Post_ID varchar(5) not null, Post_Article char(250) not null, Post_Views int  not null, primary key (Post_ID));
insert into Post values ("PT1","Hello",57);
select * from Post;
insert into Post values ("PT2","Hi",50),("PT3","How",100),("PT4","are you","101");
select * from Post;
select count(*) from post;
select Post_ID,max(Post_Views) from post; -- Error
select max(Post_Views) from post;
select Post_ID from post where Post_Views = max(Post_Views); -- error
select Post_ID,max(Post_Views) from post group by Post_Views; -- error
select Post_ID,count(Post_Views) from post group by Post_ID; -- 
select * from Post;
select max(Post_Views),Post_ID from post;
select Post_ID, Post_Views from Post where Post_Views = (select max(Post_Views) from Post);   -- Working 
insert into Post values ("PT5","Hi",101),("PT6","How",101),("PT7","are",101);
select * from Post;
select count(*) from Post;
select Post_ID, Post_Views from Post where Post_Views = (select max(Post_Views) from Post);   -- Working 
insert into Post values("PT8", "Hoo", 102), ("PT9","HMm",101);
select * from Post;
select count(*) from Post;
select Post_ID, Post_Views from Post where Post_Views = (select max(Post_Views) from Post);   -- Working 
insert into Post values ("PT1", "sai", 105);
select * from Post where Post_Views = (select max(Post_Views) from Post);   -- Working 
select concat("Popular Blog Posts"," are :"), Post_ID from Post where Post_Views = (select max(Post_Views) from post);
insert into Post values("PT10", "Hmoo", 102),("PT111","kk",102);
select concat("Popular Blog Posts"," are :"), Post_ID from Post where Post_Views = (select max(Post_Views) from post);
select concat("Popular Blog Posts"," are :"), Post_Views, Post_ID from Post where Post_Views = (select max(Post_Views) from post);



create table Category (Cat_ID varchar(5) not null, Cat_Type char(50) not null, primary key (Cat_ID));
insert into Category values ("CAT1","Entertainment"),("CAT2","Educational");
select * from Category;
create table Posts (Post_ID varchar(5) not null, Post_Article char(250) not null, Post_Views int not null, Cat_ID varchar(5), primary key (Post_ID), foreign key (Cat_ID) references Category(Cat_ID));
insert into Posts values ("PT1","xyz",1000,"CAT2");
select * from Posts;
insert into Posts values ("PT2","abc",530,"CAT2"),("PT3","a",500,"CAT1"),("PT4","b",557,"CAT1"),("PT5","c",559,"CAT1"),("PT6","d",549,"CAT1"),("PT7","e",556,"CAT1");
select * from Posts;

-- Query

select p.Post_ID, p.Cat_ID, c.Cat_Type from Posts as p natural join Category as c; -- Same
select p.Post_ID, p.Cat_ID, c.Cat_Type from Category as c natural join Posts as p; -- Same

select p.Post_ID, p.Cat_ID, c.Cat_Type from Posts as p left join Category as c on p.Cat_ID = c.Cat_ID;