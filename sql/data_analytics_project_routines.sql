-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: localhost    Database: data_analytics_project
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Temporary view structure for view `weighted_avg_by_gender`
--

DROP TABLE IF EXISTS `weighted_avg_by_gender`;
/*!50001 DROP VIEW IF EXISTS `weighted_avg_by_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `weighted_avg_by_gender` AS SELECT 
 1 AS `country`,
 1 AS `year`,
 1 AS `gender`,
 1 AS `weighted_avg_hourly_earnings_usd`,
 1 AS `total_employment`,
 1 AS `population`,
 1 AS `hdi`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gender_gap_by_education`
--

DROP TABLE IF EXISTS `gender_gap_by_education`;
/*!50001 DROP VIEW IF EXISTS `gender_gap_by_education`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender_gap_by_education` AS SELECT 
 1 AS `year`,
 1 AS `country`,
 1 AS `continent`,
 1 AS `education_level_clean`,
 1 AS `avg_men`,
 1 AS `avg_women`,
 1 AS `gender_gap_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gender_gap_by_country`
--

DROP TABLE IF EXISTS `gender_gap_by_country`;
/*!50001 DROP VIEW IF EXISTS `gender_gap_by_country`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender_gap_by_country` AS SELECT 
 1 AS `country`,
 1 AS `continent`,
 1 AS `year`,
 1 AS `avg_value_men`,
 1 AS `avg_value_women`,
 1 AS `gender_gap_absolute`,
 1 AS `gender_gap_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gender_gap_time_series`
--

DROP TABLE IF EXISTS `gender_gap_time_series`;
/*!50001 DROP VIEW IF EXISTS `gender_gap_time_series`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender_gap_time_series` AS SELECT 
 1 AS `year`,
 1 AS `indicator_group`,
 1 AS `global_avg_value_men`,
 1 AS `global_avg_value_women`,
 1 AS `global_gender_gap_absolute`,
 1 AS `global_gender_gap_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `labour_gap`
--

DROP TABLE IF EXISTS `labour_gap`;
/*!50001 DROP VIEW IF EXISTS `labour_gap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `labour_gap` AS SELECT 
 1 AS `country`,
 1 AS `year`,
 1 AS `gender`,
 1 AS `total_employment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `labour_force_by_education`
--

DROP TABLE IF EXISTS `labour_force_by_education`;
/*!50001 DROP VIEW IF EXISTS `labour_force_by_education`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `labour_force_by_education` AS SELECT 
 1 AS `year`,
 1 AS `country`,
 1 AS `continent`,
 1 AS `education_level_clean`,
 1 AS `gender`,
 1 AS `total_people`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wages_by_gender`
--

DROP TABLE IF EXISTS `wages_by_gender`;
/*!50001 DROP VIEW IF EXISTS `wages_by_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wages_by_gender` AS SELECT 
 1 AS `country`,
 1 AS `year`,
 1 AS `gender`,
 1 AS `avg_hourly_earnings_usd`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gender_gap_by_age`
--

DROP TABLE IF EXISTS `gender_gap_by_age`;
/*!50001 DROP VIEW IF EXISTS `gender_gap_by_age`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender_gap_by_age` AS SELECT 
 1 AS `year`,
 1 AS `country`,
 1 AS `continent`,
 1 AS `indicator_group`,
 1 AS `age_group_clean`,
 1 AS `avg_value_men`,
 1 AS `avg_value_women`,
 1 AS `gender_gap_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `weighted_avg_by_gender`
--

/*!50001 DROP VIEW IF EXISTS `weighted_avg_by_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `weighted_avg_by_gender` AS with `wages` as (select `m`.`country` AS `country`,`m`.`year` AS `year`,`m`.`gender` AS `gender`,sum(`m`.`value_usd`) AS `total_wages`,max(`p`.`population`) AS `population`,max(`m`.`HDI_2023`) AS `hdi` from ((`merged_data` `m` left join `country_mapping` `cm` on((`m`.`country` = `cm`.`merged_name`))) left join `population` `p` on((((`m`.`country` = `p`.`Country Name`) or (`cm`.`population_name` = `p`.`Country Name`)) and (`m`.`year` = `p`.`year`)))) where ((`m`.`indicator` = 'Average Hourly Earnings') and (`m`.`indicator_group` = 'Wages') and (`m`.`gender` in ('M','F')) and (`m`.`scale` = 'monetary') and (`m`.`value_usd` > 0) and (`m`.`year` between 2013 and 2023)) group by `m`.`country`,`m`.`year`,`m`.`gender`), `employment` as (select `merged_data`.`country` AS `country`,`merged_data`.`year` AS `year`,`merged_data`.`gender` AS `gender`,sum(`merged_data`.`value`) AS `total_employment` from `merged_data` where ((`merged_data`.`indicator` = 'Employment') and (`merged_data`.`indicator_group` = 'Employment') and (`merged_data`.`gender` in ('M','F')) and (`merged_data`.`value` > 0) and (`merged_data`.`year` between 2013 and 2023)) group by `merged_data`.`country`,`merged_data`.`year`,`merged_data`.`gender`) select `w`.`country` AS `country`,`w`.`year` AS `year`,`w`.`gender` AS `gender`,((`w`.`total_wages` * `e`.`total_employment`) / `e`.`total_employment`) AS `weighted_avg_hourly_earnings_usd`,`e`.`total_employment` AS `total_employment`,`w`.`population` AS `population`,`w`.`hdi` AS `hdi` from (`wages` `w` join `employment` `e` on(((`w`.`country` = `e`.`country`) and (`w`.`year` = `e`.`year`) and (`w`.`gender` = `e`.`gender`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_gap_by_education`
--

/*!50001 DROP VIEW IF EXISTS `gender_gap_by_education`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_gap_by_education` AS select `merged_data`.`year` AS `year`,`merged_data`.`country` AS `country`,`merged_data`.`continent` AS `continent`,(case when (`merged_data`.`education_level` in ('Undeclared','Not stated')) then 'Not stated' else `merged_data`.`education_level` end) AS `education_level_clean`,avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value` end)) AS `avg_men`,avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value` end)) AS `avg_women`,round((((avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value` end)) - avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value` end))) / avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value` end))) * 100),2) AS `gender_gap_percent` from `merged_data` where ((`merged_data`.`indicator_group` = 'Labour Force') and (`merged_data`.`education_level` is not null) and (`merged_data`.`education_level` <> '')) group by `merged_data`.`year`,`merged_data`.`country`,`merged_data`.`continent`,`education_level_clean` order by `merged_data`.`year`,`merged_data`.`country`,`education_level_clean` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_gap_by_country`
--

/*!50001 DROP VIEW IF EXISTS `gender_gap_by_country`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_gap_by_country` AS with `ranked_data` as (select `merged_data`.`country` AS `country`,`merged_data`.`continent` AS `continent`,`merged_data`.`year` AS `year`,`merged_data`.`indicator` AS `indicator`,`merged_data`.`value_usd` AS `value_usd`,`merged_data`.`gender` AS `gender`,(case when (`merged_data`.`indicator` = 'Average Hourly Earnings') then 1 when (`merged_data`.`indicator` = 'Wages') then 2 when (`merged_data`.`indicator` = 'Employment') then 3 else 4 end) AS `priority` from `merged_data` where ((`merged_data`.`indicator` in ('Average Hourly Earnings','Wages','Employment')) and (`merged_data`.`value_usd` is not null))), `selected_data` as (select `ranked_data`.`country` AS `country`,`ranked_data`.`continent` AS `continent`,`ranked_data`.`year` AS `year`,`ranked_data`.`gender` AS `gender`,`ranked_data`.`value_usd` AS `value_usd`,`ranked_data`.`indicator` AS `indicator`,row_number() OVER (PARTITION BY `ranked_data`.`country`,`ranked_data`.`year`,`ranked_data`.`gender` ORDER BY `ranked_data`.`priority` )  AS `rn` from `ranked_data`) select `selected_data`.`country` AS `country`,`selected_data`.`continent` AS `continent`,`selected_data`.`year` AS `year`,avg((case when (`selected_data`.`gender` = 'M') then `selected_data`.`value_usd` end)) AS `avg_value_men`,avg((case when (`selected_data`.`gender` = 'F') then `selected_data`.`value_usd` end)) AS `avg_value_women`,(avg((case when (`selected_data`.`gender` = 'M') then `selected_data`.`value_usd` end)) - avg((case when (`selected_data`.`gender` = 'F') then `selected_data`.`value_usd` end))) AS `gender_gap_absolute`,round((((avg((case when (`selected_data`.`gender` = 'M') then `selected_data`.`value_usd` end)) - avg((case when (`selected_data`.`gender` = 'F') then `selected_data`.`value_usd` end))) / avg((case when (`selected_data`.`gender` = 'M') then `selected_data`.`value_usd` end))) * 100),2) AS `gender_gap_percent` from `selected_data` where (`selected_data`.`rn` = 1) group by `selected_data`.`country`,`selected_data`.`continent`,`selected_data`.`year` order by `selected_data`.`country`,`selected_data`.`year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_gap_time_series`
--

/*!50001 DROP VIEW IF EXISTS `gender_gap_time_series`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_gap_time_series` AS select `merged_data`.`year` AS `year`,`merged_data`.`indicator_group` AS `indicator_group`,avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end)) AS `global_avg_value_men`,avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value_usd` end)) AS `global_avg_value_women`,(avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end)) - avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value_usd` end))) AS `global_gender_gap_absolute`,round((((avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end)) - avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value_usd` end))) / avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end))) * 100),2) AS `global_gender_gap_percent` from `merged_data` where ((`merged_data`.`value_usd` is not null) and (`merged_data`.`indicator_group` in ('Wages','Employment'))) group by `merged_data`.`year`,`merged_data`.`indicator_group` order by `merged_data`.`year`,`merged_data`.`indicator_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `labour_gap`
--

/*!50001 DROP VIEW IF EXISTS `labour_gap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `labour_gap` AS select `merged_data`.`country` AS `country`,`merged_data`.`year` AS `year`,`merged_data`.`gender` AS `gender`,sum(`merged_data`.`value`) AS `total_employment` from `merged_data` where ((`merged_data`.`indicator_group` = 'Employment') and (`merged_data`.`gender` in ('M','F'))) group by `merged_data`.`country`,`merged_data`.`year`,`merged_data`.`gender` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `labour_force_by_education`
--

/*!50001 DROP VIEW IF EXISTS `labour_force_by_education`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `labour_force_by_education` AS select `merged_data`.`year` AS `year`,`merged_data`.`country` AS `country`,`merged_data`.`continent` AS `continent`,(case when (`merged_data`.`education_level` in ('Undeclared','Not stated')) then 'Not stated' else `merged_data`.`education_level` end) AS `education_level_clean`,`merged_data`.`gender` AS `gender`,sum(`merged_data`.`value`) AS `total_people` from `merged_data` where ((`merged_data`.`indicator_group` = 'Labour Force') and (`merged_data`.`education_level` is not null) and (`merged_data`.`education_level` <> '')) group by `merged_data`.`year`,`merged_data`.`country`,`merged_data`.`continent`,`education_level_clean`,`merged_data`.`gender` order by `merged_data`.`year`,`merged_data`.`country`,`education_level_clean`,`merged_data`.`gender` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wages_by_gender`
--

/*!50001 DROP VIEW IF EXISTS `wages_by_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wages_by_gender` AS select `merged_data`.`country` AS `country`,`merged_data`.`year` AS `year`,`merged_data`.`gender` AS `gender`,avg(`merged_data`.`value_usd`) AS `avg_hourly_earnings_usd` from `merged_data` where ((`merged_data`.`indicator` = 'Average Hourly Earnings') and (`merged_data`.`unit` = 'local currency') and (`merged_data`.`scale` = 'monetary') and (`merged_data`.`gender` in ('M','F')) and (`merged_data`.`value_usd` > 0)) group by `merged_data`.`country`,`merged_data`.`year`,`merged_data`.`gender` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_gap_by_age`
--

/*!50001 DROP VIEW IF EXISTS `gender_gap_by_age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_gap_by_age` AS select `merged_data`.`year` AS `year`,`merged_data`.`country` AS `country`,`merged_data`.`continent` AS `continent`,`merged_data`.`indicator_group` AS `indicator_group`,(case `merged_data`.`age_group` when 'Child (<15)' then 'Child' when 'Youth (15-24)' then 'Youth' when 'Adults (25-54)' then 'Adults' when 'Senior (55+)' then 'Senior' else 'Not stated' end) AS `age_group_clean`,avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end)) AS `avg_value_men`,avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value_usd` end)) AS `avg_value_women`,round((((avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end)) - avg((case when (`merged_data`.`gender` = 'F') then `merged_data`.`value_usd` end))) / avg((case when (`merged_data`.`gender` = 'M') then `merged_data`.`value_usd` end))) * 100),2) AS `gender_gap_percent` from `merged_data` where ((`merged_data`.`value_usd` is not null) and (`merged_data`.`indicator_group` in ('Wages','Employment')) and (`merged_data`.`age_group` is not null)) group by `merged_data`.`year`,`merged_data`.`country`,`merged_data`.`continent`,`merged_data`.`indicator_group`,`age_group_clean` order by `merged_data`.`year`,`merged_data`.`country`,`merged_data`.`continent`,`merged_data`.`indicator_group`,`age_group_clean` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-19 16:30:08
