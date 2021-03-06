CREATE TABLE `admin_releasetask` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(1000) NOT NULL,
    `done_in_branch` varchar(100) NOT NULL,
    `order` integer NOT NULL,
    `release_id` integer NOT NULL
)
;
ALTER TABLE `admin_releasetask` ADD CONSTRAINT `release_id_refs_id_93563b04` FOREIGN KEY (`release_id`) REFERENCES `admin_release` (`id`);


ALTER TABLE `admin_delta` ADD column
    `user_change_id` integer;
ALTER TABLE `admin_delta` ADD CONSTRAINT `user_change_id_refs_id_84225281` FOREIGN KEY (`user_change_id`) REFERENCES `admin_userchange` (`id`);

alter table `admin_branch` drop column api_ver;
