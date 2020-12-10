CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`pet_peeve` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Beatriz Goff','user1',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user1','Rude people','2020-09-12 09:20:57'),
(2,'Melinda Monroe','user2',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user2','Rude people','2020-04-02 02:32:07'),
(3,'Victoria Fitzpatrick','user3',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user3','Cursing!','2020-10-23 02:08:15'),
(4,'Joanna Reid','user4',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user4','Rude people','2020-02-21 01:36:36'),
(5,'Rosales Schultz','user5',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user5','Tardiness','2020-04-30 08:32:17'),
(6,'Hays Delacruz','user6',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user6','Cursing!','2020-11-09 03:14:14'),
(7,'Gould Tate','user7',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user7','Rude people','2020-10-24 12:37:29'),
(8,'Hampton Cruz','user8',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user8','Littering','2020-07-01 11:03:20'),
(9,'Gena Norton','user9',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user9','Littering','2020-10-17 08:28:28'),
(10,'Wilcox Barton','user10',md5('pass'),'https://via.placeholder.com/400/bbb/fff/?text=user10','Littering','2020-02-19 04:36:58');