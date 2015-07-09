-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2015 at 12:06 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ewa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ewa_acos`
--

DROP TABLE IF EXISTS `ewa_acos`;
CREATE TABLE IF NOT EXISTS `ewa_acos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(11) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_affiliations`
--

DROP TABLE IF EXISTS `ewa_affiliations`;
CREATE TABLE IF NOT EXISTS `ewa_affiliations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_affiliations_users`
--

DROP TABLE IF EXISTS `ewa_affiliations_users`;
CREATE TABLE IF NOT EXISTS `ewa_affiliations_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `affiliation_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `affiliation_ix` (`affiliation_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_aros`
--

DROP TABLE IF EXISTS `ewa_aros`;
CREATE TABLE IF NOT EXISTS `ewa_aros` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(11) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_aros_acos`
--

DROP TABLE IF EXISTS `ewa_aros_acos`;
CREATE TABLE IF NOT EXISTS `ewa_aros_acos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) unsigned DEFAULT NULL,
  `aco_id` int(11) unsigned DEFAULT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assertion_types`
--

DROP TABLE IF EXISTS `ewa_assertion_types`;
CREATE TABLE IF NOT EXISTS `ewa_assertion_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assertion_types_assets`
--

DROP TABLE IF EXISTS `ewa_assertion_types_assets`;
CREATE TABLE IF NOT EXISTS `ewa_assertion_types_assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text,
  `confidence` tinyint(1) DEFAULT '0',
  `assertion_type_id` int(11) unsigned DEFAULT '0',
  `asset_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `assertion_type_ix` (`assertion_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assets`
--

DROP TABLE IF EXISTS `ewa_assets`;
CREATE TABLE IF NOT EXISTS `ewa_assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordering` int(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `entry_id` int(11) NOT NULL,
  `asset_type_id` int(6) unsigned DEFAULT NULL,
  `markup` varchar(255) DEFAULT NULL,
  `tk_licence_type_id` int(6) unsigned DEFAULT NULL,
  `cc_licence_type_id` int(6) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `contacted_back` tinyint(2) unsigned DEFAULT '0',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `copyright` tinyint(1) DEFAULT '0',
  `copyright_info` varchar(255) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=249 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assets_birds`
--

DROP TABLE IF EXISTS `ewa_assets_birds`;
CREATE TABLE IF NOT EXISTS `ewa_assets_birds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `bird_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assets_breeds`
--

DROP TABLE IF EXISTS `ewa_assets_breeds`;
CREATE TABLE IF NOT EXISTS `ewa_assets_breeds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned DEFAULT '0',
  `breed_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `breed_ix` (`breed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assets_languages`
--

DROP TABLE IF EXISTS `ewa_assets_languages`;
CREATE TABLE IF NOT EXISTS `ewa_assets_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned DEFAULT '0',
  `language_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `language_ix` (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_assets_tk_label_types`
--

DROP TABLE IF EXISTS `ewa_assets_tk_label_types`;
CREATE TABLE IF NOT EXISTS `ewa_assets_tk_label_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned DEFAULT '0',
  `tk_label_type_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asset_ix` (`asset_id`),
  KEY `tk_label_type_ix` (`tk_label_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_asset_types`
--

DROP TABLE IF EXISTS `ewa_asset_types`;
CREATE TABLE IF NOT EXISTS `ewa_asset_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_birds`
--

DROP TABLE IF EXISTS `ewa_birds`;
CREATE TABLE IF NOT EXISTS `ewa_birds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `conservation` text,
  `other` text,
  `genus_id` int(11) unsigned DEFAULT '0',
  `breed_id` int(11) unsigned DEFAULT '0',
  `common_id` int(11) unsigned DEFAULT '0',
  `biological` tinyint(1) DEFAULT '0',
  `mythological` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=172 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_birds_folk_names`
--

DROP TABLE IF EXISTS `ewa_birds_folk_names`;
CREATE TABLE IF NOT EXISTS `ewa_birds_folk_names` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bird_id` int(11) unsigned DEFAULT '0',
  `folk_name_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_breeds`
--

DROP TABLE IF EXISTS `ewa_breeds`;
CREATE TABLE IF NOT EXISTS `ewa_breeds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `genus_id` int(11) unsigned DEFAULT '0',
  `status_id` int(4) unsigned DEFAULT '0',
  `SpcRecID` int(4) unsigned DEFAULT '0',
  `SpcHBWRecID` int(11) unsigned DEFAULT NULL,
  `SpcIBCRecID` int(11) unsigned DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1017099 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_cc_licence_types`
--

DROP TABLE IF EXISTS `ewa_cc_licence_types`;
CREATE TABLE IF NOT EXISTS `ewa_cc_licence_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `basename` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `embed` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_collections`
--

DROP TABLE IF EXISTS `ewa_collections`;
CREATE TABLE IF NOT EXISTS `ewa_collections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `featured_from` datetime DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_collections_entries`
--

DROP TABLE IF EXISTS `ewa_collections_entries`;
CREATE TABLE IF NOT EXISTS `ewa_collections_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `collection_ix` (`collection_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_comments`
--

DROP TABLE IF EXISTS `ewa_comments`;
CREATE TABLE IF NOT EXISTS `ewa_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_commons`
--

DROP TABLE IF EXISTS `ewa_commons`;
CREATE TABLE IF NOT EXISTS `ewa_commons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `breed_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10426 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_communities`
--

DROP TABLE IF EXISTS `ewa_communities`;
CREATE TABLE IF NOT EXISTS `ewa_communities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `location` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_communities_users`
--

DROP TABLE IF EXISTS `ewa_communities_users`;
CREATE TABLE IF NOT EXISTS `ewa_communities_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `community_ix` (`community_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_contributors`
--

DROP TABLE IF EXISTS `ewa_contributors`;
CREATE TABLE IF NOT EXISTS `ewa_contributors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(6) NOT NULL DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_countries`
--

DROP TABLE IF EXISTS `ewa_countries`;
CREATE TABLE IF NOT EXISTS `ewa_countries` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_countries_entries`
--

DROP TABLE IF EXISTS `ewa_countries_entries`;
CREATE TABLE IF NOT EXISTS `ewa_countries_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `point` varchar(20) NOT NULL DEFAULT '',
  `country_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country_ix` (`country_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=447 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_culturals`
--

DROP TABLE IF EXISTS `ewa_culturals`;
CREATE TABLE IF NOT EXISTS `ewa_culturals` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_culturals_entries`
--

DROP TABLE IF EXISTS `ewa_culturals_entries`;
CREATE TABLE IF NOT EXISTS `ewa_culturals_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cultural_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `culture_ix` (`cultural_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_cultures`
--

DROP TABLE IF EXISTS `ewa_cultures`;
CREATE TABLE IF NOT EXISTS `ewa_cultures` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `region` varchar(50) NOT NULL DEFAULT '',
  `ext_id` varchar(10) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=212 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_cultures_entries`
--

DROP TABLE IF EXISTS `ewa_cultures_entries`;
CREATE TABLE IF NOT EXISTS `ewa_cultures_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `culture_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_ecologies`
--

DROP TABLE IF EXISTS `ewa_ecologies`;
CREATE TABLE IF NOT EXISTS `ewa_ecologies` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_ecologies_entries`
--

DROP TABLE IF EXISTS `ewa_ecologies_entries`;
CREATE TABLE IF NOT EXISTS `ewa_ecologies_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ecology_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ecology_ix` (`ecology_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_education_levels`
--

DROP TABLE IF EXISTS `ewa_education_levels`;
CREATE TABLE IF NOT EXISTS `ewa_education_levels` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries`
--

DROP TABLE IF EXISTS `ewa_entries`;
CREATE TABLE IF NOT EXISTS `ewa_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start` varchar(10) DEFAULT NULL,
  `end` varchar(10) DEFAULT NULL,
  `type_of_entry_id` int(6) unsigned NOT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `latlng` text,
  `submission_reason` text,
  `methodology` text,
  `other_information` text,
  `summary` text,
  `context` text,
  `reason_for_sharing` text,
  `supporting_project` text,
  `project_host` text,
  `DOI` varchar(255) NOT NULL,
  `page_count` int(6) unsigned DEFAULT NULL,
  `right_to_submit` tinyint(1) DEFAULT '0',
  `featured_from` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `curator_assignment_date` datetime DEFAULT NULL,
  `publish` tinyint(1) DEFAULT '0',
  `published_date` datetime DEFAULT NULL,
  `curated_date` datetime DEFAULT NULL,
  `visibility` tinyint(2) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `curator` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=223 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_genres`
--

DROP TABLE IF EXISTS `ewa_entries_genres`;
CREATE TABLE IF NOT EXISTS `ewa_entries_genres` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `genre_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `genre_ix` (`genre_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_groups`
--

DROP TABLE IF EXISTS `ewa_entries_groups`;
CREATE TABLE IF NOT EXISTS `ewa_entries_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_ix` (`group_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_keywords`
--

DROP TABLE IF EXISTS `ewa_entries_keywords`;
CREATE TABLE IF NOT EXISTS `ewa_entries_keywords` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `keyword_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `keyword_ix` (`keyword_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_languages`
--

DROP TABLE IF EXISTS `ewa_entries_languages`;
CREATE TABLE IF NOT EXISTS `ewa_entries_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `language_id` int(11) unsigned DEFAULT '0',
  `ordering` int(4) unsigned DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `language_ix` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_mythicals`
--

DROP TABLE IF EXISTS `ewa_entries_mythicals`;
CREATE TABLE IF NOT EXISTS `ewa_entries_mythicals` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `mythical_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `mythical_ix` (`mythical_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_tags`
--

DROP TABLE IF EXISTS `ewa_entries_tags`;
CREATE TABLE IF NOT EXISTS `ewa_entries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `tag_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `tag_ix` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_themes`
--

DROP TABLE IF EXISTS `ewa_entries_themes`;
CREATE TABLE IF NOT EXISTS `ewa_entries_themes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT '0',
  `theme_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `theme_ix` (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_entries_usefuls`
--

DROP TABLE IF EXISTS `ewa_entries_usefuls`;
CREATE TABLE IF NOT EXISTS `ewa_entries_usefuls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `useful_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `checked` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `useful_ix` (`useful_id`),
  KEY `entry_ix` (`entry_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2878 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_families`
--

DROP TABLE IF EXISTS `ewa_families`;
CREATE TABLE IF NOT EXISTS `ewa_families` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kingdom` varchar(250) NOT NULL DEFAULT '',
  `phylum` varchar(250) NOT NULL,
  `class` varchar(250) NOT NULL,
  `order` varchar(250) NOT NULL,
  `family` varchar(250) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_feedback`
--

DROP TABLE IF EXISTS `ewa_feedback`;
CREATE TABLE IF NOT EXISTS `ewa_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_folk_names`
--

DROP TABLE IF EXISTS `ewa_folk_names`;
CREATE TABLE IF NOT EXISTS `ewa_folk_names` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_genera`
--

DROP TABLE IF EXISTS `ewa_genera`;
CREATE TABLE IF NOT EXISTS `ewa_genera` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `family_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30271 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_genres`
--

DROP TABLE IF EXISTS `ewa_genres`;
CREATE TABLE IF NOT EXISTS `ewa_genres` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_groups`
--

DROP TABLE IF EXISTS `ewa_groups`;
CREATE TABLE IF NOT EXISTS `ewa_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `user_id` int(11) unsigned DEFAULT '0',
  `location` varchar(250) NOT NULL DEFAULT '',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_groups_users`
--

DROP TABLE IF EXISTS `ewa_groups_users`;
CREATE TABLE IF NOT EXISTS `ewa_groups_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_ix` (`group_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_interests`
--

DROP TABLE IF EXISTS `ewa_interests`;
CREATE TABLE IF NOT EXISTS `ewa_interests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_interests_users`
--

DROP TABLE IF EXISTS `ewa_interests_users`;
CREATE TABLE IF NOT EXISTS `ewa_interests_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `interest_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `interest_ix` (`interest_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_keywords`
--

DROP TABLE IF EXISTS `ewa_keywords`;
CREATE TABLE IF NOT EXISTS `ewa_keywords` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_languages`
--

DROP TABLE IF EXISTS `ewa_languages`;
CREATE TABLE IF NOT EXISTS `ewa_languages` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `3letter` char(3) NOT NULL COMMENT 'ISO 639-2 Code',
  `2letter` varchar(2) DEFAULT NULL COMMENT 'ISO 639-1 Code',
  `title` varchar(255) DEFAULT NULL,
  `french_name` varchar(255) DEFAULT NULL,
  `ordering` int(4) unsigned DEFAULT '0',
  `notes` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `3letter` (`3letter`),
  KEY `2letter` (`2letter`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=505 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_languages_users`
--

DROP TABLE IF EXISTS `ewa_languages_users`;
CREATE TABLE IF NOT EXISTS `ewa_languages_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `language_ix` (`language_id`),
  KEY `user_ix` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_licence_types`
--

DROP TABLE IF EXISTS `ewa_licence_types`;
CREATE TABLE IF NOT EXISTS `ewa_licence_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_mythicals`
--

DROP TABLE IF EXISTS `ewa_mythicals`;
CREATE TABLE IF NOT EXISTS `ewa_mythicals` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_permissions`
--

DROP TABLE IF EXISTS `ewa_permissions`;
CREATE TABLE IF NOT EXISTS `ewa_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT '',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_person_types`
--

DROP TABLE IF EXISTS `ewa_person_types`;
CREATE TABLE IF NOT EXISTS `ewa_person_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_roles`
--

DROP TABLE IF EXISTS `ewa_roles`;
CREATE TABLE IF NOT EXISTS `ewa_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_sent_emails`
--

DROP TABLE IF EXISTS `ewa_sent_emails`;
CREATE TABLE IF NOT EXISTS `ewa_sent_emails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject_line` varchar(250) NOT NULL DEFAULT '',
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT '0',
  `content` text,
  `return_email` varchar(100) DEFAULT '',
  `who_sent_it` varchar(250) NOT NULL DEFAULT '',
  `sent_successfully` tinyint(1) DEFAULT '0',
  `contact_back` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_statuses`
--

DROP TABLE IF EXISTS `ewa_statuses`;
CREATE TABLE IF NOT EXISTS `ewa_statuses` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_tags`
--

DROP TABLE IF EXISTS `ewa_tags`;
CREATE TABLE IF NOT EXISTS `ewa_tags` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_themes`
--

DROP TABLE IF EXISTS `ewa_themes`;
CREATE TABLE IF NOT EXISTS `ewa_themes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_tk_label_types`
--

DROP TABLE IF EXISTS `ewa_tk_label_types`;
CREATE TABLE IF NOT EXISTS `ewa_tk_label_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `url` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_tk_licence_types`
--

DROP TABLE IF EXISTS `ewa_tk_licence_types`;
CREATE TABLE IF NOT EXISTS `ewa_tk_licence_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `basename` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `embed` text,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_type_of_entries`
--

DROP TABLE IF EXISTS `ewa_type_of_entries`;
CREATE TABLE IF NOT EXISTS `ewa_type_of_entries` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_usefuls`
--

DROP TABLE IF EXISTS `ewa_usefuls`;
CREATE TABLE IF NOT EXISTS `ewa_usefuls` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(6) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_users`
--

DROP TABLE IF EXISTS `ewa_users`;
CREATE TABLE IF NOT EXISTS `ewa_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lastname` varchar(100) DEFAULT '',
  `firstname` varchar(100) DEFAULT '',
  `username` varchar(15) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `gender` tinyint(2) unsigned DEFAULT NULL,
  `settlement` varchar(100) DEFAULT NULL,
  `country_id` int(6) unsigned DEFAULT NULL,
  `education_level_id` int(6) unsigned DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `biography` text,
  `password` varchar(250) NOT NULL DEFAULT '',
  `tokenhash` varchar(250) NOT NULL DEFAULT '',
  `file` varchar(200) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `basename` varchar(255) DEFAULT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `firstname_ix` (`firstname`),
  KEY `lastname_ix` (`lastname`),
  KEY `email_ix` (`email`),
  KEY `country_ix` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_users_roles`
--

DROP TABLE IF EXISTS `ewa_users_roles`;
CREATE TABLE IF NOT EXISTS `ewa_users_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT '0',
  `role_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_ix` (`user_id`),
  KEY `role_ix` (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_users_roles_entries`
--

DROP TABLE IF EXISTS `ewa_users_roles_entries`;
CREATE TABLE IF NOT EXISTS `ewa_users_roles_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_role_id` int(11) unsigned DEFAULT '0',
  `entry_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_ix` (`entry_id`),
  KEY `users_role_ix` (`users_role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

-- --------------------------------------------------------

--
-- Table structure for table `ewa_users_roles_groups`
--

DROP TABLE IF EXISTS `ewa_users_roles_groups`;
CREATE TABLE IF NOT EXISTS `ewa_users_roles_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_role_id` int(11) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  `group_id` int(11) unsigned DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_ix` (`group_id`),
  KEY `users_role_ix` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
