create table pet (
    pet_code int not null AUTO_INCREMENT,
	name varchar(20) not null,
    age int,
    owner_id varchar(10),
    
    regist_day varchar(50),
    
    primary key(pet_code),
    foreign key(owner_id) references member(id)
) default CHARSET=utf8;