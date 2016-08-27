CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8;

CREATE TABLE `test`.`users` (
`id` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(25) NOT NULL,
`age` INT NOT NULL,
`isAdmin` BIT(1) NOT NULL DEFAULT false,
`createdDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO `test`.`users` (`name`, `age`) VALUES ('Adele', '25');
INSERT INTO `test`.`users` (`name`, `age`) VALUES ('John', '17');
INSERT INTO `test`.`users` (`name`, `age`) VALUES ('Rafael', '34');
INSERT INTO `test`.`users` (`name`, `age`, `isAdmin`) VALUES ('Bruce', '57', 1);
INSERT INTO `test`.`users` (`name`, `age`, `isAdmin`) VALUES ('Robby', '43', 1);
