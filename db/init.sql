CREATE SCHEMA `site` DEFAULT CHARACTER SET utf8 ;

create table site.comments
( comment_id integer not null auto_increment,
  comment_content text not null,
  user_name varchar(256) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp,
  primary key (comment_id)
);
