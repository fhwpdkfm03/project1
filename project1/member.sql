create database mysite;

create table member(
	id int(11) primary key auto_increment,
	name varchar(10),
	user_id varchar(50),
	user_pw varchar(255),
	email varchar(150),
	gender char(1),
	birthdate datetime,
	tel varchar(13),
	postcode varchar(10),
	addr1 varchar(150),
	addr2 varchar(150),
	profile_img varchar(255),
	reg_date datetime,
	edit_date datetime
);