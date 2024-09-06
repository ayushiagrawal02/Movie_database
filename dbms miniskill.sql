drop database 15movie;
create database 15movie;
use 15movie;

create table 15actor
(act_id int primary key,
act_name varchar(20) not null,
act_gender varchar(20) );

create table 15director
(dir_id int primary key,
dir_name varchar(20) not null,
dir_phone int );

 create table 15movies
 (mov_id int primary key,
 mov_title varchar(20) unique,
 mov_year int,
 mov_lang varchar(20),
 dir_id int );

create table 15movie_cast
(act_id int,
mov_id int,
role varchar(20) );

create table 15rating
(mov_id int,
rev_stars int );

alter table 15actor
drop column act_gender;

drop table 15rating;

insert into 15actor values
('101' , 'akshay kumar' ),
('102' , 'alia bhatt' ),
('103' , 'varun dhawan' ),
('104' , 'deepika padukone' ),
('105' , 'ranbir kapoor' ),
('106' , 'ranveer singh' ),
('107' , 'anirudh agrawal' ),
('108' , 'kareena kapoor' );

insert into 15director values
('201' , 'karan johar' ,'36273827'),
('202' , 'anurag kashyap' , '53678263'),
('203' , 'yash chopra' , '37684354'),
('204' , 'imtiaz ali' , '379375924'),
('205' , 'zoya akhtar' , '649375937'),
('206' , 'farah khan' , '639759455');

insert into 15movies values
('301' , 'jab we met' , '2001' , 'hindi' , '202'),
('302' , 'yeh jawani deewani' , '2010' , 'hindi' , '204'),
('303' , 'rockstar' , '2007' , 'hindi' , '203');

insert into 15movie_cast values
('105' , '302' , 'hero'),
('104' , '302' , 'heroine'),
('107' , '301' , 'hero'),
('108' , '301' , 'heroine'),
('105' , '303' , 'hero'),
('102' , '303' , 'heroine');

select * from 15director order by dir_name;

select * from 15director where dir_id between '201' and '204' 
group by dir_name having dir_id>=202;

create index index_actor on 15actor (act_name); 
