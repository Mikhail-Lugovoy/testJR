-- CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8;

-- CREATE TABLE `test`.`users` (
-- `id` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- `name` VARCHAR(25) NOT NULL,
-- `age` INT NOT NULL,
-- `isAdmin` BIT(1) NOT NULL DEFAULT false,
-- `createdDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
--
-- INSERT INTO `test`.`users` (`name`, `age`) VALUES ('Kola', '21');
-- INSERT INTO `test`.`users` (`name`, `age`) VALUES ('Vasa', '23');
-- INSERT INTO `test`.`users` (`name`, `age`) VALUES ('Dande', '56');
INSERT INTO `test`.`users` (`name`, `age`, `isAdmin`) VALUES ('Dande', '56', 1);
