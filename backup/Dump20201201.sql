-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: service_core
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`),
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'Accusamus libero non et cum ut cum libero.','Voluptas id laborum libero sit facilis minus dolorem. Saepe vitae ut in autem laudantium. Officiis ut velit maiores optio.\n\nDolores ratione quis quis explicabo. Voluptate quidem in laborum voluptatem praesentium itaque. Esse praesentium fugiat qui veritatis repudiandae molestiae beatae.\n\nNeque animi et atque et dicta vitae. Sunt minus accusantium error sit inventore. Odio earum quasi accusantium deserunt.','2020-11-23 03:59:22','2020-11-23 03:59:22'),(2,1,'Nam beatae pariatur sed.','Non illo a ut quo qui cum commodi eos. Et velit quae ullam aperiam sed. Nihil mollitia ea rerum odio eligendi voluptatibus.\n\nSint perspiciatis molestiae iste esse totam. Nihil est nulla consequatur quidem autem consequatur mollitia. Molestias cum sunt ut itaque magnam minima. Nihil suscipit earum aut inventore exercitationem est aut.\n\nVoluptas voluptatem ipsam accusamus. Libero tempore minima officia sed. Fugit excepturi est enim sequi vel quia.','2020-11-23 03:59:22','2020-11-23 03:59:22'),(3,1,'Voluptatem accusantium ea dolores architecto.','Sapiente dolor voluptas perferendis et. Dicta eos accusamus alias at molestias eveniet tenetur. Dolorum laudantium tenetur dolorem quidem magni vero. Enim qui adipisci quis excepturi est ipsam quidem.\n\nEst molestias ipsum asperiores quaerat veritatis. In nulla est iure voluptatum aut libero rem. Debitis nesciunt debitis omnis saepe et sint aut molestias.\n\nOmnis atque et quia architecto. Et blanditiis quod repudiandae ipsum ad voluptatem voluptatibus. Sint et nihil cupiditate qui qui tenetur.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(4,1,'Optio rerum eligendi debitis aut.','Quo animi modi nesciunt assumenda. Sint culpa voluptatibus exercitationem dignissimos ut magnam provident. Vitae qui ea accusamus ipsa ratione totam. Accusamus aut tempore sit est doloribus suscipit.\n\nFugit dolores consequuntur mollitia pariatur laborum. Aut est libero qui numquam sunt quia cum. Quibusdam eius a recusandae sit aliquid ad suscipit. Dicta necessitatibus ut error saepe dolorum saepe ut.\n\nBlanditiis quis repellendus debitis sit. Est optio inventore amet fugit velit sed reiciendis. Officiis rerum consequuntur officiis ratione. Eum delectus eveniet id fugiat.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(5,1,'Dolorem cupiditate et quas laudantium quam iste optio laborum.','Neque natus quo ea iste et qui expedita molestiae. Perspiciatis aut consequatur natus quis. Debitis reprehenderit nisi assumenda error. Praesentium non saepe eligendi nam est.\n\nQui sed consequuntur et facilis magni ut assumenda voluptas. Minus quod similique aut qui laudantium quia id. Ullam qui fugit ut.\n\nUnde similique possimus aperiam. Et non quos ut eos eos. Enim explicabo doloribus quia autem reprehenderit ea.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(6,2,'Et et expedita vitae aut hic voluptate et.','Nisi dolores et quis. Officiis aut perferendis vitae eius qui a. Vero dolor esse doloremque consequatur ipsum. In voluptate non et tenetur sequi et est.\n\nQui modi quasi repudiandae ut quaerat porro eius. Et cupiditate minus aut. Illum et ut natus aut quas rerum id. Adipisci est aperiam aut a.\n\nUt quis delectus fugit voluptatem consequatur. Vel laboriosam dolorum iste fugit. Facilis nostrum ab ipsum facere molestiae quis.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(7,2,'Ut omnis dolorem corrupti quas quo.','Voluptatum sed sed blanditiis placeat dolores. Hic voluptatem quis consequatur ipsa harum repellat.\n\nAut eos quibusdam explicabo perspiciatis qui est voluptas. Suscipit officiis harum consequatur blanditiis. Quas autem et velit quisquam dolorem. Architecto temporibus tempora nam optio porro.\n\nAperiam voluptatem ut error eaque. Tempore consectetur hic dolor qui quae laborum. Et dolor beatae non dolorem voluptas autem. Excepturi et nihil accusamus.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(8,2,'Reiciendis delectus reiciendis dolorem quis dolorem.','Ad est impedit rem tempora dolores deserunt nihil. Iure est libero consequatur sunt. Soluta iste similique tenetur in neque. Ex tempore modi vero asperiores qui blanditiis.\n\nOmnis rerum commodi sed aut consequatur doloribus minima. Aut dolorum molestias nesciunt non quis eos illo.\n\nDolore earum velit asperiores laboriosam iste qui. Ea voluptatem sit nihil vitae repellendus ut fugiat cupiditate. Enim alias nobis expedita excepturi dolores sed.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(9,2,'Voluptate voluptatem voluptate omnis impedit et.','Eum quaerat amet et ea voluptatem perspiciatis. Facilis qui earum culpa illum sapiente aut ea. Iste eius labore accusantium alias consequatur consequatur reiciendis aliquam.\n\nVoluptate omnis voluptatum eaque beatae. Harum et modi sint alias eaque sed fugit. Omnis vitae dolorum hic tempora non in. Aliquam quo deserunt rem sint et.\n\nPlaceat consequatur illum enim nostrum velit eius rerum. Recusandae consequuntur ea aut et sit laborum aliquid. Eius dolor similique eum ad perferendis.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(10,2,'Soluta illum fugit quibusdam iusto.','Provident explicabo aut est laboriosam. Est qui earum id fugit molestias. Omnis consectetur et soluta sunt et.\n\nEt in voluptates hic amet. Eligendi id aperiam recusandae rerum ut ratione. Quia et nam voluptatem sint. Cumque nam odit repudiandae repellendus asperiores ipsam ipsam.\n\nEt natus et id harum. Qui vel enim facilis cupiditate. Doloribus voluptatem commodi eaque non non. Tenetur nostrum pariatur rerum odio fugiat.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(11,3,'Voluptas voluptatem nobis quas eos deserunt numquam autem aliquam.','Delectus ut quae non accusantium nobis beatae. Quibusdam cum laboriosam ea aliquid porro. Ut quia distinctio earum aut nobis excepturi. Repudiandae eius quos odit omnis quaerat eum error.\n\nMaxime corporis molestiae rem eligendi omnis in. Ut repellat aut perspiciatis molestiae dolorum ea. Ad non unde ut distinctio dolor dolore.\n\nBeatae aut ex aut odit est ipsa. Modi ut doloremque ad consequuntur id et. Laborum amet deserunt veritatis mollitia architecto. Rerum tenetur aut cumque ducimus provident.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(12,3,'Odio molestiae saepe vero.','Id amet fugit aliquam. Eos hic rerum eius accusantium voluptas architecto. Quod quidem aut culpa ipsum asperiores et.\n\nExercitationem ipsa sit dolores voluptatibus et aut. Fugit debitis minus et aliquam rerum modi cum consequatur.\n\nVero quae omnis nemo minus maxime sunt. Nihil voluptas repellendus illo quam id. Vero nisi non iure repudiandae quo dicta. Quidem et eos et voluptas rerum. Molestias temporibus officia nam distinctio molestiae.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(13,3,'Ut quo culpa dolor qui labore voluptas voluptate.','Dicta qui omnis nesciunt velit qui. Sed aut accusamus aliquam delectus nemo laudantium. Optio omnis ipsa et maxime error. Sunt fugiat est nisi dolor asperiores maxime molestias.\n\nNon ipsum cumque quisquam aspernatur. Eum sed laboriosam odit perspiciatis assumenda. Est cum eaque minima aut quaerat sed non. Necessitatibus rerum magni aut qui ad.\n\nDolores quas id vero quibusdam dignissimos magni. Aut sit repellendus esse cupiditate. Tempora aliquid dolorum officia sed vel labore omnis. Perferendis quisquam quo et aliquam.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(14,3,'Repellendus qui aut ipsum aperiam earum nihil quibusdam.','Quaerat rerum facilis eos explicabo sint. Aut ducimus aperiam molestias quam quis animi. Totam voluptatem autem eius perspiciatis libero.\n\nQuia quia eligendi pariatur cumque nemo aperiam placeat. Aut beatae nihil adipisci atque numquam doloremque aut. Aperiam sed est ut vel sapiente fugit. Nihil corporis aut et deserunt dignissimos molestiae quia.\n\nDolor numquam veniam occaecati dignissimos mollitia quos est est. Dolores aliquam reiciendis blanditiis quo quas maxime. Molestiae molestiae rerum omnis expedita. Odio atque non et accusamus explicabo sequi assumenda. Porro doloremque in nam vero totam voluptas aliquid.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(15,3,'Est qui libero quod ad porro vero.','Id et eos voluptas saepe. Soluta quidem sit vitae corrupti recusandae. Qui asperiores soluta est qui voluptates sed quasi. Sint similique illo maiores iure occaecati praesentium enim.\n\nSimilique consequatur labore iure dolorem. Et est quo eos est minima. Voluptas rerum illo saepe ipsam. Aut unde atque iure esse placeat autem.\n\nDistinctio asperiores aut dignissimos ullam et. Atque non est omnis dolor culpa quidem eaque expedita. Rerum non excepturi sed in.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(16,4,'Quas rerum esse cumque saepe atque.','Est incidunt consequuntur atque vero molestiae ullam. Ea dolor cum quisquam perspiciatis est. Sed qui aperiam tempore quasi. Deleniti reprehenderit inventore incidunt delectus deleniti quis animi.\n\nQuibusdam qui officiis vel voluptatum. Ex laboriosam consectetur quia rem id. Aut omnis rerum nemo facilis delectus voluptate natus ut.\n\nHarum aliquam quidem laborum rem unde. Accusantium repudiandae eaque non et dolores. Laboriosam necessitatibus fuga earum laborum.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(17,4,'In velit debitis voluptas qui in ullam.','Quis beatae at ullam ullam rerum. Dolor minus quia non dolor magnam voluptatem. Voluptas velit enim ut quis odio.\n\nQuia maxime et rerum repellat dolores nesciunt. Non minima et harum quas ratione. Vel corporis quaerat provident nesciunt beatae.\n\nAt dolore nulla quidem reprehenderit. Ipsum amet et natus ipsam sunt repudiandae. Dicta iste est dolores autem rerum nihil iure. Alias odit qui similique officiis qui deleniti dolor.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(18,4,'Non qui perspiciatis laborum.','Perspiciatis assumenda ad repudiandae aspernatur ad deleniti et. Est in inventore eos soluta saepe dicta.\n\nLaboriosam placeat a quo et asperiores accusamus libero. Architecto ut quis consequatur rerum ut reprehenderit ullam fuga. Reprehenderit possimus fuga a. Rerum omnis eum autem ut at.\n\nVoluptatem quos nostrum blanditiis placeat rerum optio quam. Consequatur voluptatem accusamus dolorem ipsam quia. Est quidem voluptatem sit nam beatae.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(19,4,'Nisi vel aut eius earum in in.','Et in eos excepturi repudiandae ut. Veritatis modi sed distinctio nostrum. Voluptas est ut tenetur. Non voluptatem rerum architecto at distinctio.\n\nFacere et minus totam enim. Et in ut autem placeat eum. Minima placeat aut corrupti. Omnis officiis amet et nihil harum et est.\n\nNemo nisi odio dolores ab aliquid fugiat. Dignissimos quae dignissimos cupiditate illo nobis quas. Itaque id ut velit qui dolores provident. Consequatur aliquam quo eligendi eum.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(20,4,'Quidem ex sunt quidem ut.','Quo omnis sequi rem ut. A libero et sed. Recusandae pariatur neque iste similique libero laborum consequuntur et. Sed animi possimus optio eum dignissimos ut neque.\n\nMagnam quia explicabo aut itaque sit consequatur soluta tempora. Est in aut ducimus ipsum eveniet eos. Quia et in eum maxime.\n\nExplicabo nemo inventore rerum natus est necessitatibus ut libero. Ipsam quasi placeat est et nihil voluptate sunt natus. Laudantium non illo non exercitationem et numquam ea omnis.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(21,5,'Commodi est vitae ab laborum dolores quo.','Recusandae non ea tempora maiores. Maxime delectus pariatur provident distinctio dolor quis. Eveniet beatae consectetur et laborum fuga.\n\nVelit nihil minima consequatur iure molestiae officia voluptas. Asperiores sed autem eos magnam voluptates. Tempore molestiae aperiam ab et.\n\nEt est sit aut iusto quia minus rerum. Earum error sapiente dicta distinctio. Nisi rem rerum saepe deserunt eos harum. Inventore est harum ut at magni deserunt ut.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(22,5,'Suscipit rerum eos qui est blanditiis odit.','Fugiat maxime architecto ratione nam quibusdam cupiditate fuga. Veniam est qui ut dolor eaque aperiam ea.\n\nError accusamus aut sit odio molestiae. Atque quam vel dolorum ea et sed. Facilis sit tempore inventore pariatur quae quisquam provident.\n\nRem nemo accusamus sed omnis voluptatibus tempora. Non occaecati aspernatur molestias vero id. Explicabo illo voluptas quae qui repellendus reprehenderit ea. Quia porro deserunt excepturi voluptate natus consectetur unde nostrum.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(23,5,'Excepturi asperiores aut earum eos.','Eum minima amet quia magnam. Omnis assumenda rerum deleniti fugit praesentium voluptas optio. Et in aut eum quaerat consectetur reiciendis.\n\nVoluptatem vitae maxime expedita mollitia. Nihil et voluptas omnis velit. Reiciendis velit facere omnis. Consequatur facilis non facere minima aut et.\n\nAperiam eum in doloribus aliquid qui praesentium sed nulla. Vel quia veritatis consectetur voluptates. Animi quisquam sunt iste molestias.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(24,5,'Aliquam quis sint deserunt quidem quae.','Laborum ex aut tempore nobis quos doloribus consectetur. Repellendus commodi totam vitae dolor quam esse. Sed explicabo quaerat quos unde omnis cumque facilis. Consequatur amet optio quia dolor rerum. Non debitis deserunt quia.\n\nOfficiis sint quisquam qui ipsam optio porro aut veniam. Non est sit sapiente a molestiae illo sed. Facere cupiditate est quo deserunt qui.\n\nTenetur debitis sunt animi libero. Voluptas commodi eos nobis sit fugit recusandae. Omnis aspernatur est modi doloribus dicta voluptatem. Sint rerum dolore sint atque.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(25,5,'Neque tempora porro reprehenderit repellat illo vitae occaecati.','Voluptates in sunt accusamus quo illo consequatur. Aliquam odio possimus id temporibus quo quasi. Doloribus quia labore odio illo architecto nesciunt.\n\nBeatae qui magni blanditiis expedita assumenda ratione. Sed magni nostrum nemo reiciendis. Reiciendis et qui incidunt sed repudiandae aut aperiam.\n\nDolores consectetur maiores qui fuga sed itaque voluptatem. Commodi accusamus illo corporis ad. Dignissimos in mollitia eveniet adipisci dignissimos ea. Est ut consectetur laborum cum aut.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(26,6,'Ipsam sit exercitationem vitae vel eligendi.','Animi soluta omnis eveniet est illum. Dolor quibusdam numquam in et autem vero consectetur. Tempore voluptas iure ut qui quo quam. Molestiae numquam enim modi molestias. Qui quae deserunt nemo eos.\n\nEos quia beatae dolores dolore dolorum cum consequatur. Qui qui nulla autem nam mollitia. Earum eum quia atque possimus est asperiores incidunt. Sed eligendi excepturi officia voluptatem.\n\nAccusamus eligendi quidem dolorem sed velit. Et et sed quia sint et. Magnam ut saepe doloremque commodi explicabo similique qui. Culpa perferendis amet facere dolorem vel suscipit ipsa.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(27,6,'Nisi sed iste vero temporibus.','Quo harum atque aliquam quia enim cum molestiae asperiores. Qui ut deserunt officia adipisci. Optio dolores sed et tempora. Praesentium qui necessitatibus vitae maxime qui omnis sapiente.\n\nSit fugiat et eum tempore enim dicta exercitationem inventore. Totam accusamus aut et culpa sapiente. Asperiores perspiciatis aut magni placeat voluptas fugiat.\n\nNesciunt molestiae vel necessitatibus. Culpa voluptas omnis sit architecto odio maiores sint omnis. Dolorem assumenda nobis repellendus facilis impedit. Quae omnis ex aut. Odit id aspernatur et qui rerum consequatur id.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(28,6,'Voluptatum provident quidem qui.','Tenetur tempora earum sint esse ea aliquid qui dolorum. Amet veritatis sint perspiciatis iusto. Suscipit et aut nihil ut exercitationem.\n\nRepellendus mollitia voluptates optio eaque. Asperiores id ducimus libero sed fuga quia. Minus voluptas velit voluptas fugit sunt alias quas. Vitae rerum ea porro iusto ut.\n\nRem velit ipsam facere nostrum eos delectus. Aperiam odit nihil sit nobis voluptatem aut at. Nihil voluptatem libero rerum fugit. Exercitationem dignissimos et qui nam debitis veritatis debitis.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(29,6,'Id rerum voluptates corporis aperiam aut ipsam non.','Occaecati consequuntur rerum quas quam non consequatur rem. Nostrum consequatur officiis et tempore cupiditate sit nobis praesentium. Hic est nisi natus in nobis.\n\nAut totam dolorem quod accusamus. Rem non consequatur asperiores accusamus dolor. Nesciunt nobis maiores tempore iusto. Sapiente est ipsam ipsum laboriosam enim deleniti ut.\n\nMinus qui corporis molestiae est pariatur sit. Quo quam et et deserunt sint assumenda. Nihil omnis quia iure dicta esse neque voluptas ullam.','2020-11-23 03:59:23','2020-11-23 03:59:23'),(30,6,'Et ut aspernatur ut vero rerum totam.','Ut et dicta perspiciatis tempora magni dolore. Aliquam dolorum similique sed nulla dolorum. Qui ducimus tempore distinctio cupiditate ut autem aut. Vel repudiandae ad cum.\n\nSuscipit hic maiores ut illum labore. Sed ex ut molestias molestias accusantium eum est. Dolor cum quia minus sed reiciendis est odio. Vel laborum itaque dicta numquam perferendis architecto.\n\nDeserunt sed dolorem laudantium. Id eius et est iste et. Asperiores ipsum blanditiis accusamus similique cum in quibusdam.','2020-11-23 03:59:23','2020-11-23 03:59:23');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2020_11_22_155401_create_sessions_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',2),(7,'2020_11_23_105142_create_wines_table',2),(8,'2020_11_23_114645_create_articles_table',3),(9,'2020_11_26_114752_add_api_token_to_user_table',4),(10,'2020_11_26_115243_add_api_token_to_all_users',5),(16,'2016_06_01_000001_create_oauth_auth_codes_table',6),(17,'2016_06_01_000002_create_oauth_access_tokens_table',6),(18,'2016_06_01_000003_create_oauth_refresh_tokens_table',6),(19,'2016_06_01_000004_create_oauth_clients_table',6),(20,'2016_06_01_000005_create_oauth_personal_access_clients_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('9219f786-e166-4583-98a5-b09c5f1abb36',NULL,'Laravel Personal Access Client','gKSSgeOeMsiQE6YUietvXYIXnRc3xEw76gsMYMgV',NULL,'http://localhost',1,0,0,'2020-11-26 06:50:46','2020-11-26 06:50:46'),('9219f786-e540-4902-b95d-225df04c450f',NULL,'Laravel Password Grant Client','vntP0odgNkkEiYxnXZykGJpjlaGgrMQPNbVfANjx','users','http://localhost',0,1,0,'2020-11-26 06:50:46','2020-11-26 06:50:46');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'9219f786-e166-4583-98a5-b09c5f1abb36','2020-11-26 06:50:46','2020-11-26 06:50:46');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0YXSNAgkR3nL7tUKGWRPhos8aRaUZZZbVftK45Fd',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUJOcDFaRWdRUElIYXJ3UmlQdXRXOTgyTTB2Q0d2SHZFU1BFZUN1UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739517),('2JgKLBhw5TaNDgfFLwRnFiEFTFp4SJg5juNbLhBz',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDY5aWpQc3VIaXkxM21hUEx2VHhVSDN2a2FTQWxIOXFIZ3JKOVNJOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606738452),('4ii1Esp346nH9UA5ZTFLxrqhFJExDZ2cqZo5Zi3B',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiemdFa2JIZjFLYzZYOEV1ZjEySHNYS09DMGFUWHBqeHJIY1ZsOVF1NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606738163),('4JGrjc8D3ffPd5w7SSisgjjNfzCYdxqQL26xA2yc',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEpFbkl1UWR2ZW9sYU1HTEQ5RGFrNDRwYU1UUmVRVTU5cVVsMThqNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739650),('5BRcHcV3Ao4vNFEnKZAkYjFbrxqYGHRUc9CXlHnE',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoidzFZc2ZnVXNpaEYyTGpKYUpaMGowS2tGVFlsRzNHWFA2UzFKdWdWQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739512),('6bCAmSzUw2vJLx2lziJ6H6cYQmXWFi442lElLX7q',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiVG5HOHAwRnh3VkJXOTJ0TWNZV3UyMmgzbldHMlM3MTJScTFlR3ByYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739662),('7SWFYPqn1YY5R6uE8t4F9b8jptkF3ZleDQRRHT5d',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiTEM0NlRJZGlJZjRwQk5wNmxGOUFBaDREcGRrU05oQUV4NFJtS3NURyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739698),('8qZtB4VuQdWOBKMMjI7BBk7iHA14e6cX4GkLvF5p',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGVYTm11Zm9FUjNCc0VvNDV2TUp2blh2V2JHZ0VSbm1PMXE4cGpJYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741048),('98IsnoNIND6DD1r3PmL2RQvLsgukLIqR9JhEDNbK',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicHlDRmNNanJwRmNPUXNnV0RxY3Q4dDJWeUVaNnFPbjlGd29YM0twRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739391),('9aITCa1Ee2jic95BejeGTsOqV7J6UU8Oq21wre8D',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoialdNanhNcjViUDBXdEhmQ1hFRThHQTJkY1Z1dDZlNHU5WmowWEo1RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739948),('9FAEFOXaoPHLc4KSoag2DflLNLxEChDZVgJ9HTP5',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTNrOWRQbXA5TGplZEpYWXE2YnRjako5WUFwaEQyWWg2Y3o5VDJTcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739961),('9NnsExakPbbJg8hE1AsdjOxmckrclWtp3HlkJ5Ns',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiRzdOWTAyNDNrV1ZFOGhvZzhidG9sTlZKVUllcHVWT2ltalZiVTNwayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741652),('bCLfFy2vUN4TgDcbKBp6y6Tfokrs4N1xRrA16PLA',1,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGx6NlY1ZGJOQ2Z5NnhMbjdnZFBGSThoTjdKVFU0emdIWEE4MENMciI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606739116),('bEHL9CoJzTji19VeV9UiHpCpI4Uu2HWB9Lx2K1VG',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoickFhV1VDMjNqRDdLWndtVkxYMlBNTkpVRGJaUlF1anZFd21BRGJFVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606737567),('bjkNYu0nnERL7E7mTBK71vH2slUxNdNL21oowRHo',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTBuMVhIaVVDQ2Z2TERhNzNveGpsZDNlQmdKeTNXbEc3aHVWT2hIMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606738913),('bNAoX2A8yemOWpap7lA8CfH7ve5xkdjz2W2tvzQO',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFRad3lOMExob1ZHdWRZcUQwN0VrTm9xd1I2eUM0WE4xcHRFZmo4cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606740068),('c1CuMCPl17p5oyTYOx5HJTtrX6YIJieJZpHrrrhm',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3FSQmNobGpvWVZqQ21WcXRrUlRlb2I4N3JwQURjSVJYMUFFSGFodyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739102),('C6yTu3dYHuxWFfZm1V38HQj7Ar9D9QY06odzHKWW',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm04QjYwdU9BbVFqdlNVZjMxTTRFeEdtbXF6MWRjWnV1cWtWNkVUVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739970),('CLkZXTSHslD69ThLnJEgu703qdRemqFxmQ4d1VrO',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoib000U2V6ajVwVHVRcUtST3lrTzRudWtVT2VUaEhmSm9vZmpJZWZEdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739389),('cNVvLtO1HE9TifhAjWQ8KSarf3y8SwbbTsydeDcN',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlpqSTFUZ0RlMDBSZ1piMVk0VHJTRkFxUmkySGJZb3VvUHZZUGJkaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739514),('cPyk4dBcqiRLOV55HpXmab2YnlzgU8CwKUz2pLCb',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhLWDVtdWU0ZENZTHFBdmpyZWJ4dU5xUjg2OTNvWW8yeDZyc1R1TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606737563),('DCGD8DPal5YsU5jKwG7qoOngOocL6tcgCYIGfHPH',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHFRMmo5c2sxMFFJU3ZWU1BPb2h0VkdFMVhYWkdJRG1hcVdldDM5QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606738157),('DraICShTha9cm6NtZcZc9933UQwU7fp5mVfszhUs',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWd6cFBZN2kyOVJQcWdocnBpSzJtM042T29SZTFXSW9GcldWUE5WTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606737573),('eaaQYwOgYj0T3CamNdENsrU7NtRX88gIFUTa8506',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHZSNjBuM0RMNkw2WXViSTFXTlUyT3NGT1VEcUJzNldaRTFHWWJ4ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741058),('EAYC0W1pdVxpp61kwx2KGiFZhtt4YKJy2fNHnDB0',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkNCbXNzN1QzejFFZjlhMERZUTZxVGNUaUJDTWtTM2tsQUU3ajBRSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwODAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739970),('EsOsQU9Oft4r0JSa7sQcTjRokq5VOAmaw2zfu7zz',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoielpMZHFoUTZFUDZ2SUtLbWdra0lhOXZ5VmpNaDhQeklVbUpwaVc0MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606740241),('evAzXRvRcdq8CgKbTsFHXnkjU7wGdvrwX1eLOkbS',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoibEZnbUR4Tm5qbXVZSGl6azFZT2VISFdYOHNON2VsOVlMZWIwZU8zbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606740224),('gbZvnk9DiCyUbZ3SPjKdgmB6QNPUbIjJAQ7LMs5V',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGpkaFlPYmJOeFQzdXNBTGtCMW0ybEZKMlZWQWFuNGZRYzJYRXpYdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739475),('HienSED7H2SSEWlP3JzxaHB5DCvPDGimpYSCwvZS',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUms4ckw3c043NkNQVjdUY0dHbm5KSjNCaUt3enYwRTJFNWFpYmkxRiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwODAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606740068),('HL2o3FbSXyeZ3FIzBvBzMgzHMGds0u5nBBM4J1ME',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiY2dRclp3cU9SRnh1cmJSMXVmdTRlSkVXSFNQR2ZGRmhCTXVERkhERSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741522),('hMsy5zrIT6IKlWdMNeXchvObukcUZ6rJO5lNDor0',NULL,'172.18.0.1','insomnia/2020.4.2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiVFB0dVVna2lxSWkzSUlSRExFRG01Z1pIT0txT3JNODFsbWRpeVZrayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606737629),('hq3vNVG8IRLZF8wxKwL3cBmeuEnHzvCJ3DArRzq9',1,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzFCTE01aDFOTXNQV2Y0RUdUT1d1NEFGTzhISW52QktGR1dYUEZBSiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606739101),('IdV8epP22hSkaILSSHsheeOONuDgynt7VMRvcFoN',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEJqekxTNlVybWlDdWpZeExmaUtRQnlhd3FUSDBkbXhqbVJBMmZ5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606738915),('iSrKsrNHmGgDNyy0cdqY4XQjW1BWYSmmKLfUDlQH',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMm1ySm9tWW11NUtrNkNnUmdIdTJSek9pQ0FwVUlvajB3WXltMEdvVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwODAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739116),('J0wDFGQxAPLzdNolyY8eUhEkzOGT7vOoiByTBVJr',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiT2FPb0gxb3c0TGxhcWg1bzl1NWxMT0RlekJ0eVpOOXBoQ1ZabTcyZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739696),('jsuFKjJII31vXpeVcl72l2UPZBdKikIgLTxL0rQk',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3NwQzFZTGhjeUt5WTFTMXVVUUU5aFFyTVl3RUVFM3FSQUFhMldlVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606741051),('JYSv5AD7tGsNraKu4HaSBgHBARCFQB0JmiiqlH1J',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoicGZBVndXcXpNcXg5QTZub3FmRUFNMVY1a3lwTEJsTDVBVFJCQnNFRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606740100),('K25FY1aA8XhTmdGRo76T1OnTOyHpIPVnRTpP8UYR',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoibnB4TjNzOUdZY0s5WTZWOGNQb3JST2lKQkpKcU1heXh6MmxWSlVPYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739692),('KGCk5uqSglMzKaOXyXxtjco9A47X50kOKwqsYHuy',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnVRSVhtYUZEMUpqT2N0UDJSdmlaNnc2VTFVbHRUbk9SSUcwNjd4NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9jb3JlLmFwcC5sb2NhbDo4MDgwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741240),('kJofIWJyYTUnpAR1yb3fUd26HWDenXWXGoi7YQr9',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU3U0TlJRbFd3RENwWHBhaDBJWUw5VUtZZ0ZtQ2VJNnJDM2R6bzJncSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwODAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739093),('LxGYYGuPJD6XZhMPm4ws4Up5DjSxbrV5wusGT3I6',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiNXRzSjdlajlkUDRVcGVVdEpMUnhkNEcyZ2tyTGhXNlZzalI1bXd0OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606740851),('M1tR5qMEJsXhP58Oj2WfEwMjkUFlih9KI2h9IZrX',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2UyVkNJaUVZeFFINkowOXhDZmlRZVBuVHhBSjhEZER0S2d4bkFqSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606740061),('m8hHUznKnJ4nFFT2eHj7GM2catY0Qt8zruUc6mW5',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWURLcVZyeXRxNXZGRkJ3aGxkSWwzbXVyU0lQc0pBSzNQOVZYUFQ0OSI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjY6Il90b2tlbiI7czo0MDoialdNanhNcjViUDBXdEhmQ1hFRThHQTJkY1Z1dDZlNHU5WmowWEo1RCI7czo1OiJlbWFpbCI7czoxODoic2FtZWVyQGV4YW1wbGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjI6e2k6MDtzOjEwOiJfb2xkX2lucHV0IjtpOjE7czo2OiJlcnJvcnMiO319czo2OiJlcnJvcnMiO086MzE6IklsbHVtaW5hdGVcU3VwcG9ydFxWaWV3RXJyb3JCYWciOjE6e3M6NzoiACoAYmFncyI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxNZXNzYWdlQmFnIjoyOntzOjExOiIAKgBtZXNzYWdlcyI7YToxOntzOjU6ImVtYWlsIjthOjE6e2k6MDtzOjQzOiJUaGVzZSBjcmVkZW50aWFscyBkbyBub3QgbWF0Y2ggb3VyIHJlY29yZHMuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX19',1606739960),('mi5tSYJ4G2GohYPmupUfQNqwDCCmINhbD3l00GWb',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiWFA1MFZVRDhTSVBNVldhV2ZIbmEyOFpOMU9ydXJrZ2J4V0VQcGxaaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739483),('MKbwrwLOO9J7ADZ39Q2l0OjQ6s0e9TmhX2KfYtN0',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiU2hqYWJqMW9iZ1lxRWtOc0I0a2F1STJxNXF6SFVTeDBWdkV6NzVxayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606738926),('mRKFFk7MX09wkqKfKEb49x6xtz2x1ya5uTTrzV5o',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2o4U05NdVUzOXdYSnNyMmJtWm9XcXdpb2ZmdVd2NFR5cWwyREhCVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606738155),('nFkGhWxraYFE9iPEo3D5YiAfeQTperOUoP4VP2h9',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiNFh4SWZpM2VkRERMOHJPZlZmbExFNlg1eFJISjhLd1VTc2lnUGNuSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739589),('nkDPzvPi7w6IyRZ5p6tIY15NRf5HhP4yUcjkiJxs',1,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dET0F2c0hKdUg4QVpqRjlMaVVsN0p4dE5PRVJFZDRjMno4b2VyaiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606739970),('ON3VVkCcKC1K8VZtHhSh7EMcpEANh2geBxDfItBq',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYVk5ZkhCWEJTR0s0VUNGcUJkZENqU29Ucmtub1dSQnIyT0c2U05wMCI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjY6Il90b2tlbiI7czo0MDoiOEpFbkl1UWR2ZW9sYU1HTEQ5RGFrNDRwYU1UUmVRVTU5cVVsMThqNSI7czo1OiJlbWFpbCI7czoxODoic2FtZWVyQGV4YW1wbGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjI6e2k6MDtzOjEwOiJfb2xkX2lucHV0IjtpOjE7czo2OiJlcnJvcnMiO319czo2OiJlcnJvcnMiO086MzE6IklsbHVtaW5hdGVcU3VwcG9ydFxWaWV3RXJyb3JCYWciOjE6e3M6NzoiACoAYmFncyI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxNZXNzYWdlQmFnIjoyOntzOjExOiIAKgBtZXNzYWdlcyI7YToxOntzOjU6ImVtYWlsIjthOjE6e2k6MDtzOjQzOiJUaGVzZSBjcmVkZW50aWFscyBkbyBub3QgbWF0Y2ggb3VyIHJlY29yZHMuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX19',1606739948),('PDzU82wEMFD3lNqky4318Z64njytLC6fl5Lb5gTV',NULL,'172.18.0.1','insomnia/2020.4.2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiQzQ3blUzdDVvamZNY0drVnRXaVBBYWVVMkR3N2JiYnR6NERMd1JYMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606740284),('peAZDpTKYhk1yfpm5alqmNT3ntLl6X4VGtQi8VOz',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGpmYjFxb2EzV0FqN0NpdHFRZnd3NzJEMkR6Mk9mT0FGQ21hUmdVbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739975),('PNXJX0OeGWdx28ovLjy9jr5T4L1pTLkIf0hccFnk',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibnVoenhhb0x1MTVtb09PRk1IMDFNdzFCSWlqaFZGS3ZNclhNRE9QVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9jb3JlLmFwcC5sb2NhbDo4MDgwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741235),('qowdHqkhyZQSaFnL5RBa5bJnCvkamOsKig4ppkqB',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibzBWbmFEMThMQjlHektRNkVLYlhzZ3NaQW5lcU8zUWdIcXFyTzNFayI7czoxMDoiX29sZF9pbnB1dCI7YToyOntzOjY6Il90b2tlbiI7czo0MDoiVm04QjYwdU9BbVFqdlNVZjMxTTRFeEdtbXF6MWRjWnV1cWtWNkVUVSI7czo1OiJlbWFpbCI7czoxODoic2FtZWVyQGV4YW1wbGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjI6e2k6MDtzOjEwOiJfb2xkX2lucHV0IjtpOjE7czo2OiJlcnJvcnMiO319czo2OiJlcnJvcnMiO086MzE6IklsbHVtaW5hdGVcU3VwcG9ydFxWaWV3RXJyb3JCYWciOjE6e3M6NzoiACoAYmFncyI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxNZXNzYWdlQmFnIjoyOntzOjExOiIAKgBtZXNzYWdlcyI7YToxOntzOjU6ImVtYWlsIjthOjE6e2k6MDtzOjQzOiJUaGVzZSBjcmVkZW50aWFscyBkbyBub3QgbWF0Y2ggb3VyIHJlY29yZHMuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX19',1606739975),('qpSAkaxYMywZlcNwis1I9EbANmwhi20gxFGG2O18',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiTHpJTjZTUWhyeE9TSXFOQk1VN2RuVWt0SGhiTFBVSG5NNG9GQU9LbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739541),('qQ1Ko4sSu3VRWMUwYe4lSJwF88bGNbHO3WKg7H2z',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiRktNZW9hb3N1OVoxbGZxTjFMZWI0eWJjUWM5d0RSc1RDZG4zMGs5SSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741074),('RVaOh4vCd2OzY1yDT5bVztiCZoaNp6CaZrBj5Yos',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiZW5PZHd2OWs1YTlOb0doNEJSY0V1VUsxNDdLOEV1T2lwV3BBVDJySiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606738176),('S9YV2vBkIAPr7gH8u35RMSsZuvlA0hqkrCngoOsH',1,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnJQV3BYcElvWThtcUROSVZUZ1F6OUJXOFFvQjN0RlA5R0V6ZFJTMiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606740068),('sfmHkJxe0YmSOmSBMdeW191bR0KUtplutASMAtAz',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiNkUzS1NIRUcxRHBrVjJTRVhzUXRDckZmRmQ5MXljZFB2RUJuOVY4MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739620),('suqLrXxB7ubeMSOEhThzIU7eMuvGKmnoz0AO1svI',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVNvUkxvM0ZucjM1Z3FZUUtsaTFFemp6dXhKdlVYZWhJaWt3akF6ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739473),('SxCpFKx0LhkMaGGI9EtRhKbOxUa7g8B2l4kx2Mi7',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT0ZKMnZNcTRuUFVaZHdkV1lyVmVMRE1pR3d4d0E3WmFSR0pQTUdZZSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDgwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwODAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739101),('sXn0aCu9NSH0bujru5i9DHZMAmOfCSvNOnUrPX12',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoib3k1UVpENUEzOEoxdUlOOFZlcFdyb1F1dVBkMDNNQXh2b0hNR0JwdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739422),('tC9a6yCjUcI4D4uS8quS6bnnQLvjpru4gSsoLMxI',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlJkcDZMVW04Zk9EOUZXUXFjQlZ4cGxvNU13akd1UE9hTUlkejB1NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739530),('tVi22wqH2atc6xQsBy2sTleBjaVaoDmP0PRSXokE',1,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlJrNG1FV2g0N2RxOGZRQmdJUWdONXZhSTZwVURiMXI1cnA5VFJDOCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606739092),('vjRRGLH05or81eYgSwoe4bOprXCF2sVL5PCba6fY',NULL,'172.18.0.1','insomnia/2020.4.2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVpSRXhhaUpZTXB2dlNHelhZamhrTXZxRU92THI4S1ZxNjR5SVlqeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606737632),('VkdJf52ZAGaIMrp8zaYIZkfU34GEuFqJSot3Q8sv',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoidjFNN1NrNUhOQVJnRndGWkFUZUp4RURnUlQxbUdJbWZvMmk1dTI0ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606738458),('vyZTcswmJq9uLkYAM3CyXrDFeyBUy3NzKGd4tqlC',NULL,'172.18.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU5pWTJMYW5wakJPbWwxbm52cjBOMDNra3ZwdXNYTEdPVU9vQUduaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606737592),('VZbKdkG6iFGdCnytOcWyGlkFGZ9PKcEpkCQujWRK',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoibFJ4SEpEQUk2TzdSVXNOU20waXpOR3JDbzJLR1hqVldJcFAzRHF6VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606737441),('w4LEjG5lvBJCiA5HMn4EKoKLtBcOIHuSyalbUoBm',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiakpMaDdDZjhuMlNvN3J0UDFNYmtTQnh3Sjg4ZXF6NXdhTDVSMElDUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739430),('WObTJaaovgkx6g8WidhZMwiAQ89A8woyZIcXGZjo',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiQjk2eEFpSGd6Q3R3UEZrMUFGaEx2ZE5Pdng0VWU0ODF0NllxYno5aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739708),('wOZPvHx5WI9Q0Oaq5scbpPvDze63GMWzB7KN7ThC',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2dTOUNPazhqZ21GcWxzbTNCM3FPVENYWjd2VDhodGR4Uzh6eVRHZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739510),('WSzoupm4LrxBySEfp919W60JhD2WEwiMyUUuRG2G',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoidHRaUUFhNUY2ZmNpYnhrWE9VSHh1Y20wSUJGdVhIemVIN2I2c1hpbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739750),('xhTR8n1GIv2joc7dsLnQ1HhCUhx2wyp68P7bjoPG',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEhsdkhodlBsQWhUUmdzS0RZQlpycmxPTW1xOEthYTRFSUdRU3VuMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739424),('XvAM8QiP2c2dJZUcF2TeGyp0CZ9nXseYnO1qewVG',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXVCRW13T3ozQTN5eUNXS3JsckNHY3JTQkU3S0FPSXd3TzRSc2pVZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739637),('xZax3pluz030GABlbo7yNRLaUoFka3ZvYW5DhKDc',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGtSQ3N1SWJvTEFPZjBFME9odUdpRG9TM01SQmJtcDFCdmtSTnU5UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1606737555),('y1eU0KluGwj0rNPRExgYDA8ErCtjOzERuWVUAUou',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ0MzaW1HNzdXd1VpRnMwN0hLNnMwM2psY3o1bVpUTmlpRXl4R3V6NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606741261),('Yaz8yUdm9TFWUVxlVP35kDzXIJz6Ti03oZe0vdy7',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWRkME9oTmtnWVl1bjBpeTNmazN4cm1ncmpVbzdYMzJZT0JMZ1JoNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739093),('YVlH6TWXwtU0m2aCVmYpi6dA2GOcPpYp4jUR7tkQ',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkszcWlIOWxOaGU1VkVEQllDbDVjSHdZQWU1NUFWM1BpY3hOQlNCdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606737889),('zTyTlGYe6Yl27BQGVs4Iaoam9DTbgqorznXIzycv',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3hKQW1zNmlPQ2lWR3dFYmNiRzN0NFZqdExyQVlRWnN5TDJUc1lvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1606739116),('zu7CrTi73rXUIlp2HAXrI86SLYai9g5EVHffLc8e',NULL,'172.18.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0','YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmg1ck1aWUh2ZDZTODFvQWFZN1JRNERJamtEUllUMDdGMG9HQ3FpMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1606739536);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','sameer@example.com',NULL,'$2y$10$0UyDB4RLklrHBCpSqHoi4.kvKALNrEpyATgPmcXM7Ti0jQtRfBjhe','qiXVi2e17k58VU0Mxl1PDpl7IwfbNsL4cbjRaq9RPICXzcHdPgoOVlHN98Sl',NULL,NULL,NULL,NULL,NULL,'2020-11-23 09:56:06','2020-11-26 03:57:30'),(2,'Meda Willms','graphql@test.com',NULL,'$2y$10$yGGpsybESs.UFT49K6jxfOAmBS4oQRKa8v6SYJ3rF8PK1UyiaPqOu','BqodnemH3JTjwNzc6K4QYUddfisPsOMkhgZoQ9rnWWm0SSiqQTfRmT3mttcY',NULL,NULL,NULL,NULL,NULL,'2020-11-23 03:59:22','2020-11-26 03:57:30'),(3,'Dr. Winfield Romaguera DDS','gutkowski.wendell@hotmail.com',NULL,'$2y$10$yGGpsybESs.UFT49K6jxfOAmBS4oQRKa8v6SYJ3rF8PK1UyiaPqOu','ab3dEbWgZdw99gPuYi5OSu9yMCo504OGlwOt72T7BMnK4t4H0E1tJA96JyrE',NULL,NULL,NULL,NULL,NULL,'2020-11-23 03:59:22','2020-11-26 03:57:30'),(4,'Carlie Collins','ahmad82@pfeffer.net',NULL,'$2y$10$yGGpsybESs.UFT49K6jxfOAmBS4oQRKa8v6SYJ3rF8PK1UyiaPqOu','W44uyS2lP0LtCneSTKKipso05jq25vfgk3UvyGHsPYrL6W8jz6At9Cgnljyd',NULL,NULL,NULL,NULL,NULL,'2020-11-23 03:59:22','2020-11-26 03:57:30'),(5,'Theodora Runte','rozella82@weissnat.biz',NULL,'$2y$10$yGGpsybESs.UFT49K6jxfOAmBS4oQRKa8v6SYJ3rF8PK1UyiaPqOu','s1mb16FRM1A7Z9BsYlfitKAyjkOWEktJVHxgPcRTmp8oKyrHR1qd5Wx2xMlL',NULL,NULL,NULL,NULL,NULL,'2020-11-23 03:59:22','2020-11-26 03:57:30'),(6,'Santino Sporer','jerrod26@ullrich.com',NULL,'$2y$10$yGGpsybESs.UFT49K6jxfOAmBS4oQRKa8v6SYJ3rF8PK1UyiaPqOu','uK3eMwKrmxUFRNkiBWF9F956JqREY4hxia1oDZlhlHwrv77X59ihCnag9AOg',NULL,NULL,NULL,NULL,NULL,'2020-11-23 03:59:22','2020-11-26 03:57:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wines`
--

DROP TABLE IF EXISTS `wines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grape_variety` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wines`
--

LOCK TABLES `wines` WRITE;
/*!40000 ALTER TABLE `wines` DISABLE KEYS */;
INSERT INTO `wines` VALUES (1,'Classic Chianti','A medium-bodied wine characterized by a marvelous freshness with a lingering, fruity finish','blue','Sangiovese','Italy','2020-11-23 02:57:34','2020-11-23 05:11:39'),(2,'Bordeaux','A wine with fruit scents and flavors of blackberry, dark cherry, vanilla, coffee bean, and licorice. The wines are often concentrated, powerful, firm and tannic','red','Merlot','France','2020-11-23 02:57:34','2020-11-23 02:57:34'),(3,'White Zinfandel','Often abbreviated as White Zin, it is a dry to sweet wine, pink-colored rosé','rosé','Zinfandel','USA','2020-11-23 02:57:34','2020-11-23 02:57:34'),(4,'Port','A fortified sweet red wine, often served as a dessert wine','red','Touriga Nacional','Portugal','2020-11-23 02:57:34','2020-11-23 02:57:34'),(5,'Prosecco','It is a dry white wine (brut) sometimes with a sweet flavor of green apple, honeydew melon, pear, and honeysuckle','white','Glera','Italy','2020-11-23 02:57:34','2020-11-23 02:57:34'),(6,'Classic Chianti','A medium-bodied wine characterized by a marvelous freshness with a lingering, fruity finish','red','Sangiovese','Italy','2020-11-23 03:59:23','2020-11-23 03:59:23'),(7,'Bordeaux','A wine with fruit scents and flavors of blackberry, dark cherry, vanilla, coffee bean, and licorice. The wines are often concentrated, powerful, firm and tannic','red','Merlot','France','2020-11-23 03:59:23','2020-11-23 03:59:23'),(8,'White Zinfandel','Often abbreviated as White Zin, it is a dry to sweet wine, pink-colored rosé','rosé','Zinfandel','USA','2020-11-23 03:59:23','2020-11-23 03:59:23'),(9,'Port','A fortified sweet red wine, often served as a dessert wine','red','Touriga Nacional','Portugal','2020-11-23 03:59:23','2020-11-23 03:59:23'),(10,'Prosecco','It is a dry white wine (brut) sometimes with a sweet flavor of green apple, honeydew melon, pear, and honeysuckle','white','Glera','Italy','2020-11-23 03:59:23','2020-11-23 03:59:23');
/*!40000 ALTER TABLE `wines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01  0:08:10
