-- --------------------------------------------------------
-- 호스트:                          stg-yswa-kr-practice-db-master.mariadb.database.azure.com
-- 서버 버전:                        10.3.23-MariaDB - MariaDB Server
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 S09P12B110.admin 구조 내보내기
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `jwt_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.admin:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.audio_block 구조 내보내기
CREATE TABLE IF NOT EXISTS `audio_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `block_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `file_location` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `audio_left` decimal(15,3) DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `audio_top` decimal(15,3) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`block_id`),
  KEY `FKb38s1v0g8eer83hspamr8pv21` (`project_id`),
  KEY `FK3x853jhacpbal5fts3ahcllih` (`user_id`),
  CONSTRAINT `FK3x853jhacpbal5fts3ahcllih` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKb38s1v0g8eer83hspamr8pv21` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.audio_block:~14 rows (대략적) 내보내기
INSERT INTO `audio_block` (`block_id`, `created_at`, `updated_at`, `block_name`, `file_location`, `is_deleted`, `audio_left`, `nickname`, `test_id`, `audio_top`, `project_id`, `user_id`) VALUES
	(1, '2023-08-18 01:28:47', '2023-08-18 05:12:46', 'IU - 내손을 잡아.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/01d6ab25-344e-481c-89c7-a0d05f365be1-IU - 내손을 잡아.mp3', b'0', 496.000, NULL, 1, 187.000, 2, 1),
	(2, '2023-08-18 01:29:55', '2023-08-18 01:29:55', 'IU - 내손을 잡아.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/dfe89d42-e8a4-4b85-bf8f-977fd765fec4-IU - 내손을 잡아.mp3', b'0', 50.000, NULL, 0, 50.000, 2, 1),
	(3, '2023-08-18 01:39:37', '2023-08-18 05:10:37', 'IU - 내손을 잡아.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/00b4a5ea-a3a2-432e-9758-43b03d0e1d08-IU - 내손을 잡아.mp3', b'0', 259.000, NULL, 1, 311.000, 2, 1),
	(4, '2023-08-18 01:53:53', '2023-08-18 05:10:04', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/f739e826-d496-4fc3-a9fe-9cc9df173f75-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 108.000, NULL, 1, 272.000, 2, 1),
	(5, '2023-08-18 01:56:57', '2023-08-18 05:10:36', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/f1649d49-7863-49d8-83f8-d5d44678d8c0-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 397.000, NULL, 0, 381.000, 2, 1),
	(6, '2023-08-18 01:58:04', '2023-08-18 05:10:37', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/0d7efd96-1830-484d-a782-5fbd170e137e-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 436.000, NULL, 0, 100.000, 2, 1),
	(7, '2023-08-18 01:58:35', '2023-08-18 05:10:04', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/76d50fca-2375-4f64-a124-4a17ea441714-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 298.000, NULL, 0, 180.000, 2, 1),
	(8, '2023-08-18 01:59:17', '2023-08-18 05:10:03', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/62f822dc-6ee3-4502-99a8-8f878ae08e9f-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 93.000, NULL, 0, 184.000, 2, 1),
	(9, '2023-08-18 01:59:51', '2023-08-18 05:10:37', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/59c1ea44-913d-4891-a87d-d6ce73b54d2d-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 196.000, NULL, 0, 397.000, 2, 1),
	(10, '2023-08-18 02:06:28', '2023-08-18 05:10:37', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/73202dc6-d083-4215-b6e4-edb2974d5763-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 54.000, NULL, 0, 352.000, 2, 1),
	(11, '2023-08-18 02:07:04', '2023-08-18 05:10:37', 'IU - 내손을 잡아.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/b978ee8d-0cfc-4dc2-8a88-1be5495b20fc-IU - 내손을 잡아.mp3', b'0', 144.000, NULL, 0, 122.000, 2, 1),
	(12, '2023-08-18 02:14:33', '2023-08-18 05:10:37', 'IU - 내손을 잡아.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/596bf55e-e17b-4817-a137-d99e00cbe8d6-IU - 내손을 잡아.mp3', b'0', 301.000, NULL, 0, 33.000, 2, 1),
	(13, '2023-08-18 05:11:49', '2023-08-18 05:12:46', 'IU - 내손을 잡아.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/4cfd5f7d-a011-4d0f-90bd-363d00035c7f-IU - 내손을 잡아.mp3', b'0', 534.000, NULL, 1, 279.000, 2, 1),
	(14, '2023-08-18 05:48:52', '2023-08-18 05:48:57', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/548af28d-afde-42db-aeb0-72f8aee687f3-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 652.000, NULL, 1, 69.000, 2, 1),
	(15, '2023-08-18 05:55:36', '2023-08-18 05:55:36', '온유, 이수현 - 깊은밤을 날아서.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/adb9e976-6235-48d8-a661-5e70d7733c45-온유, 이수현 - 깊은밤을 날아서.mp3', b'0', 100.000, NULL, 1, 100.000, 2, 1);

-- 테이블 S09P12B110.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `board_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `answerd_at` datetime DEFAULT NULL,
  `answer_text` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `content` text COLLATE utf8mb4_bin NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `hit_count` int(11) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `title` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `type` char(1) COLLATE utf8mb4_bin NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_id`),
  KEY `FKdwphedcnnqvtn389uyt5ouef5` (`admin_id`),
  KEY `FKfyf1fchnby6hndhlfaidier1r` (`user_id`),
  CONSTRAINT `FKdwphedcnnqvtn389uyt5ouef5` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `FKfyf1fchnby6hndhlfaidier1r` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.board:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.board_comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `board_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKke01v1gkigv4065kfl3aavje6` (`board_id`),
  KEY `FK2w8mwltvfxebfwmreqg2q0x2a` (`user_id`),
  CONSTRAINT `FK2w8mwltvfxebfwmreqg2q0x2a` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKke01v1gkigv4065kfl3aavje6` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.board_comment:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.ent 구조 내보내기
CREATE TABLE IF NOT EXISTS `ent` (
  `ent_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ent_img` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ent_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `ent_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `is_auto_accepted` bit(1) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`ent_id`),
  KEY `FK141fltdre9bh9pcuqjlfumekt` (`user_id`),
  CONSTRAINT `FK141fltdre9bh9pcuqjlfumekt` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ent:~7 rows (대략적) 내보내기
INSERT INTO `ent` (`ent_id`, `created_at`, `updated_at`, `ent_img`, `ent_info`, `ent_name`, `is_auto_accepted`, `is_deleted`, `user_id`) VALUES
	(1, '2023-08-17 16:04:21', '2023-08-17 16:04:21', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/7249fcd3-d3f7-48ac-9457-b63a80baa9c7-1692288259651-엔터.jpg', '안녕하세요 저희는 상처많은 애벌레입니다. 가입신청은 자유롭게 해주세요 ! 저희는 주로 YB밴드의 노래를 커버합니다.', '상처받은 애벌레 엔터', b'0', b'0', 2),
	(2, '2023-08-17 16:05:32', '2023-08-17 16:05:32', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/a5681554-4e1b-4aa2-aa06-408c6102a841-1692288331060-1.jpg', '안녕하세요 저희는 파워짱 엔터테인먼트입니다. 저희는 주로 뉴진스의 노래를 커버합니다.', '파워짱 엔터테인먼트', b'1', b'0', 2),
	(3, '2023-08-17 16:07:30', '2023-08-17 16:07:30', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/a5fc4e0c-c6d5-4ef7-917a-6d5017623472-1692288449488-걸걸오란씨.png', '안녕하세요 저희는 걸걸오란씨 엔터입니다.', '걸걸오란씨 엔터', b'1', b'0', 2),
	(4, '2023-08-17 16:08:51', '2023-08-17 16:08:51', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/69026735-dd42-4a99-925b-e4f332d09ec3-1692288530415-핑크오일.png', '안녕하세요 p!nkOil 엔터테인먼트입니다. 저희는 퀴어팝을 주로 합니다.', 'p!nkOil 엔터테인먼트', b'1', b'0', 2),
	(5, '2023-08-17 16:13:18', '2023-08-17 16:13:18', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/cb4984c3-746c-4845-8413-df8ba731b3de-1692288654670-왕구.png', '안녕하세요 왕구 엔터테인먼트입니다. 저희는 pbr&b를 주로 합니다. 자유롭게 엔터 지원해주세요 !!!!! 감사합니다 ! 그리고 저희는 반모에요 ㅎㅎ', '왕구 엔터테인먼트', b'1', b'0', 2),
	(6, '2023-08-17 16:15:09', '2023-08-17 16:15:09', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/6046fab0-6b38-495e-948c-75de2f122a49-1692288830957-wxy엔터.png', '헬로 ! 우리는 WXY cool한 엔터야~ Free하게 RAP하자~ COME ON ~', 'WXY Ent', b'1', b'0', 2),
	(7, '2023-08-17 18:37:50', '2023-08-17 18:37:50', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/cf32dd25-bef1-4621-9f96-c49813e42bb3-1692297467208-엔터.jpg', '안녕하세요 저희는  OB 엔터테인먼트 입니다 ! 자유로운 신청 부탁드립니다 ! \n주로 00년대 밴드커버를 주로합니다 ! 감사합니다 !', 'OB 엔터', b'1', b'0', 2);

-- 테이블 S09P12B110.ent_applicant 구조 내보내기
CREATE TABLE IF NOT EXISTS `ent_applicant` (
  `appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `artist` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `audio_name` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `hope` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `is_accepted` bit(1) DEFAULT NULL,
  `is_confirmed` bit(1) NOT NULL,
  `ent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`appl_id`),
  KEY `FK3d0me3k6ustie7k7g96u8nuf8` (`ent_id`),
  KEY `FKf1tw7r6a7dwuq60m7q2r0khby` (`user_id`),
  CONSTRAINT `FK3d0me3k6ustie7k7g96u8nuf8` FOREIGN KEY (`ent_id`) REFERENCES `ent` (`ent_id`),
  CONSTRAINT `FKf1tw7r6a7dwuq60m7q2r0khby` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ent_applicant:~2 rows (대략적) 내보내기
INSERT INTO `ent_applicant` (`appl_id`, `created_at`, `updated_at`, `artist`, `audio_name`, `content`, `hope`, `is_accepted`, `is_confirmed`, `ent_id`, `user_id`) VALUES
	(1, '2023-08-17 16:24:51', '2023-08-17 16:26:23', 'YB, 뉴진스', '', '제 목소리로 세상을 평화와 안식을 주겠습니다.', '박하사탕, 나는나비', b'1', b'1', 1, 4),
	(2, '2023-08-17 19:04:34', '2023-08-17 19:09:46', 'YB', '', '열심히 하겠습니다 !', '나는 나비', b'1', b'1', 7, 4);

-- 테이블 S09P12B110.ent_feed 구조 내보내기
CREATE TABLE IF NOT EXISTS `ent_feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_notice` bit(1) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `ent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`feed_id`),
  KEY `FKhplc40lq9p269b8yca1va5iam` (`ent_id`),
  KEY `FK7pxh8tqneslht17idgpotp8ll` (`user_id`),
  CONSTRAINT `FK7pxh8tqneslht17idgpotp8ll` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKhplc40lq9p269b8yca1va5iam` FOREIGN KEY (`ent_id`) REFERENCES `ent` (`ent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ent_feed:~1 rows (대략적) 내보내기
INSERT INTO `ent_feed` (`feed_id`, `created_at`, `updated_at`, `content`, `file_name`, `is_notice`, `title`, `ent_id`, `user_id`) VALUES
	(1, '2023-08-17 20:32:43', '2023-08-17 20:32:43', '[공고]\nOB 엔터에서 YB밴드의 나는 나비를 같이 하실 엔터원을 모집합니다 ! 자유롭게 신청해주세요 !!!\n모집 분야 : 보컬 3명 코러스 1명\n모집 자격 : 없음 ! 실력보다 재미를 우선시합니다 !\n모집 기간 : 없음 ! 멤버를 모두 구할때까지 우린 끝까지 갑니다 !\n지원 방법 : 공고글의 댓글에 등록해주시거나 엔터 채팅창에 글을 남겨주세요 ! \n\n감사합니다 ! 사랑합니다 ! ', NULL, b'0', 'dummy', 7, 2);

-- 테이블 S09P12B110.ent_like 구조 내보내기
CREATE TABLE IF NOT EXISTS `ent_like` (
  `user_id` int(11) NOT NULL,
  `feed_id` int(11) NOT NULL,
  PRIMARY KEY (`feed_id`,`user_id`),
  KEY `FK4t19q2xmw13gs5j9luyp4sesy` (`user_id`),
  CONSTRAINT `FK4t19q2xmw13gs5j9luyp4sesy` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKasnjksg6u7bgmxbme75o6u98g` FOREIGN KEY (`feed_id`) REFERENCES `ent_feed` (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ent_like:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.ent_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `ent_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `is_leader` bit(1) NOT NULL,
  `ent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `FKjclb1gefxakc0tuf5afua1w71` (`ent_id`),
  KEY `FK5wq8xlrb6xs3t59exuw8d373m` (`user_id`),
  CONSTRAINT `FK5wq8xlrb6xs3t59exuw8d373m` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKjclb1gefxakc0tuf5afua1w71` FOREIGN KEY (`ent_id`) REFERENCES `ent` (`ent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ent_member:~9 rows (대략적) 내보내기
INSERT INTO `ent_member` (`member_id`, `created_at`, `updated_at`, `is_deleted`, `is_leader`, `ent_id`, `user_id`) VALUES
	(1, '2023-08-17 16:04:21', '2023-08-17 16:04:21', b'0', b'1', 1, 2),
	(2, '2023-08-17 16:05:32', '2023-08-17 16:05:32', b'0', b'1', 2, 2),
	(3, '2023-08-17 16:07:30', '2023-08-17 16:07:30', b'0', b'1', 3, 2),
	(4, '2023-08-17 16:08:51', '2023-08-17 16:08:51', b'0', b'1', 4, 2),
	(5, '2023-08-17 16:13:18', '2023-08-17 16:13:18', b'0', b'1', 5, 2),
	(6, '2023-08-17 16:15:09', '2023-08-17 16:15:09', b'0', b'1', 6, 2),
	(7, '2023-08-17 16:26:23', '2023-08-17 16:26:23', b'0', b'0', 1, 4),
	(8, '2023-08-17 18:37:50', '2023-08-17 18:37:50', b'0', b'1', 7, 2),
	(9, '2023-08-17 19:09:46', '2023-08-17 19:09:46', b'0', b'0', 7, 4);

-- 테이블 S09P12B110.ent_tag 구조 내보내기
CREATE TABLE IF NOT EXISTS `ent_tag` (
  `ent_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ent_id` int(11) NOT NULL,
  PRIMARY KEY (`ent_tag_id`),
  KEY `FKqy620kkls43lpq6vpxuyejj8l` (`ent_id`),
  CONSTRAINT `FKqy620kkls43lpq6vpxuyejj8l` FOREIGN KEY (`ent_id`) REFERENCES `ent` (`ent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ent_tag:~17 rows (대략적) 내보내기
INSERT INTO `ent_tag` (`ent_tag_id`, `tag_name`, `ent_id`) VALUES
	(1, 'YB', 1),
	(2, '상처받은애벌레', 1),
	(3, '반모 ', 1),
	(4, '뉴진스', 2),
	(5, '반모', 2),
	(6, '05 ', 2),
	(7, '걸걸오란씨', 3),
	(8, '퀴어팝', 4),
	(9, 'p!nkOil', 4),
	(10, 'pbr&b', 5),
	(11, '반모', 5),
	(12, '90년대생', 5),
	(13, '랩', 6),
	(14, '힙합', 6),
	(15, '자유투쟁', 6),
	(16, '밴드', 7),
	(17, '반모', 7);

-- 테이블 S09P12B110.feed_comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `feed_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `feed_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKif0575cad7o3n7k6q1cmfbkne` (`feed_id`),
  KEY `FKc0e5dirjftdt7d718pc7jqm2` (`user_id`),
  CONSTRAINT `FKc0e5dirjftdt7d718pc7jqm2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKif0575cad7o3n7k6q1cmfbkne` FOREIGN KEY (`feed_id`) REFERENCES `ent_feed` (`feed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.feed_comment:~1 rows (대략적) 내보내기
INSERT INTO `feed_comment` (`comment_id`, `content`, `created_at`, `feed_id`, `user_id`) VALUES
	(1, '저 할래요 !', '2023-08-17 20:32:55', 1, 2);

-- 테이블 S09P12B110.likes 구조 내보내기
CREATE TABLE IF NOT EXISTS `likes` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `FKi2wo4dyk4rok7v4kak8sgkwx0` (`user_id`),
  CONSTRAINT `FK6gupou17or1xfkb1mkasgwqys` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKi2wo4dyk4rok7v4kak8sgkwx0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.likes:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.msg 구조 내보내기
CREATE TABLE IF NOT EXISTS `msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `confirmed_at` datetime DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_confirmed` bit(1) NOT NULL,
  `msg_title` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `receiever_deleted` bit(1) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `sender_deleted` bit(1) NOT NULL,
  `msg_receiever` int(11) NOT NULL,
  `msg_sender` int(11) NOT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `FK6oj0vbf6ux3wre13bwvbcjk6m` (`msg_receiever`),
  KEY `FKmjr3b8n1bkcpt1cupq2vyr81p` (`msg_sender`),
  CONSTRAINT `FK6oj0vbf6ux3wre13bwvbcjk6m` FOREIGN KEY (`msg_receiever`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKmjr3b8n1bkcpt1cupq2vyr81p` FOREIGN KEY (`msg_sender`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.msg:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `notification_type` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `FKcvf4mh5se36inrxn7xlh2brfv` (`user_id`),
  CONSTRAINT `FKcvf4mh5se36inrxn7xlh2brfv` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.notice:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.part 구조 내보내기
CREATE TABLE IF NOT EXISTS `part` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`part_id`),
  KEY `FKgikinuntu6lhwjerqunktet0` (`project_id`),
  KEY `FKonfmm4vk1gkqo9vkm4944m0so` (`user_id`),
  CONSTRAINT `FKgikinuntu6lhwjerqunktet0` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKonfmm4vk1gkqo9vkm4944m0so` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.part:~11 rows (대략적) 내보내기
INSERT INTO `part` (`part_id`, `part_name`, `project_id`, `user_id`) VALUES
	(1, '보컬1', 2, NULL),
	(2, '보컬2', 2, NULL),
	(3, '코러스', 2, NULL),
	(4, '메인보컬', 2, NULL),
	(5, '댄스', 2, NULL),
	(6, '보컬1', 3, NULL),
	(7, '보컬2', 3, NULL),
	(8, '보컬3', 3, NULL),
	(9, '코러스', 3, NULL),
	(10, '보컬4', 3, NULL),
	(11, 'ㅇㄴㅁ', 4, NULL);

-- 테이블 S09P12B110.project 구조 내보내기
CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `audio_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_destroyed` tinyint(1) NOT NULL DEFAULT 0,
  `is_recruited` tinyint(1) NOT NULL DEFAULT 1,
  `is_visible` bit(1) NOT NULL,
  `last_enter_date` date DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `monthly_like_count` int(11) NOT NULL DEFAULT 0,
  `origin_filename` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `project_img` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `project_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `project_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `sing_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `singer_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `FKpkx1mt121t4ha7b1wntd2wgpe` (`ent_id`),
  KEY `FKo06v2e9kuapcugnyhttqa1vpt` (`user_id`),
  CONSTRAINT `FKo06v2e9kuapcugnyhttqa1vpt` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKpkx1mt121t4ha7b1wntd2wgpe` FOREIGN KEY (`ent_id`) REFERENCES `ent` (`ent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.project:~3 rows (대략적) 내보내기
INSERT INTO `project` (`project_id`, `created_at`, `updated_at`, `audio_name`, `completed_at`, `deleted_at`, `hit_count`, `is_completed`, `is_destroyed`, `is_recruited`, `is_visible`, `last_enter_date`, `like_count`, `monthly_like_count`, `origin_filename`, `project_img`, `project_info`, `project_name`, `sing_name`, `singer_name`, `ent_id`, `user_id`) VALUES
	(2, '2023-08-17 16:20:30', '2023-08-17 16:20:50', NULL, NULL, NULL, 0, 0, 0, 1, b'1', NULL, 0, 0, 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/885a770b-6eae-49ed-b1e0-4396b56706e6-상처많은애벌레3.mp3', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/561df1af-7bcf-43df-b04c-2aba707fbb3e-1692289171330-S.png', '안녕하세요 YB 밴드의 나는나비 커버 프로젝트입니다 ! 지금 4명이 구해졌고 마지막 멤버를 구인중입니다 ! 편하게 연락주세요 ~', '슬픈눈 프로젝트[노래합작]', '나는나비', 'YB밴드', 1, 2),
	(3, '2023-08-17 18:38:45', '2023-08-18 05:32:46', NULL, NULL, NULL, 0, 0, 0, 1, b'1', NULL, 0, 0, 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/ebf5a221-2f64-4e80-be90-38fb522116a8-KakaoTalk_20230730_170400499.mp4', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/a6187eb1-fb48-4786-b9d7-c196f41cb574-1692297508133-S.png', 'YB밴드 프로젝트입니다. 자유로운 신청 바랍니다 ! ', 'YB밴드 프로젝트', '나는나비', '윤도현밴드', 7, 2),
	(4, '2023-08-17 19:47:05', '2023-08-17 19:47:05', NULL, NULL, NULL, 0, 0, 0, 1, b'1', NULL, 0, 0, NULL, 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/b57eda60-d6fc-4e85-9282-aaaed84093c7-1692301616563-audio-2941753_1280.jpg', 'ㅁㅇㄴㄹ', 'ㅇㄴㅁㄴ', 'ㅁㅇㄹㄴ', 'ㅁㅇㄴㄹ', 1, 2);

-- 테이블 S09P12B110.project_comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `project_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKhy2fe6ijy5r12lam8wvq4cfn4` (`project_id`),
  KEY `FKr05u4qh59s4fli6q86oa3716c` (`user_id`),
  CONSTRAINT `FKhy2fe6ijy5r12lam8wvq4cfn4` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKr05u4qh59s4fli6q86oa3716c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.project_comment:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.project_invited 구조 내보내기
CREATE TABLE IF NOT EXISTS `project_invited` (
  `project_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `confirm_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `is_accepted` bit(1) DEFAULT NULL,
  `ent_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`project_member_id`),
  KEY `FKdmasv73humku8w3coo4s7xt2j` (`ent_id`),
  KEY `FK1yivjaget9oi88146qqo0sc6w` (`project_id`),
  KEY `FKqd7ld6kx9mb3eeb8t6sldyg78` (`user_id`),
  CONSTRAINT `FK1yivjaget9oi88146qqo0sc6w` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKdmasv73humku8w3coo4s7xt2j` FOREIGN KEY (`ent_id`) REFERENCES `ent` (`ent_id`),
  CONSTRAINT `FKqd7ld6kx9mb3eeb8t6sldyg78` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.project_invited:~2 rows (대략적) 내보내기
INSERT INTO `project_invited` (`project_member_id`, `confirm_date`, `created_at`, `is_accepted`, `ent_id`, `project_id`, `user_id`) VALUES
	(1, NULL, '2023-08-17 16:26:42', NULL, 1, 2, 4),
	(2, NULL, '2023-08-17 19:10:02', NULL, 7, 3, 4);

-- 테이블 S09P12B110.project_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `project_member` (
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `FK6s59w9jalg0dperffu3ri91or` (`user_id`),
  CONSTRAINT `FK103dwxad12nbaxtmnwus4eft2` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FK6s59w9jalg0dperffu3ri91or` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.project_member:~3 rows (대략적) 내보내기
INSERT INTO `project_member` (`created_at`, `is_deleted`, `is_leader`, `user_id`, `project_id`) VALUES
	('2023-08-17 16:20:30', 0, 1, 2, 2),
	('2023-08-17 18:38:45', 0, 1, 2, 3),
	('2023-08-17 19:47:05', 0, 1, 2, 4);

-- 테이블 S09P12B110.project_tag 구조 내보내기
CREATE TABLE IF NOT EXISTS `project_tag` (
  `project_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`project_tag_id`),
  KEY `FKk3ccabfs72wkx2008pn7tij9b` (`project_id`),
  CONSTRAINT `FKk3ccabfs72wkx2008pn7tij9b` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.project_tag:~6 rows (대략적) 내보내기
INSERT INTO `project_tag` (`project_tag_id`, `tag_name`, `project_id`) VALUES
	(1, 'YB밴드', 2),
	(2, '나는나비', 2),
	(3, '노인', 2),
	(4, '90년대생', 2),
	(5, '윤도현', 3),
	(6, '나는나비', 3);

-- 테이블 S09P12B110.ranking 구조 내보내기
CREATE TABLE IF NOT EXISTS `ranking` (
  `rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `like_count` int(11) DEFAULT NULL,
  `month` date NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`rank_id`),
  KEY `FKdssh2ca4u8bjxbeyxy34psw42` (`project_id`),
  CONSTRAINT `FKdssh2ca4u8bjxbeyxy34psw42` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.ranking:~0 rows (대략적) 내보내기

-- 테이블 S09P12B110.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(254) COLLATE utf8mb4_bin NOT NULL,
  `gender` char(1) COLLATE utf8mb4_bin NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `jwt_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `nickname` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_img` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.user:~4 rows (대략적) 내보내기
INSERT INTO `user` (`user_id`, `created_at`, `updated_at`, `deleted_at`, `email`, `gender`, `is_deleted`, `jwt_token`, `nickname`, `password`, `refresh_token`, `user_img`) VALUES
	(1, '2023-08-18 00:56:36', '2023-08-18 05:48:32', NULL, 'zxc', 'm', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ6eGMiLCJhdXRoIjoiUk9MRV9VU0VSIiwiZXhwIjoxNjkyMzkxNzEyfQ.owDVV3no9B4R_qk1hWyVC3Ue6MRldDz68QatqM3T6oY', '월평남', 'zxc', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ6eGMiLCJleHAiOjE2OTIzOTE3MTJ9.q_1yRjTTNnYn1xgIgIclbujfLVIlgV6f3uRIbVnUPn8', NULL),
	(2, '2023-08-17 16:01:35', '2023-08-18 05:32:22', NULL, 'addicteds0ng@naver.com', 'M', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZGRpY3RlZHMwbmdAbmF2ZXIuY29tIiwiYXV0aCI6IlJPTEVfVVNFUiIsImV4cCI6MTY5MjM5MDc0Mn0.z1HUrAwICNhDZITOLQ9Hp7y3j_GKw6CdCV0l1xRTjKk', '도도한 고슴도치', 'song9655', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZGRpY3RlZHMwbmdAbmF2ZXIuY29tIiwiZXhwIjoxNjkyMzkwNzQyfQ.FpdXn2ZbgZJUDC0gwMiC6Ct8T0FOBLlMzu8nMVCycS0', 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/3d7d7466-cd43-4b25-b54b-7b5dc521a634-1692288094336-aaaa.png'),
	(3, '2023-08-17 16:17:27', '2023-08-18 05:31:46', NULL, 'hudhud7@naver.com', 'M', b'0', NULL, '유온역슬픈눈', '1', NULL, 'https://singstreetpjt.s3.ap-northeast-2.amazonaws.com/7b545e57-5433-4e3d-9d2e-bc9f01642492-1692289019649-mokoko.png'),
	(4, '2023-08-17 16:20:29', '2023-08-17 19:03:15', NULL, 'shoot_1@naver.com', 'M', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzaG9vdF8xQG5hdmVyLmNvbSIsImF1dGgiOiJST0xFX1VTRVIiLCJleHAiOjE2OTIzODUzOTV9.feyBwQ2b4m0j-7SyM_t81DgBRS3BokeIRAYtSClt56o', '구암동석가모니', '123', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzaG9vdF8xQG5hdmVyLmNvbSIsImV4cCI6MTY5MjM4NTM5NX0.-4D4qwJBBx3RUjBEBFku8OzQa_2Pwaw1PLoz3VastSE', '');

-- 테이블 S09P12B110.user_roles 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_user_id` int(11) NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  KEY `FKkv46dn3qakjvsk7ra33nd5sns` (`user_user_id`),
  CONSTRAINT `FKkv46dn3qakjvsk7ra33nd5sns` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 테이블 데이터 S09P12B110.user_roles:~4 rows (대략적) 내보내기
INSERT INTO `user_roles` (`user_user_id`, `roles`) VALUES
	(1, 'USER'),
	(2, 'USER'),
	(3, 'USER'),
	(4, 'USER');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
