desc station;
desc car;
create sequence code
increment by 1
start with 1
minvalue 1
nocycle
nocache;
drop table member_station;

create table member_station
(
    id      varchar(20) not null,
    cpId    number(4)   not null,
	constraint member_station_id_fk1 foreign key(id) references member(id),
	constraint member_station_id_fk2 foreign key(cpId) references station(cpId),
	constraint member_station_PK primary key (id,cpId)
);

create table car
(
    code        number        primary key  not null,
    brand       varchar(30)                not null,   
    name        varchar(30)                not null,
    year        number                     not null,
    price       varchar(30),
    distance    varchar(10),
    img         varchar(40)
);
delete from car where code = 1;
-- 코드(시퀀스), 브랜드, 이름, 연식, 가격, 주행가능거리, 이미지명
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'TESLA', 'MODEL3', 2018, '3,968', '354km', '2018TeslaModel3.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'NISSAN', 'LEAF', 2018, '3,198', '400km', '2018NissanLeaf.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'LEXUS', 'CT200h F 스포츠', 2017, '4,510', '17km/l', '2017LexusCt200hFSports.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'LEXUS', 'CT200h', 2017, '4,000', '17km/l', '2017LexusCt200h.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'LEXUS', 'LC500h', 2018, '18,000', '10.9km/l', '2017LexusLC500h.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'HYUNDAI', 'SONATA', 2017, '4,399', '17.1km/l', '2017HyundaiSonata.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'RENAULTSAMSUNG', 'TWIZY', 2017, '1,550', '7.9km/l', '2017Twizy.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'TESLA', 'MODEL S', 2017, '11,570', '470km', '2017TeslaModelS.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'KIA', 'SOUL EV', 2018, '4,280', '5.2km/l', '2018SoulEv.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'KIA', 'NIRO', 2018, '2,785', '19.5km/l', '2018Niro.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'TOYOTA', 'PRIUS', 2017, '4,830', '23km/l', '2017ToyotaPrius.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'CHEVROLET', 'VOLT EV', 2017, '4,779', '5.5km/l', '2017ChevroletVoltEv.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'LANDROVER', 'RANGEROVER', 2017, '19,670', '', '2017Landrover.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'HYUNDAI', 'GRANDUER', 2017, '3,970', '16.2km/l', '2017HyundaiGrandeur.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'INFINITI', 'Q50S', 2017, '6,290', '12km/l', '2017InfinitiQ50S.png');
insert into car(code, brand, name, year, price, distance, img) values (code.nextval, 'HYUNDAI', 'IONIC', 2017, '2,590', '22.4km/l', '2017HyundaiIonic.png');

drop table news;
select * from station order by cpid;
select * from car;

create sequence ncode
increment by 1
start with 1
minvalue 1
nocycle
nocache;

create table news
(
    code        number           primary key  not null,
    title       varchar(300)                  not null,
    linkurl     varchar(300)                  not null,
    des         varchar(500)                  not null 
);
desc news;
select * from news;

create table station(
cpId NUMBER(4) PRIMARY KEY,
csNm VARCHAR(50),
addr VARCHAR(100) NOT NULL,
lat NUMBER(20.17) NOT NULL,
longi NUMBER(20.17) NOT NULL,
chargeTp NUMBER(1)
);

commit;
select * from station;

create table member(
	id VARCHAR(20) PRIMARY KEY,
	pwd VARCHAR(100) NOT NULL,
	salt VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	isAdmin NUMBER(1) NOT NULL
);
commit;

select * from member;

desc tab;