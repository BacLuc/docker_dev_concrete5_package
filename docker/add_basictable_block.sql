INSERT INTO `Blocks` VALUES (null,'','2018-02-18 19:53:20','2018-02-18 19:53:20',NULL,'0',41,1,NULL);

INSERT INTO `btBasicTableInstance` VALUES ((SELECT MAX(bID) FROM `Blocks`));

INSERT INTO `btExampleEntity` VALUES (null,'test');