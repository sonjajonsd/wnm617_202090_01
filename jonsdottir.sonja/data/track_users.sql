CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`pet_peeve` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Greene Vance','user1','user1@gmail.com',md5('pass'),'https:via.placeholder.com/400/835/fff/?text=user1','Tardiness','2020-03-07 07:11:07'),
(2,'Colon Wilcox','user2','user2@gmail.com',md5('pass'),'https:via.placeholder.com/400/776/fff/?text=user2','Tardiness','2020-06-24 06:19:04'),
(3,'Zamora Kerr','user3','user3@gmail.com',md5('pass'),'https:via.placeholder.com/400/734/fff/?text=user3','Cursing!','2020-04-19 11:24:08'),
(4,'Cain Mcdaniel','user4','user4@gmail.com',md5('pass'),'https:via.placeholder.com/400/774/fff/?text=user4','People that litter','2020-06-15 03:58:50'),
(5,'Leola Rose','user5','user5@gmail.com',md5('pass'),'https:via.placeholder.com/400/798/fff/?text=user5','Cursing!','2020-06-04 09:35:57'),
(6,'Crawford Beck','user6','user6@gmail.com',md5('pass'),'https:via.placeholder.com/400/891/fff/?text=user6','Rude people','2020-03-16 01:21:13'),
(7,'Josie Finley','user7','user7@gmail.com',md5('pass'),'https:via.placeholder.com/400/778/fff/?text=user7','People that litter','2020-05-04 04:16:04'),
(8,'Bates Sharp','user8','user8@gmail.com',md5('pass'),'https:via.placeholder.com/400/870/fff/?text=user8','Cursing!','2020-02-29 04:26:18'),
(9,'Rhonda Drake','user9','user9@gmail.com',md5('pass'),'https:via.placeholder.com/400/906/fff/?text=user9','People that litter','2020-07-24 10:51:54'),
(10,'Janell Schroeder','user10','user10@gmail.com',md5('pass'),'https:via.placeholder.com/400/744/fff/?text=user10','People that litter','2020-05-30 05:48:21');