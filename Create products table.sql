CREATE TABLE `products` (
    `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `categories_id` bigint(20) UNSIGNED NOT NULL,
    `name` varchar(50) NOT NULL,
    `price` decimal(10,2) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
     FOREIGN KEY (`categories_id`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);