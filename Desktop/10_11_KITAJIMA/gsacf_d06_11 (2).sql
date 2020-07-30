-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-30 16:34:49
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_11`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(12) NOT NULL,
  `namae` varchar(128) NOT NULL,
  `jyusho` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tel` varchar(128) NOT NULL,
  `birthday` varchar(128) NOT NULL,
  `age` varchar(3) NOT NULL,
  `bloodtype` varchar(2) NOT NULL,
  `seibetu` varchar(3) NOT NULL,
  `trb1` varchar(128) DEFAULT NULL,
  `care1` varchar(128) DEFAULT NULL,
  `care2` varchar(128) DEFAULT NULL,
  `care3` varchar(128) DEFAULT NULL,
  `exp1` varchar(128) NOT NULL,
  `exp2` varchar(8) NOT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `customer_table`
--

INSERT INTO `customer_table` (`id`, `namae`, `jyusho`, `date`, `created_at`, `updated_at`, `tel`, `birthday`, `age`, `bloodtype`, `seibetu`, `trb1`, `care1`, `care2`, `care3`, `exp1`, `exp2`, `detail`, `image`, `is_admin`, `is_deleted`) VALUES
(28, 'ゆみえん', '福岡市', '2020-07-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '33', 'B', '男', '肌荒れ,にきび,たるみ,アトピー', '洗顔,化粧水', 'パウダー', '洗顔,化粧水', 'ない', 'ない', '', NULL, 0, 0),
(29, 'ゆみえん', '福岡市', '2020-07-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '33', 'B', '男', '肌荒れ,にきび,たるみ,アトピー', '洗顔,化粧水', 'パウダー', '洗顔,化粧水', 'ない', 'ない', '', NULL, 0, 0),
(30, 'ゆみえん', '福岡市', '2020-07-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '33', 'B', '男', '肌荒れ,にきび,たるみ,アトピー', '洗顔,化粧水', 'パウダー', '洗顔,化粧水', 'ない', 'ない', '', NULL, 0, 0),
(31, 'あいうえお', '東京都', '2020-07-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '5.23', '30', 'AB', '女', '肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒れ,たるみ,毛穴の開き,肌荒', '洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,美容液,洗顔,化粧水,', 'ベース,クッションファンデ,パウダー,ベース,クッションファンデ,パウダー,ベース,クッションファンデ,パウダー,ベース,クッションファンデ,パウダー,ベース,クッションファンデ,パウダー,ベース,クッションファンデ,パウダー,ベース,クッションファンデ,', '化粧水', 'あり', 'あり', '', NULL, 0, 0),
(32, 'たか', '徳島県', '2020-07-27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090-7777-7777', '1999.10.10', '28', 'O', '女', NULL, NULL, 'ベース', '乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液,美容液,乳液', 'あり', 'あり', '', NULL, 0, 0),
(33, 'aaa', '徳島県', '2020-07-30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '1987.4.21', '30', 'O', '女', '肌荒れ,しわ,くすみ,しみ,にきび,たるみ,アトピー,メイク崩れ,毛穴の開き,黒ずみ,乾燥', '洗顔,化粧水,乳液,美容液,日焼け止め', 'ベース,リキッドファンデ,固形ファンデ,クッションファンデ,パウダー,パウダー', 'クレンジング,洗顔,化粧水,乳液,美容液,クリーム,パックなど', 'ない', 'ない', '金属のアレルギー', NULL, 0, 0),
(34, 'きたじま', '山口県', '2020-07-31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '5.23', '50', 'AB', '女', '肌荒れ,しわ,くすみ,しみ,にきび,たるみ,アトピー,メイク崩れ,毛穴の開き,黒ずみ,乾燥', '洗顔,乳液,日焼け止め', 'リキッドファンデ,クッションファンデ,パウダー', 'パックなど', 'ある', 'ある', '注文製品あり', NULL, 0, 0),
(35, 'あいうえお', '山口', '2020-07-26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '1987.4.23', '35', 'B', '男', '肌荒れ', NULL, 'ベース', 'クレンジング', 'ない', 'ない', '脱毛中', NULL, 0, 0),
(36, 'ゆみえきたじま', '東京都', '2020-07-30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '1987.4.21', '28', 'AB', '女', '肌荒れ,くすみ,乾燥', '洗顔,乳液', 'ベース', 'クレンジング,洗顔,化粧水,乳液', 'ない', 'ない', '乾燥がひどい', 'upload/202007301416449f0b20f6be86647077d483c70eb140d2.png', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `kqfm_favo_table`
--

CREATE TABLE `kqfm_favo_table` (
  `favo_id` int(12) NOT NULL,
  `favo_news_id` int(12) NOT NULL,
  `favo_username` varchar(24) NOT NULL,
  `favo_rating` int(1) NOT NULL,
  `favo_comment` mediumtext NOT NULL,
  `favo_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `kqfm_news_table`
--

CREATE TABLE `kqfm_news_table` (
  `news_id` int(12) NOT NULL,
  `news_title` varchar(64) NOT NULL,
  `news_category` varchar(24) NOT NULL,
  `news_url` mediumtext NOT NULL,
  `news_username` varchar(24) NOT NULL,
  `news_comment` mediumtext NOT NULL,
  `news_created_at` datetime NOT NULL,
  `news_updated_at` datetime NOT NULL,
  `news_is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `kqfm_news_table`
--

INSERT INTO `kqfm_news_table` (`news_id`, `news_title`, `news_category`, `news_url`, `news_username`, `news_comment`, `news_created_at`, `news_updated_at`, `news_is_deleted`) VALUES
(1, 'bignews', 'B', 'urlurl', 'yumie', 'aaaaa', '2020-07-16 22:44:34', '2020-07-16 22:44:34', 2147483647),
(2, 'bignews', 'B', 'urlurl', 'yumie', 'aaaaa', '2020-07-17 00:20:18', '2020-07-17 00:20:18', 0),
(3, 'THE CLUB 閉店', 'd', 'https://asagei.biz/excerpt/18198', 'hogehoge', '頑張ってほしい!!', '2020-07-17 21:16:29', '2020-07-17 21:16:29', 0),
(4, '今日のランチ', 'e', 'https://asagei.biz/excerpt/18198', 'hogehoge', 'めっちゃおしゃれでおいしい！', '2020-07-17 21:22:03', '2020-07-17 21:22:03', 0),
(5, 'あいうえお', 'a', 'https://*****', 'hogehoge', 'Comments', '2020-07-17 21:32:26', '2020-07-17 21:32:26', 0),
(6, 'Roland', 'b', 'RRRR', 'yumie', '：）', '2020-07-17 21:35:20', '2020-07-17 21:35:20', 0),
(7, '今日のヨガ', 'Array', 'https://www.yoga-univa.jp/aerial', 'yumie', '鳩のポーズよき。', '2020-07-18 00:34:22', '2020-07-18 00:34:22', 0),
(8, 'なんちゃらモンスター', 'Array', 'https://www.yoga-univa.jp/aerial', 'yumie', 'バッタコナーサナ', '2020-07-18 00:35:45', '2020-07-18 00:35:45', 0),
(9, '今日のヨガ', 'Array', 'https://www.yoga-univa.jp/aerial', 'yumie', '鳩のポーズよき。', '2020-07-18 00:39:55', '2020-07-18 00:39:55', 0),
(10, 'THE CLUB 閉店', 'Array', 'https://asagei.biz/excerpt/18198', 'yumie', 'がんばろーらん', '2020-07-18 00:48:38', '2020-07-18 00:48:38', 0),
(11, '今日のランチ', 'Array', 'https://*****', 'yumie', 'パスタ', '2020-07-18 00:49:33', '2020-07-18 00:49:33', 0),
(12, 'あいうえお', 'Array', 'RRRR', 'yumie', 'こんにちわ', '2020-07-18 00:50:22', '2020-07-18 00:50:22', 0),
(13, 'スタートアップ', 'Array', 'RRRR', 'yumie', 'NY', '2020-07-18 01:51:57', '2020-07-18 01:51:57', 0),
(14, 'なんちゃらモンスター', 'Array', 'https://*****', 'yumie', 'かわいい！', '2020-07-18 01:56:09', '2020-07-18 01:56:09', 0),
(15, '今日のヨガ', 'Array', 'https://www.yoga-univa.jp/aerial', 'yumie', 'あああ', '2020-07-18 02:01:06', '2020-07-18 02:01:06', 0),
(16, 'あいうえお', 'science', 'pppp', 'yumie', 'pppp', '2020-07-18 02:25:22', '2020-07-18 02:25:22', 0),
(17, 'qazwsx', 'mydev', 'poiuy', 'yumie', 'けいはつ', '2020-07-18 02:27:23', '2020-07-18 02:27:23', 0),
(18, 'あいうえお', 'art', 'ijnuhb', 'yumie', '@@@@@', '2020-07-18 02:29:23', '2020-07-18 02:29:23', 0),
(19, 'サンドイッチ', 'tech', 'https://asagei.biz/excerpt/18198', 'yumie', '@@@@', '2020-07-18 13:14:38', '2020-07-18 13:14:38', 0),
(20, '今日のヨガ', 'tech', 'https://asagei.biz/excerpt/18198', 'yumie', 'lll', '2020-07-18 13:45:29', '2020-07-18 13:45:29', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `kqfm_user_table`
--

CREATE TABLE `kqfm_user_table` (
  `user_id` int(12) NOT NULL,
  `user_username` varchar(24) NOT NULL,
  `user_password` varchar(12) NOT NULL,
  `user_is_deleted` int(1) NOT NULL,
  `user_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `kqfm_user_table`
--

INSERT INTO `kqfm_user_table` (`user_id`, `user_username`, `user_password`, `user_is_deleted`, `user_created_at`) VALUES
(1, 'yumie', '123456', 0, '2020-07-17 21:03:39');

-- --------------------------------------------------------

--
-- テーブルの構造 `lb_mission_table`
--

CREATE TABLE `lb_mission_table` (
  `id` int(12) NOT NULL,
  `missionText` varchar(128) NOT NULL,
  `rewardText` varchar(128) NOT NULL,
  `rewardImage` varchar(128) NOT NULL,
  `deadLine` datetime NOT NULL,
  `missionFinishCB` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `lb_mission_table`
--

INSERT INTO `lb_mission_table` (`id`, `missionText`, `rewardText`, `rewardImage`, `deadLine`, `missionFinishCB`) VALUES
(1, 'ppp', 'pp', 'スクリーンショット (36).png', '2020-07-24 04:50:05', 0),
(2, 'ppp', 'nnn', 'スクリーンショット (5).png', '2020-07-24 04:56:23', 0),
(3, '料理をできるようになる', 'ディナーを食べに行く', 'スクリーンショット (12).png', '2020-07-24 10:25:53', 1),
(4, 'お風呂掃除をマスター', '肉まん1個', 'スクリーンショット (6).png', '2020-07-24 10:39:55', 1),
(5, '料理をできるようになる', 'ディナーを食べに行く', '', '2020-07-24 14:24:05', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `lb_todo_table`
--

CREATE TABLE `lb_todo_table` (
  `id` int(12) NOT NULL,
  `todoText` varchar(128) NOT NULL,
  `todoName` varchar(128) NOT NULL,
  `todoDate` datetime NOT NULL,
  `todofinishCB` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `lb_todo_table`
--

INSERT INTO `lb_todo_table` (`id`, `todoText`, `todoName`, `todoDate`, `todofinishCB`) VALUES
(1, 'ooo', 'bgbgbg', '2020-07-24 04:54:13', 0),
(2, 'ooo', 'aaaa', '2020-07-24 04:55:50', 0),
(3, '洗剤を買う', 'ゆみえ', '2020-07-24 10:24:04', 0),
(4, '掃除機をかける', 'ゆみえ', '2020-07-24 10:24:54', 1),
(5, '夕食の買い出し', 'まさよ', '2020-07-24 10:26:31', 0),
(6, 'ご飯を炊く', 'ゆみえ', '2020-07-24 10:30:26', 0),
(7, '洗濯をする', 'ゆみえ', '2020-07-24 10:30:28', 1),
(8, 'ご飯をつくる', 'まさよ', '2020-07-24 10:34:26', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(2, 11, 33, '2020-07-11 15:17:57'),
(4, 11, 36, '2020-07-11 16:01:56'),
(5, 11, 37, '2020-07-11 16:01:57'),
(6, 11, 38, '2020-07-11 16:01:58'),
(7, 11, 39, '2020-07-11 16:01:58'),
(8, 11, 41, '2020-07-11 16:01:59'),
(9, 11, 42, '2020-07-11 16:02:00'),
(10, 11, 43, '2020-07-11 16:02:00'),
(14, 11, 29, '2020-07-11 16:32:07'),
(15, 11, 30, '2020-07-11 16:32:08'),
(19, 11, 28, '2020-07-11 16:33:06'),
(21, 11, 27, '2020-07-11 16:33:42'),
(23, 1, 30, '2020-07-11 16:35:58'),
(24, 1, 34, '2020-07-11 16:36:16'),
(25, 11, 45, '2020-07-11 16:37:12'),
(26, 0, 1, '2020-07-16 01:20:21'),
(27, 11, 64, '2020-07-22 22:55:11'),
(28, 0, 35, '2020-07-27 22:13:21'),
(29, 0, 60, '2020-07-27 22:13:23');

-- --------------------------------------------------------

--
-- テーブルの構造 `news_table`
--

CREATE TABLE `news_table` (
  `id` int(12) NOT NULL,
  `title` varchar(128) NOT NULL,
  `category` varchar(128) NOT NULL,
  `url` varchar(256) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `news_table`
--

INSERT INTO `news_table` (`id`, `title`, `category`, `url`, `user_id`, `comment`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'たいとる', 'かてごり', 'ゆーあーるえる', 'きたじまゆみえ', 'こめんとください', '2020-07-15 00:36:50', '2020-07-15 00:36:50', 0),
(2, 'タイトル', 'カテゴリ', 'ユーアールエル', '0', 'コメント', '2020-07-15 00:36:50', '2020-07-15 00:36:50', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `staff_table`
--

CREATE TABLE `staff_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` varchar(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `staff_table`
--

INSERT INTO `staff_table` (`id`, `name`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'YUMIE', 'YUMIE', '0', 0, '2020-07-08 01:15:56', '2020-07-08 01:15:56'),
(2, 'ゆみえ', '1234', '1', 0, '2020-07-09 01:24:49', '2020-07-09 01:24:49'),
(3, 'aaa', 'YUMIE', '0', 0, '2020-07-09 01:40:52', '2020-07-09 01:40:52'),
(4, 'bbb', '123', '0', 0, '2020-07-09 01:41:42', '2020-07-09 01:41:42'),
(5, 'ccc', '9876', '0', 0, '2020-07-09 19:54:59', '2020-07-09 19:54:59'),
(6, 'ggg', '1234', '0', 0, '2020-07-09 20:19:10', '2020-07-09 20:19:10'),
(7, 'iiii', '1234', '0', 0, '2020-07-09 20:51:46', '2020-07-09 20:51:46'),
(8, 'ゆみえ', 'のびた', '1', 0, '2020-07-09 21:28:30', '2020-07-09 21:28:30'),
(9, 'こんにちわ', 'エステティシャン', '0', 0, '2020-07-09 21:33:15', '2020-07-09 21:33:15'),
(10, 'こんにちわ', 'エステ', '0', 0, '2020-07-09 21:34:56', '2020-07-09 21:34:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `image`, `created_at`, `updated_at`) VALUES
(30, 'ヨガの問い合わせ', '2020-06-29', NULL, '2020-06-27 16:44:01', '2020-06-27 16:44:01'),
(32, 'aaa', '2020-06-28', NULL, '2020-06-28 13:35:21', '2020-06-28 13:35:21'),
(33, 'aiueo', '2020-06-28', NULL, '2020-06-28 13:36:24', '2020-06-28 13:36:24'),
(34, '動作チェック', '2020-06-28', NULL, '2020-07-01 19:53:05', '2020-07-01 19:53:05'),
(35, 'aiueo', '2020-07-02', NULL, '2020-07-02 00:27:31', '2020-07-02 00:27:31'),
(36, 'あいうえお', '2020-07-04', NULL, '2020-07-04 14:41:10', '2020-07-04 14:41:10'),
(37, 'aiueo', '2020-07-04', NULL, '2020-07-04 17:21:19', '2020-07-04 17:21:19'),
(38, 'aiueo', '2020-07-07', NULL, '2020-07-07 00:20:44', '2020-07-07 00:20:44'),
(39, 'あいうえお', '2020-07-07', NULL, '2020-07-07 00:23:01', '2020-07-07 00:23:01'),
(40, 'yyy', '2020-07-07', NULL, '2020-07-07 01:22:45', '2020-07-07 01:22:45'),
(41, 'aaa', '2020-07-09', NULL, '2020-07-09 00:05:51', '2020-07-09 00:05:51'),
(42, 'aaa', '2020-07-09', NULL, '2020-07-09 00:06:18', '2020-07-09 00:06:18'),
(43, 'あいうえお', '2020-07-09', NULL, '2020-07-09 00:10:16', '2020-07-09 00:10:16'),
(44, 'aiueo', '2020-07-11', NULL, '2020-07-11 14:59:25', '2020-07-11 14:59:25'),
(45, 'たこやきを買う', '2020-07-11', NULL, '2020-07-11 16:36:57', '2020-07-11 16:36:57'),
(46, 'aaa', '2020-07-25', NULL, '2020-07-18 18:18:50', '2020-07-18 18:18:50'),
(47, 'あいうえお', '2020-07-18', NULL, '2020-07-18 18:22:46', '2020-07-18 18:22:46'),
(48, 'aaa', '2020-07-17', NULL, '2020-07-18 18:23:35', '2020-07-18 18:23:35'),
(49, 'yyy', '2020-07-22', NULL, '2020-07-18 18:27:05', '2020-07-18 18:27:05'),
(50, 'あいうえお', '2020-07-17', NULL, '2020-07-18 18:31:42', '2020-07-18 18:31:42'),
(51, 'あいうえお', '2020-07-25', NULL, '2020-07-18 18:33:42', '2020-07-18 18:33:42'),
(52, 'あいうえお', '2020-07-11', NULL, '2020-07-18 19:47:03', '2020-07-18 19:47:03'),
(53, 'qazws', '2020-07-18', NULL, '2020-07-18 19:51:44', '2020-07-18 19:51:44'),
(54, 'qqqqq', '2020-07-25', 'upload/20200718130747f173b88df2af15b9bdb4413e46417da6.png', '2020-07-18 20:07:47', '2020-07-18 20:07:47'),
(55, 'あいうえお', '2020-07-24', 'upload/20200718130842937260f9940474f3929503b6b4f2c3f7.png', '2020-07-18 20:08:42', '2020-07-18 20:08:42'),
(56, 'aaa', '2020-07-18', 'upload/20200718131129b12007ccbaddc7ee67423adc442bb80b.png', '2020-07-18 20:11:29', '2020-07-18 20:11:29'),
(57, 'あいうえお', '2020-07-18', 'upload/20200718132302250740f3d7d7c0fc49da0f38c13df0b3.png', '2020-07-18 20:23:02', '2020-07-18 20:23:02'),
(58, 'aiueo', '2020-07-24', 'upload/20200718132843e863242d961a77a6f0cd61e8ecc8d70d.png', '2020-07-18 20:28:43', '2020-07-18 20:28:43'),
(59, 'aaa', '2020-07-30', 'upload/202007181329441a3e72d590b7703d1dda99e452eb753c.png', '2020-07-18 20:29:44', '2020-07-18 20:29:44'),
(60, 'rrr', '2020-07-31', 'upload/2020071813312937193de97128d472a75c29539fd54f89.png', '2020-07-18 20:31:29', '2020-07-18 20:31:29'),
(61, 'あいうえお', '2020-07-11', 'upload/20200718133337551d1e7d7931fda521d7c826bdfcc317.png', '2020-07-18 20:33:38', '2020-07-18 20:33:38'),
(62, 'aaa', '2020-07-31', 'upload/2020071813363530391c90ab4e7af4cff79f414ce3c80f.png', '2020-07-18 20:36:35', '2020-07-18 20:36:35'),
(63, 'rrr', '2020-07-26', 'upload/20200718134412ced001f0b2739516cef3e75bcc82b140.png', '2020-07-18 20:44:12', '2020-07-18 20:44:12'),
(64, 'あいうえお', '2020-07-22', 'upload/20200722155310981bf8999f6aa5bce2a05cd1b0332dcf.png', '2020-07-22 22:53:10', '2020-07-22 22:53:10'),
(65, 'あいうえお', '2020-07-24', 'upload/2020072320183993bf065ae2bf49008502718d6221ba4f.png', '2020-07-24 03:18:39', '2020-07-24 03:18:39'),
(66, 'あいうえお', '2020-07-20', 'upload/202007271513160b76458bdfac5c73be083b651bf764e2.png', '2020-07-27 22:13:16', '2020-07-27 22:13:16'),
(67, 'test', '2020-07-29', 'upload/20200730055727ac1e9ddd1355ab5165c14ca04b16984e.png', '2020-07-30 12:57:27', '2020-07-30 12:57:27'),
(68, 'testtest', '2020-07-30', 'upload/202007300602341f8783dec077b99ecfec846992131752.png', '2020-07-30 13:02:34', '2020-07-30 13:02:34'),
(69, 'aiueo', '2020-07-31', 'upload/202007300604540c2b12df25500ac0020dcf54c6435fdd.png', '2020-07-30 13:04:54', '2020-07-30 13:04:54'),
(70, 'aiueo', '2020-07-29', 'upload/2020073006144900830dff3099fb675b0868300035212b.png', '2020-07-30 13:14:49', '2020-07-30 13:14:49'),
(71, 'あいうえお', '2020-07-30', 'upload/20200730062234eae3a9c17e47ed80a877a93ea1b44862.png', '2020-07-30 13:22:34', '2020-07-30 13:22:34'),
(72, 'あいうえお', '2020-07-31', 'upload/20200730062433838ae469beed90922d9f41fe73312bff.png', '2020-07-30 13:24:33', '2020-07-30 13:24:33'),
(73, 'あいうえお', '2020-07-23', 'upload/2020073006360523acdaa167baca1f08e9deaeb0d450b4.png', '2020-07-30 13:36:05', '2020-07-30 13:36:05'),
(74, 'あいうえお', '2020-07-30', NULL, '2020-07-30 13:38:54', '2020-07-30 13:38:54'),
(75, 'ヨガウェアを買う', '2020-07-31', 'upload/2020073016163720aaddb1df386a8856bfe966c1a33942.png', '2020-07-30 23:16:37', '2020-07-30 23:16:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '北島由美恵', 'aiueo', 0, 0, '2020-07-02 21:59:15', '2020-07-02 21:59:15'),
(3, 'KITAJIMA', 'qwert', 0, 0, '2020-07-02 22:07:58', '2020-07-02 22:07:58'),
(4, 'yumie.k', 'poiuy', 0, 0, '2020-07-02 22:08:59', '2020-07-02 22:08:59'),
(5, 'ゆみえん', '988765', 0, 0, '2020-07-02 22:09:47', '2020-07-02 22:09:47'),
(7, 'YU', '987554', 0, 0, '2020-07-02 22:26:27', '2020-07-02 22:26:27'),
(8, 'KITAYU', 'nyuih', 0, 0, '2020-07-02 22:27:39', '2020-07-02 22:27:39'),
(9, 'KONI', 'sdfgh', 0, 0, '2020-07-02 22:28:43', '2020-07-02 22:28:43'),
(10, 'EIMYU', 'skolgf', 0, 0, '2020-07-02 22:29:39', '2020-07-02 22:29:39'),
(11, 'testuser', '123456', 0, 0, '2020-07-04 15:49:19', '2020-07-04 15:49:19'),
(12, 'ppppp', 'y9u7m2i2', 0, 0, '2020-07-04 17:11:57', '2020-07-04 17:11:57'),
(13, 'ゆみえきたじま', '98765', 0, 0, '2020-07-04 17:14:26', '2020-07-04 17:14:26'),
(14, 'こんにちわ', '00000', 0, 0, '2020-07-07 00:14:15', '2020-07-07 00:14:15'),
(15, 'hello', 'world', 0, 0, '2020-07-07 00:49:58', '2020-07-07 00:49:58'),
(16, 'どらえもん', 'のびた', 0, 0, '2020-07-07 23:38:33', '2020-07-07 23:38:33'),
(17, '', '', 0, 0, '2020-07-07 23:59:01', '2020-07-07 23:59:01'),
(18, 'どらえもん', '9999', 0, 0, '2020-07-09 21:39:07', '2020-07-09 21:39:07'),
(19, 'どらえもん', '080808', 0, 0, '2020-07-09 21:39:25', '2020-07-09 21:39:25'),
(20, '北島由美恵', 'YUMIE', 0, 0, '2020-07-09 21:40:04', '2020-07-09 21:40:04'),
(21, '北島由美恵', '1234', 0, 0, '2020-07-11 13:23:46', '2020-07-11 13:23:46');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `kqfm_favo_table`
--
ALTER TABLE `kqfm_favo_table`
  ADD PRIMARY KEY (`favo_id`);

--
-- テーブルのインデックス `kqfm_news_table`
--
ALTER TABLE `kqfm_news_table`
  ADD PRIMARY KEY (`news_id`);

--
-- テーブルのインデックス `kqfm_user_table`
--
ALTER TABLE `kqfm_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- テーブルのインデックス `lb_mission_table`
--
ALTER TABLE `lb_mission_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `lb_todo_table`
--
ALTER TABLE `lb_todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `news_table`
--
ALTER TABLE `news_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `staff_table`
--
ALTER TABLE `staff_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- テーブルのAUTO_INCREMENT `kqfm_favo_table`
--
ALTER TABLE `kqfm_favo_table`
  MODIFY `favo_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `kqfm_news_table`
--
ALTER TABLE `kqfm_news_table`
  MODIFY `news_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルのAUTO_INCREMENT `kqfm_user_table`
--
ALTER TABLE `kqfm_user_table`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `lb_mission_table`
--
ALTER TABLE `lb_mission_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルのAUTO_INCREMENT `lb_todo_table`
--
ALTER TABLE `lb_todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- テーブルのAUTO_INCREMENT `news_table`
--
ALTER TABLE `news_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `staff_table`
--
ALTER TABLE `staff_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
