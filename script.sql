-- CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8;

CREATE TABLE `test`.`users` (
`ID` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(25) NOT NULL,
`AGE` INT NOT NULL,
`IS_ADMIN` BIT(1) NOT NULL DEFAULT false,
`CREATED_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- INSERT INTO `test`.`users` (`NAME`, `AGE`) VALUES ('Adele', '25');
-- INSERT INTO `test`.`users` (`NAME`, `AGE`) VALUES ('John', '17');
-- INSERT INTO `test`.`users` (`NAME`, `AGE`) VALUES ('Rafael', '34');
-- INSERT INTO `test`.`users` (`NAME`, `AGE`, `IS_ADMIN`) VALUES ('Bruce', '57', 1);
-- INSERT INTO `test`.`users` (`NAME`, `AGE`, `IS_ADMIN`) VALUES ('Robby', '43', 1);
