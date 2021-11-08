CREATE TABLE `schema_migrations` (`filename` varchar(255) NOT NULL PRIMARY KEY);
CREATE TABLE `links` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `url` varchar(255), `description` varchar(255));
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO `schema_migrations` (`filename`) VALUES ('20211108073251_create_links.rb');