create table services (
  id INT UNSIGNED AUTO_INCREMENT primary key,
  name varchar(30),
  url text,
  icon_url text
);

create table layouts (
  goo_id varchar(30),
  service_id INT UNSIGNED,
  foreign key (service_id)
    references services (id),
  icon_number INT UNSIGNED NOT NULL,
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL,
  primary key (`goo_id`, `service_id`)
);

