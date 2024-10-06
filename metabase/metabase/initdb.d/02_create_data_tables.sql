create table if not exists mst_user
(
  id serial,
  name varchar(255) not null,
  created_at datetime not null,
  updated_at datetime not null,
  primary key(id)
)
engine=InnoDB default charset=utf8;
