USE mvcProjectDB;

CREATE TABLE board (
       num int not null auto_increment,	-- 게시글 순번
       name varchar(10) not null,		-- 회원 이름
       subject varchar(100) not null,	-- 게시글 제목
       content text not null,			-- 게시글 내용
       regist_day varchar(30),			-- 게시글 등록 일자
       hit int,							-- 게시글 조회 수
       PRIMARY KEY (num)
)default CHARSET=utf8;



CREATE TABLE users (
    id VARCHAR(50) PRIMARY KEY,
    pw VARCHAR(100) NOT NULL,
    name VARCHAR(30) NOT NULL,
    birth DATE NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(20)
);


SHOW TABLES;

SELECT * FROM USERS;

drop table users;