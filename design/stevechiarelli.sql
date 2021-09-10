DROP TABLE IF EXISTS hero;
DROP TABLE IF EXISTS about;
DROP TABLE IF EXISTS work;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS messages;

create table hero (
	id int(11) unsigned not null auto_increment primary key,
	heading varchar(100),
	subheading varchar(500)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table about (
	id int(11) unsigned not null auto_increment primary key,
	heading varchar(100),
	content varchar(500)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table work (
	id int(11) unsigned not null auto_increment primary key,
	title varchar(100),
    date datetime DEFAULT CURRENT_TIMESTAMP,
    featured tinyint(1),
    image varchar(100),
	description varchar(500),
	built_with varchar(100),
	button1_text varchar(100),
	button1_url varchar(100),
    button2_text varchar(100),
	button2_url varchar(100)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table contact (
	id int(11) unsigned not null auto_increment primary key,
    title varchar(100),
    email varchar(100),
    content varchar(500)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table messages (
	id int(11) unsigned not null auto_increment primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100),
	subject varchar(100),
	message text

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;