-- Create "example_table" table
CREATE TABLE `example_table` (`id` int unsigned NOT NULL AUTO_INCREMENT, `title` varchar(100) NULL, `hoge` varchar(100) NULL, `fuga` varchar(100) NULL, PRIMARY KEY (`id`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "todos" table
CREATE TABLE `todos` (`id` int unsigned NOT NULL AUTO_INCREMENT, `title` varchar(100) NULL, `description` varchar(100) NULL, `state` varchar(100) NOT NULL DEFAULT "OK", PRIMARY KEY (`id`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
