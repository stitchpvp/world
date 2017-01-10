CREATE DATABASE  IF NOT EXISTS `raw_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `raw_db`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: raw_db
-- ------------------------------------------------------
-- Server version	5.6.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `opcodes`
--

DROP TABLE IF EXISTS `opcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version_range1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_range2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `opcode` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `newindex` (`version_range1`,`name`,`version_range2`)
) ENGINE=InnoDB AUTO_INCREMENT=9298 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcodes`
--

LOCK TABLES `opcodes` WRITE;
/*!40000 ALTER TABLE `opcodes` DISABLE KEYS */;
INSERT INTO `opcodes` VALUES (1,0,0,'OP_LoginRequestMsg',0),(2,0,0,'OP_LoginByNumRequestMsg',1),(3,0,0,'OP_WSLoginRequestMsg',2),(4,0,0,'OP_ESLoginRequestMsg',3),(5,0,0,'OP_LoginReplyMsg',4),(6,0,0,'OP_WSStatusReplyMsg',5),(7,0,0,'OP_WorldStatusChangeMsg',6),(8,0,0,'OP_AllWSDescRequestMsg',7),(9,0,0,'OP_WorldListMsg',8),(10,0,0,'OP_AllCharactersDescRequestMsg',9),(11,0,0,'OP_AllCharactersDescReplyMsg',10),(12,0,0,'OP_CreateCharacterRequestMsg',11),(13,0,0,'OP_CreateCharacterReplyMsg',12),(14,0,0,'OP_WSCreateCharacterRequestMsg',13),(15,0,0,'OP_WSCreateCharacterReplyMsg',14),(16,0,0,'OP_ReskinCharacterRequestMsg',15),(17,0,0,'OP_DeleteCharacterRequestMsg',16),(18,0,0,'OP_DeleteCharacterReplyMsg',17),(19,0,0,'OP_PlayCharacterRequestMsg',18),(20,0,0,'OP_PlayCharacterReplyMsg',19),(21,0,0,'OP_ExpectClientAsCharacterReplyMs',22),(22,0,0,'OP_ServerPlayCharacterRequestMsg',23),(23,0,0,'OP_ServerPlayCharacterReplyMsg',24),(24,0,0,'OP_ESInitMsg',25),(25,0,0,'OP_ESReadyForClientsMsg',26),(26,0,0,'OP_CreateZoneInstanceMsg',27),(27,0,0,'OP_ZoneInstanceCreateReplyMsg',28),(28,0,0,'OP_ZoneInstanceDestroyedMsg',29),(29,0,0,'OP_ExpectClientAsCharacterRequest',30),(30,0,0,'OP_ZoneInfoMsg',31),(31,0,0,'OP_DoneLoadingZoneResourcesMsg',32),(32,0,0,'OP_DoneSendingInitialEntitiesMsg',33),(33,0,0,'OP_DoneLoadingEntityResourcesMsg',34),(34,0,0,'OP_PredictionUpdateMsg',35),(35,0,0,'OP_UpdatePositionMsg',36),(36,0,0,'OP_SetRemoteCmdsMsg',37),(37,0,0,'OP_RemoteCmdMsg',38),(38,0,0,'OP_GameWorldTimeMsg',39),(39,0,0,'OP_MOTDMsg',40),(40,0,0,'OP_ZoneMOTDMsg',41),(41,0,0,'OP_AvatarCreatedMsg',42),(42,0,0,'OP_AvatarDestroyedMsg',43),(43,0,0,'OP_RequestCampMsg',45),(44,0,0,'OP_CampStartedMsg',46),(45,0,0,'OP_CampAbortedMsg',47),(46,0,0,'OP_WhoQueryRequestMsg',48),(47,0,0,'OP_WhoQueryReplyMsg',49),(48,0,0,'OP_MonitorReplyMsg',50),(49,0,0,'OP_MonitorCharacterListMsg',51),(50,0,0,'OP_MonitorCharacterListRequestMsg',52),(51,0,0,'OP_ClientCmdMsg',53),(52,0,0,'OP_DispatchESMsg',54),(53,0,0,'OP_DispatchClientCmdMsg',55),(54,0,0,'OP_UpdateTargetMsg',56),(55,0,0,'OP_UpdateTargetLocMsg',57),(56,0,0,'OP_UpdateCharacterSheetMsg',58),(57,0,0,'OP_UpdateSpellBookMsg',59),(58,0,0,'OP_UpdateInventoryMsg',61),(59,0,0,'OP_UpdateRecipeBookMsg',63),(60,0,0,'OP_RequestRecipeDetailsMsg',64),(61,0,0,'OP_RecipeDetailsMsg',65),(62,0,0,'OP_UpdateSkillBookMsg',66),(63,0,0,'OP_UpdateSkillsMsg',67),(64,0,0,'OP_UpdateOpportunityMsg',68),(65,0,0,'OP_ChangeZoneMsg',70),(66,0,0,'OP_ClientTeleportRequestMsg',71),(67,0,0,'OP_TeleportWithinZoneMsg',72),(68,0,0,'OP_TeleportWithinZoneNoReloadMsg',73),(69,0,0,'OP_MigrateClientToZoneRequestMsg',74),(70,0,0,'OP_MigrateClientToZoneReplyMsg',75),(71,0,0,'OP_ReadyToZoneMsg',76),(72,0,0,'OP_RemoveClientFromGroupMsg',77),(73,0,0,'OP_RemoveGroupFromGroupMsg',78),(74,0,0,'OP_MakeGroupLeaderMsg',79),(75,0,0,'OP_GroupCreatedMsg',80),(76,0,0,'OP_GroupDestroyedMsg',81),(77,0,0,'OP_GroupMemberAddedMsg',82),(78,0,0,'OP_GroupMemberRemovedMsg',83),(79,0,0,'OP_GroupRemovedFromGroupMsg',84),(80,0,0,'OP_GroupLeaderChangedMsg',85),(81,0,0,'OP_GroupResendOOZDataMsg',86),(82,0,0,'OP_GroupSettingsChangedMsg',87),(83,0,0,'OP_OutOfZoneMemberDataMsg',88),(84,0,0,'OP_SendLatestRequestMsg',89),(85,0,0,'OP_ClearDataMsg',90),(86,0,0,'OP_SetSocialMsg',91),(87,0,0,'OP_ESStatusMsg',92),(88,0,0,'OP_ESZoneInstanceStatusMsg',93),(89,0,0,'OP_ZonesStatusRequestMsg',94),(90,0,0,'OP_ZonesStatusMsg',95),(91,0,0,'OP_ESWeatherRequestMsg',96),(92,0,0,'OP_ESWeatherRequestEndMsg',97),(93,0,0,'OP_DialogSelectMsg',98),(94,0,0,'OP_DialogCloseMsg',99),(95,0,0,'OP_RemoveSpellEffectMsg',100),(96,0,0,'OP_RemoveConcentrationMsg',101),(97,0,0,'OP_QuestJournalOpenMsg',104),(98,0,0,'OP_QuestJournalInspectMsg',105),(99,0,0,'OP_QuestJournalSetVisibleMsg',106),(100,0,0,'OP_QuestJournalWaypointMsg',107),(101,0,0,'OP_CreateGuildRequestMsg',108),(102,0,0,'OP_CreateGuildReplyMsg',109),(103,0,0,'OP_GuildsayMsg',110),(104,0,0,'OP_GuildUpdateMsg',111),(105,0,0,'OP_DeleteGuildMsg',112),(106,0,0,'OP_FellowshipExpMsg',113),(107,0,0,'OP_ConsignmentCloseStoreMsg',114),(108,0,0,'OP_ConsignItemRequestMsg',115),(109,0,0,'OP_ConsignItemResponseMsg',116),(110,0,0,'OP_PurchaseConsignmentRequestMsg',117),(111,0,0,'OP_HouseDeletedRemotelyMsg',118),(112,0,0,'OP_UpdateHouseDataMsg',119),(113,0,0,'OP_UpdateHouseAccessDataMsg',120),(114,0,0,'OP_PlayerHouseBaseScreenMsg',121),(115,0,0,'OP_PlayerHousePurchaseScreenMsg',122),(116,0,0,'OP_PlayerHouseAccessUpdateMsg',123),(117,0,0,'OP_PlayerHouseDisplayStatusMsg',124),(118,0,0,'OP_PlayerHouseCloseUIMsg',125),(119,0,0,'OP_BuyPlayerHouseMsg',126),(120,0,0,'OP_BuyPlayerHouseTintMsg',127),(121,0,0,'OP_CollectAllHouseItemsMsg',128),(122,0,0,'OP_RelinquishHouseMsg',129),(123,0,0,'OP_EnterHouseMsg',130),(124,0,0,'OP_ExitHouseMsg',131),(125,0,0,'OP_HouseDefaultAccessSetMsg',132),(126,0,0,'OP_HouseAccessSetMsg',133),(127,0,0,'OP_HouseAccessRemoveMsg',134),(128,0,0,'OP_PayHouseUpkeepMsg',135),(129,0,0,'OP_MoveableObjectPlacementCriteri',136),(130,0,0,'OP_EnterMoveObjectModeMsg',137),(131,0,0,'OP_PositionMoveableObject',138),(132,0,0,'OP_CancelMoveObjectModeMsg',139),(133,0,0,'OP_ShaderCustomizationMsg',140),(134,0,0,'OP_ReplaceableSubMeshesMsg',141),(135,0,0,'OP_HouseCustomizationScreenMsg',142),(136,0,0,'OP_CustomizationPurchaseRequestMs',143),(137,0,0,'OP_CustomizationSetRequestMsg',144),(138,0,0,'OP_CustomizationReplyMsg',145),(139,0,0,'OP_TintWidgetsMsg',146),(140,0,0,'OP_ExamineConsignmentRequestMsg',147),(141,0,0,'OP_ExamineConsignmentResponseMsg',148),(142,0,0,'OP_UISettingsResponseMsg',149),(143,0,0,'OP_UIResetMsg',150),(144,0,0,'OP_KeymapLoadMsg',151),(145,0,0,'OP_KeymapNoneMsg',152),(146,0,0,'OP_KeymapDataMsg',153),(147,0,0,'OP_KeymapSaveMsg',154),(148,0,0,'OP_DispatchSpellCmdMsg',155),(149,0,0,'OP_EntityVerbsRequestMsg',157),(150,0,0,'OP_EntityVerbsReplyMsg',158),(151,0,0,'OP_EntityVerbsVerbMsg',159),(152,0,0,'OP_ChatRelationshipUpdateMsg',161),(153,0,0,'OP_LootItemsRequestMsg',162),(154,0,0,'OP_StoppedLootingMsg',163),(155,0,0,'OP_SitMsg',164),(156,0,0,'OP_StandMsg',165),(157,0,0,'OP_SatMsg',166),(158,0,0,'OP_StoodMsg',167),(159,0,0,'OP_ClearForTakeOffMsg',168),(160,0,0,'OP_ReadyForTakeOffMsg',169),(161,0,0,'OP_ShowIllusionsMsg',170),(162,0,0,'OP_HideIllusionsMsg',171),(163,0,0,'OP_ExamineItemRequestMsg',172),(164,0,0,'OP_ReadBookPageMsg',173),(165,0,0,'OP_DefaultGroupOptionsRequestMsg',174),(166,0,0,'OP_DefaultGroupOptionsMsg',175),(167,0,0,'OP_GroupOptionsMsg',176),(168,0,0,'OP_DisplayGroupOptionsScreenMsg',177),(169,0,0,'OP_DisplayInnVisitScreenMsg',178),(170,0,0,'OP_DumpSchedulerMsg',179),(171,0,0,'OP_LSRequestPlayerDescMsg',180),(172,0,0,'OP_LSCheckAcctLockMsg',181),(173,0,0,'OP_WSAcctLockStatusMsg',182),(174,0,0,'OP_RequestHelpRepathMsg',183),(175,0,0,'OP_RequestTargetLocMsg',184),(176,0,0,'OP_UpdateMotdMsg',185),(177,0,0,'OP_PerformPlayerKnockbackMsg',186),(178,0,0,'OP_PerformCameraShakeMsg',187),(179,0,0,'OP_PopulateSkillMapsMsg',188),(180,0,0,'OP_CancelledFeignMsg',190),(181,0,0,'OP_SignalMsg',191),(182,0,0,'OP_ShowCreateFromRecipeUIMsg',192),(183,0,0,'OP_CancelCreateFromRecipeMsg',193),(184,0,0,'OP_BeginItemCreationMsg',194),(185,0,0,'OP_StopItemCreationMsg',195),(186,0,0,'OP_ShowItemCreationProcessUIMsg',196),(187,0,0,'OP_UpdateItemCreationProcessUIMsg',197),(188,0,0,'OP_DisplayTSEventReactionMsg',198),(189,0,0,'OP_ShowRecipeBookMsg',199),(190,0,0,'OP_KnowledgebaseRequestMsg',200),(191,0,0,'OP_KnowledgebaseResponseMsg',201),(192,0,0,'OP_CSTicketHeaderRequestMsg',202),(193,0,0,'OP_CSTicketInfoMsg',203),(194,0,0,'OP_CSTicketCommentRequestMsg',204),(195,0,0,'OP_CSTicketCommentResponseMsg',205),(196,0,0,'OP_CSTicketCreateMsg',206),(197,0,0,'OP_CSTicketAddCommentMsg',207),(198,0,0,'OP_CSTicketDeleteMsg',208),(199,0,0,'OP_CSTicketChangeNotificationMsg',209),(200,0,0,'OP_WorldDataUpdateMsg',210),(201,0,0,'OP_KnownLanguagesMsg',211),(202,0,0,'OP_LsRequestClientCrashLogMsg',212),(203,0,0,'OP_LsClientBaselogReplyMsg',213),(204,0,0,'OP_LsClientCrashlogReplyMsg',214),(205,0,0,'OP_LsClientAlertlogReplyMsg',215),(206,0,0,'OP_LsClientVerifylogReplyMsg',216),(207,0,0,'OP_ClientTeleportToLocationMsg',217),(208,0,0,'OP_UpdateClientPredFlagsMsg',218),(209,0,0,'OP_ChangeServerControlFlagMsg',219),(210,0,0,'OP_CSToolsRequestMsg',220),(211,0,0,'OP_CSToolsResponseMsg',221),(212,0,0,'OP_AddSocialStructureStandingMsg',222),(213,0,0,'OP_CreateBoatTransportsMsg',223),(214,0,0,'OP_PositionBoatTransportMsg',224),(215,0,0,'OP_MigrateBoatTransportMsg',225),(216,0,0,'OP_MigrateBoatTransportReplyMsg',226),(217,0,0,'OP_DisplayDebugNLLPointsMsg',227),(218,0,0,'OP_ExamineInfoRequestMsg',228),(219,0,0,'OP_QuickbarInitMsg',229),(220,0,0,'OP_QuickbarUpdateMsg',230),(221,0,0,'OP_MacroInitMsg',231),(222,0,0,'OP_MacroUpdateMsg',232),(223,0,0,'OP_QuestionnaireMsg',233),(224,0,0,'OP_LevelChangedMsg',234),(225,0,0,'OP_SpellGainedMsg',235),(226,0,0,'OP_EncounterBrokenMsg',236),(227,0,0,'OP_OnscreenMsgMsg',237),(228,0,0,'OP_DisplayWarningMsg',238),(229,0,0,'OP_ModifyGuildMsg',239),(230,0,0,'OP_GuildEventMsg',240),(231,0,0,'OP_GuildEventAddMsg',241),(232,0,0,'OP_GuildEventActionMsg',242),(233,0,0,'OP_GuildEventListMsg',243),(234,0,0,'OP_RequestGuildEventDetailsMsg',244),(235,0,0,'OP_GuildEventDetailsMsg',245),(236,0,0,'OP_RequestGuildInfoMsg',246),(237,0,0,'OP_GuildBankActionMsg',247),(238,0,0,'OP_GuildBankActionResponseMsg',248),(239,0,0,'OP_GuildBankItemDetailsRequestMsg',249),(240,0,0,'OP_GuildBankItemDetailsResponseMs',250),(241,0,0,'OP_GuildBankUpdateMsg',251),(242,0,0,'OP_GuildBankEventListMsg',252),(243,0,0,'OP_RequestGuildBankEventDetailsMs',253),(244,0,0,'OP_RewardPackMsg',254),(245,0,0,'OP_RenameGuildMsg',255),(246,0,0,'OP_ZoneToFriendRequestMsg',257),(247,0,0,'OP_ZoneToFriendReplyMsg',258),(248,0,0,'OP_ChatCreateChannelMsg',259),(249,0,0,'OP_ChatJoinChannelMsg',260),(250,0,0,'OP_ChatWhoChannelMsg',261),(251,0,0,'OP_ChatLeaveChannelMsg',262),(252,0,0,'OP_ChatTellChannelMsg',263),(253,0,0,'OP_ChatTellUserMsg',264),(254,0,0,'OP_ChatToggleFriendMsg',265),(255,0,0,'OP_ChatToggleIgnoreMsg',266),(256,0,0,'OP_ChatSendFriendsMsg',267),(257,0,0,'OP_ChatSendIgnoresMsg',268),(258,0,0,'OP_QuestReward',294),(259,0,0,'OP_ChatFiltersMsg',309),(260,0,0,'OP_MailGetHeadersMsg',310),(261,0,0,'OP_MailGetMessageMsg',311),(262,0,0,'OP_MailSendMessageMsg',312),(263,0,0,'OP_MailDeleteMessageMsg',313),(264,0,0,'OP_MailGetHeadersReplyMsg',314),(265,0,0,'OP_MailGetMessageReplyMsg',315),(266,0,0,'OP_MailSendMessageReplyMsg',316),(267,0,0,'OP_MailCommitSendMessageMsg',317),(268,0,0,'OP_MailSendSystemMessageMsg',318),(269,0,0,'OP_MailRemoveAttachFromMailMsg',319),(270,0,0,'OP_WaypointRequestMsg',321),(271,0,0,'OP_WaypointReplyMsg',322),(272,0,0,'OP_WaypointSelectMsg',323),(273,0,0,'OP_WaypointUpdateMsg',324),(274,0,0,'OP_CharNameChangedMsg',325),(275,0,0,'OP_ShowZoneTeleporterDestinations',326),(276,0,0,'OP_SelectZoneTeleporterDestinatio',327),(277,0,0,'OP_ReloadLocalizedTxtMsg',328),(278,0,0,'OP_RequestGuildMembershipMsg',329),(279,0,0,'OP_GuildMembershipResponseMsg',330),(280,0,0,'OP_LeaveGuildNotifyMsg',331),(281,0,0,'OP_JoinGuildNotifyMsg',332),(282,0,0,'OP_AvatarUpdateMsg',334),(283,0,0,'OP_BioUpdateMsg',335),(284,0,0,'OP_InspectPlayerMsg',336),(285,0,0,'OP_WSServerLockMsg',337),(286,0,0,'OP_LSServerLockMsg',338),(287,0,0,'OP_WSServerHideMsg',339),(288,0,0,'OP_CsCategoryRequestMsg',340),(289,0,0,'OP_CsCategoryResponseMsg',341),(290,0,0,'OP_KnowledgeWindowSlotMappingMsg',342),(291,0,0,'OP_LFGUpdateMsg',343),(292,0,0,'OP_AFKUpdateMsg',344),(293,0,0,'OP_AnonUpdateMsg',345),(294,0,0,'OP_UpdateActivePublicZonesMsg',346),(295,0,0,'OP_UnknownNpcMsg',347),(296,0,0,'OP_PromoFlagsDetailsMsg',348),(297,0,0,'OP_ConsignViewCreateMsg',349),(298,0,0,'OP_ConsignViewGetPageMsg',350),(299,0,0,'OP_ConsignViewReleaseMsg',351),(300,0,0,'OP_ConsignRemoveItemsMsg',352),(301,0,0,'OP_UpdateDebugRadiiMsg',353),(302,0,0,'OP_SnoopMsg',354),(303,0,0,'OP_ReportMsg',355),(304,0,0,'OP_UpdateRaidMsg',356),(305,0,0,'OP_ConsignViewSortMsg',357),(306,0,0,'OP_TitleUpdateMsg',358),(307,0,0,'OP_ClientFellMsg',359),(308,0,0,'OP_ClientInDeathRegionMsg',360),(309,0,0,'OP_CampClientMsg',361),(310,0,0,'OP_CSToolAccessResponseMsg',362),(311,0,0,'OP_TrackingUpdateMsg',363),(312,0,0,'OP_BeginTrackingMsg',364),(313,0,0,'OP_StopTrackingMsg',365),(314,0,0,'OP_GetAvatarAccessRequestForCSToo',366),(315,0,0,'OP_AdvancementRequestMsg',367),(316,0,0,'OP_UpdateAvgFrameTimeMsg',368),(317,0,0,'OP_MapFogDataInitMsg',369),(318,0,0,'OP_MapFogDataUpdateMsg',370),(319,0,0,'OP_CloseGroupInviteWindowMsg',371),(320,0,0,'OP_UpdateGroupMemberDataMsg',372),(321,0,0,'OP_WorldPingMsg',373),(322,0,0,'OP_MoveLogUpdateMsg',374),(323,0,0,'OP_OfferQuestMsg',375),(324,0,0,'OP_WorldShutdownUpdateMsg',376),(325,0,0,'OP_DisplayMailScreenMsg',377),(326,0,0,'OP_ClientIdleBeginMsg',378),(327,0,0,'OP_ClientIdleEndMsg',379),(328,0,0,'OP_PurchaseConsignmentLoreCheckRe',380),(329,0,0,'OP_NotifyApprenticeStoppedMentori',381),(330,0,0,'OP_CorruptedClientMsg',382),(331,0,0,'OP_WorldDataChangeMsg',383),(332,0,0,'OP_MailEventNotificationMsg',384),(333,0,0,'OP_RestartZoneMsg',385),(334,0,0,'OP_FlightPathsMsg',386),(335,0,0,'OP_CharacterLinkdeadMsg',387),(336,0,0,'OP_CharTransferStartRequestMsg',388),(337,0,0,'OP_CharTransferStartReplyMsg',389),(338,0,0,'OP_CharTransferRequestMsg',390),(339,0,0,'OP_CharTransferReplyMsg',391),(340,0,0,'OP_CharTransferRollbackRequestMsg',392),(341,0,0,'OP_CharTransferCommitRequestMsg',393),(342,0,0,'OP_CharTransferRollbackReplyMsg',394),(343,0,0,'OP_CharTransferCommitReplyMsg',395),(344,0,0,'OP_GetCharacterSerializedRequestM',396),(345,0,0,'OP_GetCharacterSerializedReplyMsg',397),(346,0,0,'OP_CreateCharFromCBBRequestMsg',398),(347,0,0,'OP_CreateCharFromCBBReplyMsg',399),(348,0,0,'OP_HousingDataChangedMsg',400),(349,0,0,'OP_HousingRestoreMsg',401),(350,0,0,'OP_AuctionItem',402),(351,0,0,'OP_AuctionItemReply',403),(352,0,0,'OP_AuctionCoin',404),(353,0,0,'OP_AuctionCoinReply',405),(354,0,0,'OP_AuctionCharacter',406),(355,0,0,'OP_AuctionCharacterReply',407),(356,0,0,'OP_AuctionCommitMsg',408),(357,0,0,'OP_AuctionAbortMsg',409),(358,0,0,'OP_CharTransferValidateRequestMsg',410),(359,0,0,'OP_CharTransferValidateReplyMsg',411),(360,0,0,'OP_RaceRestrictionMsg',412),(361,0,0,'OP_SetInstanceDisplayNameMsg',413),(362,0,0,'OP_GetAuctionAssetIDMsg',414),(363,0,0,'OP_GetAuctionAssetIDReplyMsg',415),(364,0,0,'OP_ResendWorldChannelsMsg',416),(365,0,0,'OP_DisplayExchangeScreenMsg',417),(366,0,0,'OP_ArenaGameTypesMsg',418),(367,0,0,'OP_AuditAuctionEventMsg',420),(368,0,0,'OP_InviteRequestMsg',422),(369,0,0,'OP_InviteResponseMsg',423),(370,0,0,'OP_InviteTargetResponseMsg',424),(371,0,0,'OP_InspectPlayerRequestMsg',425),(372,0,0,'OP_DispatchMsg',426),(373,0,0,'OP_DisplayEventMsg',427),(374,0,0,'OP_PrePossessionMsg',428),(375,0,0,'OP_PostPossessionMsg',429),(376,0,0,'OP_AdventureList',454),(377,0,0,'OP_CancelSpellCast',455),(378,0,0,'OP_UpdateTitleCmd',461),(379,0,0,'OP_AttackAllowed',467),(380,0,0,'OP_AttackNotAllowed',468),(381,0,0,'OP_DressingRoom',474),(382,0,0,'OP_SkillInfoRequest',478),(383,0,0,'OP_SkillInfoResponse',479),(384,0,0,'OP_EqHearChatCmd',480),(385,0,0,'OP_EqDisplayTextCmd',481),(386,0,0,'OP_EqCreateGhostCmd',482),(387,0,0,'OP_EqCreateWidgetCmd',483),(388,0,0,'OP_EqCreateSignWidgetCmd',484),(389,0,0,'OP_EqDestroyGhostCmd',485),(390,0,0,'OP_EqUpdateGhostCmd',486),(391,0,0,'OP_EqSetControlGhostCmd',487),(392,0,0,'OP_EqSetPOVGhostCmd',488),(393,0,0,'OP_EqHearCombatCmd',489),(394,0,0,'OP_EqHearSpellCastCmd',490),(395,0,0,'OP_EqHearSpellInterruptCmd',493),(396,0,0,'OP_EqHearSpellFizzleCmd',494),(397,0,0,'OP_EqHearConsiderCmd',495),(398,0,0,'OP_EqUpdateSubClassesCmd',496),(399,0,0,'OP_EqCreateListBoxCmd',497),(400,0,0,'OP_EqSetDebugPathPointsCmd',498),(401,0,0,'OP_EqCannedEmoteCmd',500),(402,0,0,'OP_EqStateCmd',501),(403,0,0,'OP_EqPlaySoundCmd',502),(404,0,0,'OP_EqPlaySound3DCmd',503),(405,0,0,'OP_EqPlayVoiceCmd',504),(406,0,0,'OP_EqHearDrowningCmd',505),(407,0,0,'OP_EqHearDeathCmd',506),(408,0,0,'OP_EqGroupMemberRemovedCmd',507),(409,0,0,'OP_EqHearChainEffectCmd',508),(410,0,0,'OP_EqReceiveOfferCmd',509),(411,0,0,'OP_EqInspectPCResultsCmd',510),(412,0,0,'OP_EqDrawablePathGraphCmd',511),(413,0,0,'OP_EqDialogOpenCmd',512),(414,0,0,'OP_EqDialogCloseCmd',513),(415,0,0,'OP_EqFactionUpdateCmd',514),(416,0,0,'OP_EqCollectionUpdateCmd',515),(417,0,0,'OP_EqCollectionFilterCmd',516),(418,0,0,'OP_EqCollectionItemCmd',517),(419,0,0,'OP_EqQuestJournalUpdateCmd',518),(420,0,0,'OP_EqQuestJournalReplyCmd',520),(421,0,0,'OP_EqQuestGroupCmd',521),(422,0,0,'OP_EqUpdateMerchantCmd',522),(423,0,0,'OP_EqUpdateStoreCmd',523),(424,0,0,'OP_EqUpdatePlayerTradeCmd',524),(425,0,0,'OP_EqHelpPathCmd',525),(426,0,0,'OP_EqHelpPathClearCmd',526),(427,0,0,'OP_EqUpdateBankCmd',527),(428,0,0,'OP_EqExamineInfoCmd',528),(429,0,0,'OP_EqCloseWindowCmd',529),(430,0,0,'OP_EqUpdateLootCmd',530),(431,0,0,'OP_EqJunctionListCmd',531),(432,0,0,'OP_EqShowDeathWindowCmd',532),(433,0,0,'OP_EqDisplaySpellFailCmd',533),(434,0,0,'OP_EqSpellCastStartCmd',534),(435,0,0,'OP_EqSpellCastEndCmd',535),(436,0,0,'OP_EqResurrectedCmd',536),(437,0,0,'OP_EqChoiceWinCmd',537),(438,0,0,'OP_EqSetDefaultVerbCmd',538),(439,0,0,'OP_EqInstructionWindowCmd',540),(440,0,0,'OP_EqInstructionWindowCloseCmd',541),(441,0,0,'OP_EqInstructionWindowGoalCmd',542),(442,0,0,'OP_EqInstructionWindowTaskCmd',543),(443,0,0,'OP_EqEnableGameEventCmd',544),(444,0,0,'OP_EqShowWindowCmd',545),(445,0,0,'OP_EqEnableWindowCmd',546),(446,0,0,'OP_EqFlashWindowCmd',547),(447,0,0,'OP_EqHearPlayFlavorCmd',548),(448,0,0,'OP_EqUpdateSignWidgetCmd',550),(449,0,0,'OP_EqDebugPVDCmd',551),(450,0,0,'OP_EqShowBookCmd',552),(451,0,0,'OP_EqQuestionnaireCmd',553),(452,0,0,'OP_EqGetProbsCmd',554),(453,0,0,'OP_EqHearHealCmd',555),(454,0,0,'OP_EqChatChannelUpdateCmd',556),(455,0,0,'OP_EqWhoChannelQueryReplyCmd',557),(456,0,0,'OP_EqAvailWorldChannelsCmd',558),(457,0,0,'OP_EqUpdateTargetCmd',559),(458,0,0,'OP_EqConsignmentItemsCmd',561),(459,0,0,'OP_EqStartBrokerCmd',563),(460,0,0,'OP_EqMapExplorationCmd',564),(461,0,0,'OP_EqStoreLogCmd',565),(462,0,0,'OP_EqSpellMoveToRangeAndRetryCmd',566),(463,0,0,'OP_EqUpdatePlayerMailCmd',567),(464,0,0,'OP_EqArenaResultsCmd',568),(465,0,0,'OP_EqGuildBankEventActionCmd',569),(466,0,0,'OP_EqGuildBankExamineInfoCmd',570),(467,0,0,'OP_EqHearSpellNoLandCmd',571),(468,0,0,'OP_Lottery',572),(469,0,0,'OP_GuildRecruitingMemberInfo',573),(470,0,0,'OP_GuildRecruiting',574),(471,0,0,'OP_GuildRecruitingDetails',575),(472,0,0,'OP_GuildRecruitingImage',576),(473,0,0,'OP_PointOfInterest',597),(474,0,0,'OP_TraitsList',599),(475,0,0,'OP_RecipeList',608),(476,0,0,'OP_CharacterAchievements',655),(477,0,0,'OP_AddClientToGroupMsg',999),(478,0,0,'OP_AddGroupToGroupMsg',999),(479,0,0,'OP_GuildKickMsg',999),(480,0,0,'OP_PurchaseConsignmentResponseMsg',999),(481,0,0,'OP_ProcessScriptMsg',999),(482,0,0,'OP_ProcessWorkspaceMsg',999),(483,0,0,'OP_QuickbarAddMsg',999),(484,0,0,'OP_SkillSlotMapping',999),(485,0,0,'OP_MapRequest',999),(486,0,0,'OP_BadLanguageFilter',999),(487,0,0,'OP_Unknown',10000),(488,0,0,'OP_WSWeatherUpdateMsg',10012),(489,839,844,'OP_LoginRequestMsg',0),(490,839,844,'OP_LoginByNumRequestMsg',1),(491,839,844,'OP_WSLoginRequestMsg',2),(492,839,844,'OP_ESLoginRequestMsg',3),(493,839,844,'OP_LoginReplyMsg',4),(494,839,844,'OP_WSStatusReplyMsg',5),(495,839,844,'OP_WorldStatusChangeMsg',6),(496,839,844,'OP_AllWSDescRequestMsg',7),(497,839,844,'OP_WorldListMsg',8),(498,839,844,'OP_AllCharactersDescRequestMsg',9),(499,839,844,'OP_AllCharactersDescReplyMsg',10),(500,839,844,'OP_CreateCharacterRequestMsg',11),(501,839,844,'OP_CreateCharacterReplyMsg',12),(502,839,844,'OP_WSCreateCharacterRequestMsg',13),(503,839,844,'OP_WSCreateCharacterReplyMsg',14),(504,839,844,'OP_ReskinCharacterRequestMsg',15),(505,839,844,'OP_DeleteCharacterRequestMsg',16),(506,839,844,'OP_DeleteCharacterReplyMsg',17),(507,839,844,'OP_PlayCharacterRequestMsg',18),(508,839,844,'OP_PlayCharacterReplyMsg',19),(509,839,844,'OP_ExpectClientAsCharacterReplyMs',22),(510,839,844,'OP_ServerPlayCharacterRequestMsg',23),(511,839,844,'OP_ServerPlayCharacterReplyMsg',24),(512,839,844,'OP_ESInitMsg',25),(513,839,844,'OP_ESReadyForClientsMsg',26),(514,839,844,'OP_CreateZoneInstanceMsg',27),(515,839,844,'OP_ZoneInstanceCreateReplyMsg',28),(516,839,844,'OP_ZoneInstanceDestroyedMsg',29),(517,839,844,'OP_ExpectClientAsCharacterRequest',30),(518,839,844,'OP_ZoneInfoMsg',31),(519,839,844,'OP_DoneLoadingZoneResourcesMsg',32),(520,839,844,'OP_DoneSendingInitialEntitiesMsg',33),(521,839,844,'OP_DoneLoadingEntityResourcesMsg',34),(522,839,844,'OP_PredictionUpdateMsg',35),(523,839,844,'OP_UpdatePositionMsg',36),(524,839,844,'OP_SetRemoteCmdsMsg',37),(525,839,844,'OP_RemoteCmdMsg',38),(526,839,844,'OP_GameWorldTimeMsg',39),(527,839,844,'OP_MOTDMsg',40),(528,839,844,'OP_ZoneMOTDMsg',41),(529,839,844,'OP_AvatarCreatedMsg',42),(530,839,844,'OP_AvatarDestroyedMsg',43),(531,839,844,'OP_RequestCampMsg',45),(532,839,844,'OP_CampStartedMsg',46),(533,839,844,'OP_CampAbortedMsg',47),(534,839,844,'OP_WhoQueryRequestMsg',48),(535,839,844,'OP_WhoQueryReplyMsg',49),(536,839,844,'OP_MonitorReplyMsg',50),(537,839,844,'OP_MonitorCharacterListMsg',51),(538,839,844,'OP_MonitorCharacterListRequestMsg',52),(539,839,844,'OP_ClientCmdMsg',53),(540,839,844,'OP_DispatchESMsg',54),(541,839,844,'OP_DispatchClientCmdMsg',55),(542,839,844,'OP_UpdateTargetMsg',56),(543,839,844,'OP_UpdateTargetLocMsg',57),(544,839,844,'OP_UpdateCharacterSheetMsg',58),(545,839,844,'OP_UpdateSpellBookMsg',59),(546,839,844,'OP_UpdateInventoryMsg',61),(547,839,844,'OP_UpdateRecipeBookMsg',63),(548,839,844,'OP_RequestRecipeDetailsMsg',64),(549,839,844,'OP_RecipeDetailsMsg',65),(550,839,844,'OP_UpdateSkillBookMsg',66),(551,839,844,'OP_UpdateSkillsMsg',67),(552,839,844,'OP_UpdateOpportunityMsg',68),(553,839,844,'OP_ChangeZoneMsg',70),(554,839,844,'OP_ClientTeleportRequestMsg',71),(555,839,844,'OP_TeleportWithinZoneMsg',72),(556,839,844,'OP_TeleportWithinZoneNoReloadMsg',73),(557,839,844,'OP_MigrateClientToZoneRequestMsg',74),(558,839,844,'OP_MigrateClientToZoneReplyMsg',75),(559,839,844,'OP_ReadyToZoneMsg',76),(560,839,844,'OP_RemoveClientFromGroupMsg',77),(561,839,844,'OP_RemoveGroupFromGroupMsg',78),(562,839,844,'OP_MakeGroupLeaderMsg',79),(563,839,844,'OP_GroupCreatedMsg',80),(564,839,844,'OP_GroupDestroyedMsg',81),(565,839,844,'OP_GroupMemberAddedMsg',82),(566,839,844,'OP_GroupMemberRemovedMsg',83),(567,839,844,'OP_GroupRemovedFromGroupMsg',84),(568,839,844,'OP_GroupLeaderChangedMsg',85),(569,839,844,'OP_GroupResendOOZDataMsg',86),(570,839,844,'OP_GroupSettingsChangedMsg',87),(571,839,844,'OP_OutOfZoneMemberDataMsg',88),(572,839,844,'OP_SendLatestRequestMsg',89),(573,839,844,'OP_ClearDataMsg',90),(574,839,844,'OP_SetSocialMsg',91),(575,839,844,'OP_ESStatusMsg',92),(576,839,844,'OP_ESZoneInstanceStatusMsg',93),(577,839,844,'OP_ZonesStatusRequestMsg',94),(578,839,844,'OP_ZonesStatusMsg',95),(579,839,844,'OP_ESWeatherRequestMsg',96),(580,839,844,'OP_ESWeatherRequestEndMsg',97),(581,839,844,'OP_DialogSelectMsg',98),(582,839,844,'OP_DialogCloseMsg',99),(583,839,844,'OP_RemoveSpellEffectMsg',100),(584,839,844,'OP_RemoveConcentrationMsg',101),(585,839,844,'OP_QuestJournalOpenMsg',102),(586,839,844,'OP_QuestJournalInspectMsg',103),(587,839,844,'OP_QuestJournalSetVisibleMsg',104),(588,839,844,'OP_QuestJournalWaypointMsg',105),(589,839,844,'OP_CreateGuildRequestMsg',108),(590,839,844,'OP_CreateGuildReplyMsg',109),(591,839,844,'OP_GuildsayMsg',110),(592,839,844,'OP_GuildUpdateMsg',111),(593,839,844,'OP_DeleteGuildMsg',112),(594,839,844,'OP_FellowshipExpMsg',113),(595,839,844,'OP_ConsignmentCloseStoreMsg',114),(596,839,844,'OP_ConsignItemRequestMsg',115),(597,839,844,'OP_ConsignItemResponseMsg',116),(598,839,844,'OP_PurchaseConsignmentRequestMsg',117),(599,839,844,'OP_HouseDeletedRemotelyMsg',118),(600,839,844,'OP_UpdateHouseDataMsg',119),(601,839,844,'OP_UpdateHouseAccessDataMsg',120),(602,839,844,'OP_PlayerHouseBaseScreenMsg',121),(603,839,844,'OP_PlayerHousePurchaseScreenMsg',122),(604,839,844,'OP_PlayerHouseAccessUpdateMsg',123),(605,839,844,'OP_PlayerHouseDisplayStatusMsg',124),(606,839,844,'OP_PlayerHouseCloseUIMsg',125),(607,839,844,'OP_BuyPlayerHouseMsg',126),(608,839,844,'OP_BuyPlayerHouseTintMsg',127),(609,839,844,'OP_CollectAllHouseItemsMsg',128),(610,839,844,'OP_RelinquishHouseMsg',129),(611,839,844,'OP_EnterHouseMsg',130),(612,839,844,'OP_ExitHouseMsg',131),(613,839,844,'OP_HouseDefaultAccessSetMsg',132),(614,839,844,'OP_HouseAccessSetMsg',133),(615,839,844,'OP_HouseAccessRemoveMsg',134),(616,839,844,'OP_PayHouseUpkeepMsg',135),(617,839,844,'OP_MoveableObjectPlacementCriteri',136),(618,839,844,'OP_EnterMoveObjectModeMsg',137),(619,839,844,'OP_PositionMoveableObject',138),(620,839,844,'OP_CancelMoveObjectModeMsg',139),(621,839,844,'OP_ShaderCustomizationMsg',140),(622,839,844,'OP_ReplaceableSubMeshesMsg',141),(623,839,844,'OP_HouseCustomizationScreenMsg',142),(624,839,844,'OP_CustomizationPurchaseRequestMs',143),(625,839,844,'OP_CustomizationSetRequestMsg',144),(626,839,844,'OP_CustomizationReplyMsg',145),(627,839,844,'OP_TintWidgetsMsg',146),(628,839,844,'OP_ExamineConsignmentRequestMsg',147),(629,839,844,'OP_ExamineConsignmentResponseMsg',148),(630,839,844,'OP_UISettingsResponseMsg',149),(631,839,844,'OP_UIResetMsg',150),(632,839,844,'OP_KeymapLoadMsg',151),(633,839,844,'OP_KeymapNoneMsg',152),(634,839,844,'OP_KeymapDataMsg',153),(635,839,844,'OP_KeymapSaveMsg',154),(636,839,844,'OP_DispatchSpellCmdMsg',155),(637,839,844,'OP_EntityVerbsRequestMsg',157),(638,839,844,'OP_EntityVerbsReplyMsg',158),(639,839,844,'OP_EntityVerbsVerbMsg',159),(640,839,844,'OP_ChatRelationshipUpdateMsg',161),(641,839,844,'OP_LootItemsRequestMsg',162),(642,839,844,'OP_StoppedLootingMsg',163),(643,839,844,'OP_SitMsg',164),(644,839,844,'OP_StandMsg',165),(645,839,844,'OP_SatMsg',166),(646,839,844,'OP_StoodMsg',167),(647,839,844,'OP_ClearForTakeOffMsg',168),(648,839,844,'OP_ReadyForTakeOffMsg',169),(649,839,844,'OP_ShowIllusionsMsg',170),(650,839,844,'OP_HideIllusionsMsg',171),(651,839,844,'OP_ExamineItemRequestMsg',172),(652,839,844,'OP_ReadBookPageMsg',173),(653,839,844,'OP_DefaultGroupOptionsRequestMsg',174),(654,839,844,'OP_DefaultGroupOptionsMsg',175),(655,839,844,'OP_GroupOptionsMsg',176),(656,839,844,'OP_DisplayGroupOptionsScreenMsg',177),(657,839,844,'OP_DisplayInnVisitScreenMsg',178),(658,839,844,'OP_DumpSchedulerMsg',179),(659,839,844,'OP_LSRequestPlayerDescMsg',180),(660,839,844,'OP_LSCheckAcctLockMsg',181),(661,839,844,'OP_WSAcctLockStatusMsg',182),(662,839,844,'OP_RequestHelpRepathMsg',183),(663,839,844,'OP_RequestTargetLocMsg',184),(664,839,844,'OP_UpdateMotdMsg',185),(665,839,844,'OP_PerformPlayerKnockbackMsg',186),(666,839,844,'OP_PerformCameraShakeMsg',187),(667,839,844,'OP_PopulateSkillMapsMsg',188),(668,839,844,'OP_CancelledFeignMsg',190),(669,839,844,'OP_SignalMsg',191),(670,839,844,'OP_ShowCreateFromRecipeUIMsg',192),(671,839,844,'OP_CancelCreateFromRecipeMsg',193),(672,839,844,'OP_BeginItemCreationMsg',194),(673,839,844,'OP_StopItemCreationMsg',195),(674,839,844,'OP_ShowItemCreationProcessUIMsg',196),(675,839,844,'OP_UpdateItemCreationProcessUIMsg',197),(676,839,844,'OP_DisplayTSEventReactionMsg',198),(677,839,844,'OP_ShowRecipeBookMsg',199),(678,839,844,'OP_KnowledgebaseRequestMsg',200),(679,839,844,'OP_KnowledgebaseResponseMsg',201),(680,839,844,'OP_CSTicketHeaderRequestMsg',202),(681,839,844,'OP_CSTicketInfoMsg',203),(682,839,844,'OP_CSTicketCommentRequestMsg',204),(683,839,844,'OP_CSTicketCommentResponseMsg',205),(684,839,844,'OP_CSTicketCreateMsg',206),(685,839,844,'OP_CSTicketAddCommentMsg',207),(686,839,844,'OP_CSTicketDeleteMsg',208),(687,839,844,'OP_CSTicketChangeNotificationMsg',209),(688,839,844,'OP_WorldDataUpdateMsg',210),(689,839,844,'OP_KnownLanguagesMsg',211),(690,839,844,'OP_LsRequestClientCrashLogMsg',212),(691,839,844,'OP_LsClientBaselogReplyMsg',213),(692,839,844,'OP_LsClientCrashlogReplyMsg',214),(693,839,844,'OP_LsClientAlertlogReplyMsg',215),(694,839,844,'OP_LsClientVerifylogReplyMsg',216),(695,839,844,'OP_ClientTeleportToLocationMsg',217),(696,839,844,'OP_UpdateClientPredFlagsMsg',218),(697,839,844,'OP_ChangeServerControlFlagMsg',219),(698,839,844,'OP_CSToolsRequestMsg',220),(699,839,844,'OP_CSToolsResponseMsg',221),(700,839,844,'OP_AddSocialStructureStandingMsg',222),(701,839,844,'OP_CreateBoatTransportsMsg',223),(702,839,844,'OP_PositionBoatTransportMsg',224),(703,839,844,'OP_MigrateBoatTransportMsg',225),(704,839,844,'OP_MigrateBoatTransportReplyMsg',226),(705,839,844,'OP_DisplayDebugNLLPointsMsg',227),(706,839,844,'OP_ExamineInfoRequestMsg',228),(707,839,844,'OP_QuickbarInitMsg',229),(708,839,844,'OP_QuickbarUpdateMsg',230),(709,839,844,'OP_MacroInitMsg',231),(710,839,844,'OP_MacroUpdateMsg',232),(711,839,844,'OP_QuestionnaireMsg',233),(712,839,844,'OP_LevelChangedMsg',234),(713,839,844,'OP_SpellGainedMsg',235),(714,839,844,'OP_EncounterBrokenMsg',236),(715,839,844,'OP_OnscreenMsgMsg',237),(716,839,844,'OP_DisplayWarningMsg',238),(717,839,844,'OP_ModifyGuildMsg',239),(718,839,844,'OP_GuildEventMsg',240),(719,839,844,'OP_GuildEventAddMsg',241),(720,839,844,'OP_GuildEventActionMsg',242),(721,839,844,'OP_GuildEventListMsg',243),(722,839,844,'OP_RequestGuildEventDetailsMsg',244),(723,839,844,'OP_GuildEventDetailsMsg',245),(724,839,844,'OP_RequestGuildInfoMsg',246),(725,839,844,'OP_GuildBankActionMsg',247),(726,839,844,'OP_GuildBankActionResponseMsg',248),(727,839,844,'OP_GuildBankItemDetailsRequestMsg',249),(728,839,844,'OP_GuildBankItemDetailsResponseMs',250),(729,839,844,'OP_GuildBankUpdateMsg',251),(730,839,844,'OP_GuildBankEventListMsg',252),(731,839,844,'OP_RequestGuildBankEventDetailsMs',253),(732,839,844,'OP_RewardPackMsg',254),(733,839,844,'OP_RenameGuildMsg',255),(734,839,844,'OP_ZoneToFriendRequestMsg',257),(735,839,844,'OP_ZoneToFriendReplyMsg',258),(736,839,844,'OP_ChatCreateChannelMsg',259),(737,839,844,'OP_ChatJoinChannelMsg',260),(738,839,844,'OP_ChatWhoChannelMsg',261),(739,839,844,'OP_ChatLeaveChannelMsg',262),(740,839,844,'OP_ChatTellChannelMsg',263),(741,839,844,'OP_ChatTellUserMsg',264),(742,839,844,'OP_ChatToggleFriendMsg',265),(743,839,844,'OP_ChatToggleIgnoreMsg',266),(744,839,844,'OP_ChatSendFriendsMsg',267),(745,839,844,'OP_ChatSendIgnoresMsg',268),(746,839,844,'OP_QuestReward',294),(747,839,844,'OP_ChatFiltersMsg',309),(748,839,844,'OP_MailGetHeadersMsg',310),(749,839,844,'OP_MailGetMessageMsg',311),(750,839,844,'OP_MailSendMessageMsg',312),(751,839,844,'OP_MailDeleteMessageMsg',313),(752,839,844,'OP_MailGetHeadersReplyMsg',314),(753,839,844,'OP_MailGetMessageReplyMsg',315),(754,839,844,'OP_MailSendMessageReplyMsg',316),(755,839,844,'OP_MailCommitSendMessageMsg',317),(756,839,844,'OP_MailSendSystemMessageMsg',318),(757,839,844,'OP_MailRemoveAttachFromMailMsg',319),(758,839,844,'OP_WaypointRequestMsg',321),(759,839,844,'OP_WaypointReplyMsg',322),(760,839,844,'OP_WaypointSelectMsg',323),(761,839,844,'OP_WaypointUpdateMsg',324),(762,839,844,'OP_CharNameChangedMsg',325),(763,839,844,'OP_ShowZoneTeleporterDestinations',326),(764,839,844,'OP_SelectZoneTeleporterDestinatio',327),(765,839,844,'OP_ReloadLocalizedTxtMsg',328),(766,839,844,'OP_RequestGuildMembershipMsg',329),(767,839,844,'OP_GuildMembershipResponseMsg',330),(768,839,844,'OP_LeaveGuildNotifyMsg',331),(769,839,844,'OP_JoinGuildNotifyMsg',332),(770,839,844,'OP_AvatarUpdateMsg',334),(771,839,844,'OP_BioUpdateMsg',335),(772,839,844,'OP_InspectPlayerMsg',336),(773,839,844,'OP_WSServerLockMsg',337),(774,839,844,'OP_LSServerLockMsg',338),(775,839,844,'OP_WSServerHideMsg',339),(776,839,844,'OP_CsCategoryRequestMsg',340),(777,839,844,'OP_CsCategoryResponseMsg',341),(778,839,844,'OP_KnowledgeWindowSlotMappingMsg',342),(779,839,844,'OP_LFGUpdateMsg',343),(780,839,844,'OP_AFKUpdateMsg',344),(781,839,844,'OP_AnonUpdateMsg',345),(782,839,844,'OP_UpdateActivePublicZonesMsg',346),(783,839,844,'OP_UnknownNpcMsg',347),(784,839,844,'OP_PromoFlagsDetailsMsg',348),(785,839,844,'OP_ConsignViewCreateMsg',349),(786,839,844,'OP_ConsignViewGetPageMsg',350),(787,839,844,'OP_ConsignViewReleaseMsg',351),(788,839,844,'OP_ConsignRemoveItemsMsg',352),(789,839,844,'OP_UpdateDebugRadiiMsg',353),(790,839,844,'OP_SnoopMsg',354),(791,839,844,'OP_ReportMsg',355),(792,839,844,'OP_UpdateRaidMsg',356),(793,839,844,'OP_ConsignViewSortMsg',357),(794,839,844,'OP_TitleUpdateMsg',358),(795,839,844,'OP_ClientFellMsg',359),(796,839,844,'OP_ClientInDeathRegionMsg',360),(797,839,844,'OP_CampClientMsg',361),(798,839,844,'OP_CSToolAccessResponseMsg',362),(799,839,844,'OP_TrackingUpdateMsg',363),(800,839,844,'OP_BeginTrackingMsg',364),(801,839,844,'OP_StopTrackingMsg',365),(802,839,844,'OP_GetAvatarAccessRequestForCSToo',366),(803,839,844,'OP_AdvancementRequestMsg',367),(804,839,844,'OP_UpdateAvgFrameTimeMsg',368),(805,839,844,'OP_MapFogDataInitMsg',369),(806,839,844,'OP_MapFogDataUpdateMsg',370),(807,839,844,'OP_CloseGroupInviteWindowMsg',371),(808,839,844,'OP_UpdateGroupMemberDataMsg',372),(809,839,844,'OP_WorldPingMsg',373),(810,839,844,'OP_MoveLogUpdateMsg',374),(811,839,844,'OP_OfferQuestMsg',375),(812,839,844,'OP_WorldShutdownUpdateMsg',376),(813,839,844,'OP_DisplayMailScreenMsg',377),(814,839,844,'OP_ClientIdleBeginMsg',378),(815,839,844,'OP_ClientIdleEndMsg',379),(816,839,844,'OP_PurchaseConsignmentLoreCheckRe',380),(817,839,844,'OP_NotifyApprenticeStoppedMentori',381),(818,839,844,'OP_CorruptedClientMsg',382),(819,839,844,'OP_WorldDataChangeMsg',383),(820,839,844,'OP_MailEventNotificationMsg',384),(821,839,844,'OP_RestartZoneMsg',385),(822,839,844,'OP_FlightPathsMsg',386),(823,839,844,'OP_CharacterLinkdeadMsg',387),(824,839,844,'OP_CharTransferStartRequestMsg',388),(825,839,844,'OP_CharTransferStartReplyMsg',389),(826,839,844,'OP_CharTransferRequestMsg',390),(827,839,844,'OP_CharTransferReplyMsg',391),(828,839,844,'OP_CharTransferRollbackRequestMsg',392),(829,839,844,'OP_CharTransferCommitRequestMsg',393),(830,839,844,'OP_CharTransferRollbackReplyMsg',394),(831,839,844,'OP_CharTransferCommitReplyMsg',395),(832,839,844,'OP_GetCharacterSerializedRequestM',396),(833,839,844,'OP_GetCharacterSerializedReplyMsg',397),(834,839,844,'OP_CreateCharFromCBBRequestMsg',398),(835,839,844,'OP_CreateCharFromCBBReplyMsg',399),(836,839,844,'OP_HousingDataChangedMsg',400),(837,839,844,'OP_HousingRestoreMsg',401),(838,839,844,'OP_AuctionItem',402),(839,839,844,'OP_AuctionItemReply',403),(840,839,844,'OP_AuctionCoin',404),(841,839,844,'OP_AuctionCoinReply',405),(842,839,844,'OP_AuctionCharacter',406),(843,839,844,'OP_AuctionCharacterReply',407),(844,839,844,'OP_AuctionCommitMsg',408),(845,839,844,'OP_AuctionAbortMsg',409),(846,839,844,'OP_CharTransferValidateRequestMsg',410),(847,839,844,'OP_CharTransferValidateReplyMsg',411),(848,839,844,'OP_RaceRestrictionMsg',412),(849,839,844,'OP_SetInstanceDisplayNameMsg',413),(850,839,844,'OP_GetAuctionAssetIDMsg',414),(851,839,844,'OP_GetAuctionAssetIDReplyMsg',415),(852,839,844,'OP_ResendWorldChannelsMsg',416),(853,839,844,'OP_DisplayExchangeScreenMsg',417),(854,839,844,'OP_ArenaGameTypesMsg',418),(855,839,844,'OP_AuditAuctionEventMsg',420),(856,839,844,'OP_InviteRequestMsg',422),(857,839,844,'OP_InviteResponseMsg',423),(858,839,844,'OP_InviteTargetResponseMsg',424),(859,839,844,'OP_InspectPlayerRequestMsg',425),(860,839,844,'OP_DispatchMsg',426),(861,839,844,'OP_DisplayEventMsg',427),(862,839,844,'OP_PrePossessionMsg',428),(863,839,844,'OP_PostPossessionMsg',429),(864,839,844,'OP_AdventureList',454),(865,839,844,'OP_CancelSpellCast',455),(866,839,844,'OP_UpdateTitleCmd',461),(867,839,844,'OP_AttackAllowed',467),(868,839,844,'OP_AttackNotAllowed',468),(869,839,844,'OP_DressingRoom',474),(870,839,844,'OP_SkillInfoRequest',478),(871,839,844,'OP_SkillInfoResponse',479),(872,839,844,'OP_EqHearChatCmd',480),(873,839,844,'OP_EqDisplayTextCmd',481),(874,839,844,'OP_EqCreateGhostCmd',482),(875,839,844,'OP_EqCreateWidgetCmd',483),(876,839,844,'OP_EqCreateSignWidgetCmd',484),(877,839,844,'OP_EqDestroyGhostCmd',485),(878,839,844,'OP_EqUpdateGhostCmd',486),(879,839,844,'OP_EqSetControlGhostCmd',487),(880,839,844,'OP_EqSetPOVGhostCmd',488),(881,839,844,'OP_EqHearCombatCmd',489),(882,839,844,'OP_EqHearSpellCastCmd',490),(883,839,844,'OP_EqHearSpellInterruptCmd',493),(884,839,844,'OP_EqHearSpellFizzleCmd',494),(885,839,844,'OP_EqHearConsiderCmd',495),(886,839,844,'OP_EqUpdateSubClassesCmd',496),(887,839,844,'OP_EqCreateListBoxCmd',497),(888,839,844,'OP_EqSetDebugPathPointsCmd',498),(889,839,844,'OP_EqCannedEmoteCmd',500),(890,839,844,'OP_EqStateCmd',501),(891,839,844,'OP_EqPlaySoundCmd',502),(892,839,844,'OP_EqPlaySound3DCmd',503),(893,839,844,'OP_EqPlayVoiceCmd',504),(894,839,844,'OP_EqHearDrowningCmd',505),(895,839,844,'OP_EqHearDeathCmd',506),(896,839,844,'OP_EqGroupMemberRemovedCmd',507),(897,839,844,'OP_EqHearChainEffectCmd',508),(898,839,844,'OP_EqReceiveOfferCmd',509),(899,839,844,'OP_EqInspectPCResultsCmd',510),(900,839,844,'OP_EqDrawablePathGraphCmd',511),(901,839,844,'OP_EqDialogOpenCmd',512),(902,839,844,'OP_EqDialogCloseCmd',513),(903,839,844,'OP_EqFactionUpdateCmd',514),(904,839,844,'OP_EqCollectionUpdateCmd',515),(905,839,844,'OP_EqCollectionFilterCmd',516),(906,839,844,'OP_EqCollectionItemCmd',517),(907,839,844,'OP_EqQuestJournalUpdateCmd',518),(908,839,844,'OP_EqQuestJournalReplyCmd',520),(909,839,844,'OP_EqQuestGroupCmd',521),(910,839,844,'OP_EqUpdateMerchantCmd',522),(911,839,844,'OP_EqUpdateStoreCmd',523),(912,839,844,'OP_EqUpdatePlayerTradeCmd',524),(913,839,844,'OP_EqHelpPathCmd',525),(914,839,844,'OP_EqHelpPathClearCmd',526),(915,839,844,'OP_EqUpdateBankCmd',527),(916,839,844,'OP_EqExamineInfoCmd',528),(917,839,844,'OP_EqCloseWindowCmd',529),(918,839,844,'OP_EqUpdateLootCmd',530),(919,839,844,'OP_EqJunctionListCmd',531),(920,839,844,'OP_EqShowDeathWindowCmd',532),(921,839,844,'OP_EqDisplaySpellFailCmd',533),(922,839,844,'OP_EqSpellCastStartCmd',534),(923,839,844,'OP_EqSpellCastEndCmd',535),(924,839,844,'OP_EqResurrectedCmd',536),(925,839,844,'OP_EqChoiceWinCmd',537),(926,839,844,'OP_EqSetDefaultVerbCmd',538),(927,839,844,'OP_EqInstructionWindowCmd',540),(928,839,844,'OP_EqInstructionWindowCloseCmd',541),(929,839,844,'OP_EqInstructionWindowGoalCmd',542),(930,839,844,'OP_EqInstructionWindowTaskCmd',543),(931,839,844,'OP_EqEnableGameEventCmd',544),(932,839,844,'OP_EqShowWindowCmd',545),(933,839,844,'OP_EqEnableWindowCmd',546),(934,839,844,'OP_EqFlashWindowCmd',547),(935,839,844,'OP_EqHearPlayFlavorCmd',548),(936,839,844,'OP_EqUpdateSignWidgetCmd',550),(937,839,844,'OP_EqDebugPVDCmd',551),(938,839,844,'OP_EqShowBookCmd',552),(939,839,844,'OP_EqQuestionnaireCmd',553),(940,839,844,'OP_EqGetProbsCmd',554),(941,839,844,'OP_EqHearHealCmd',555),(942,839,844,'OP_EqChatChannelUpdateCmd',556),(943,839,844,'OP_EqWhoChannelQueryReplyCmd',557),(944,839,844,'OP_EqAvailWorldChannelsCmd',558),(945,839,844,'OP_EqUpdateTargetCmd',559),(946,839,844,'OP_EqConsignmentItemsCmd',561),(947,839,844,'OP_EqStartBrokerCmd',563),(948,839,844,'OP_EqMapExplorationCmd',564),(949,839,844,'OP_EqStoreLogCmd',565),(950,839,844,'OP_EqSpellMoveToRangeAndRetryCmd',566),(951,839,844,'OP_EqUpdatePlayerMailCmd',567),(952,839,844,'OP_EqArenaResultsCmd',568),(953,839,844,'OP_EqGuildBankEventActionCmd',569),(954,839,844,'OP_EqGuildBankExamineInfoCmd',570),(955,839,844,'OP_EqHearSpellNoLandCmd',571),(956,839,844,'OP_Lottery',572),(957,839,844,'OP_GuildRecruitingMemberInfo',573),(958,839,844,'OP_GuildRecruiting',574),(959,839,844,'OP_GuildRecruitingDetails',575),(960,839,844,'OP_GuildRecruitingImage',576),(961,839,844,'OP_PointOfInterest',597),(962,839,844,'OP_TraitsList',599),(963,839,844,'OP_RecipeList',608),(964,839,844,'OP_CharacterAchievements',655),(965,839,844,'OP_AddClientToGroupMsg',999),(966,839,844,'OP_AddGroupToGroupMsg',999),(967,839,844,'OP_GuildKickMsg',999),(968,839,844,'OP_PurchaseConsignmentResponseMsg',999),(969,839,844,'OP_ProcessScriptMsg',999),(970,839,844,'OP_ProcessWorkspaceMsg',999),(971,839,844,'OP_QuickbarAddMsg',999),(972,839,844,'OP_SkillSlotMapping',999),(973,839,844,'OP_MapRequest',999),(974,839,844,'OP_BadLanguageFilter',999),(975,839,844,'OP_Unknown',10000),(976,839,844,'OP_WSWeatherUpdateMsg',10012),(977,908,927,'OP_LoginRequestMsg',0),(978,908,927,'OP_LoginByNumRequestMsg',1),(979,908,927,'OP_WSLoginRequestMsg',2),(980,908,927,'OP_ESLoginRequestMsg',3),(981,908,927,'OP_LoginReplyMsg',4),(982,908,927,'OP_WSStatusReplyMsg',5),(983,908,927,'OP_WorldStatusChangeMsg',6),(984,908,927,'OP_AllWSDescRequestMsg',7),(985,908,927,'OP_WorldListMsg',8),(986,908,927,'OP_AllCharactersDescRequestMsg',9),(987,908,927,'OP_AllCharactersDescReplyMsg',10),(988,908,927,'OP_CreateCharacterRequestMsg',11),(989,908,927,'OP_CreateCharacterReplyMsg',12),(990,908,927,'OP_WSCreateCharacterRequestMsg',13),(991,908,927,'OP_WSCreateCharacterReplyMsg',14),(992,908,927,'OP_ReskinCharacterRequestMsg',15),(993,908,927,'OP_DeleteCharacterRequestMsg',16),(994,908,927,'OP_DeleteCharacterReplyMsg',17),(995,908,927,'OP_PlayCharacterRequestMsg',18),(996,908,927,'OP_PlayCharacterReplyMsg',19),(997,908,927,'OP_ExpectClientAsCharacterReplyMs',22),(998,908,927,'OP_ServerPlayCharacterRequestMsg',23),(999,908,927,'OP_ServerPlayCharacterReplyMsg',24),(1000,908,927,'OP_ESInitMsg',25),(1001,908,927,'OP_ESReadyForClientsMsg',26),(1002,908,927,'OP_CreateZoneInstanceMsg',27),(1003,908,927,'OP_ZoneInstanceCreateReplyMsg',28),(1004,908,927,'OP_ZoneInstanceDestroyedMsg',29),(1005,908,927,'OP_ExpectClientAsCharacterRequest',30),(1006,908,927,'OP_ZoneInfoMsg',31),(1007,908,927,'OP_DoneLoadingZoneResourcesMsg',32),(1008,908,927,'OP_DoneSendingInitialEntitiesMsg',33),(1009,908,927,'OP_DoneLoadingEntityResourcesMsg',34),(1010,908,927,'OP_PredictionUpdateMsg',35),(1011,908,927,'OP_UpdatePositionMsg',37),(1012,908,927,'OP_SetRemoteCmdsMsg',39),(1013,908,927,'OP_RemoteCmdMsg',40),(1014,908,927,'OP_GameWorldTimeMsg',41),(1015,908,927,'OP_MOTDMsg',42),(1016,908,927,'OP_ZoneMOTDMsg',43),(1017,908,927,'OP_AvatarCreatedMsg',44),(1018,908,927,'OP_AvatarDestroyedMsg',45),(1019,908,927,'OP_RequestCampMsg',47),(1020,908,927,'OP_CampStartedMsg',48),(1021,908,927,'OP_CampAbortedMsg',49),(1022,908,927,'OP_WhoQueryRequestMsg',50),(1023,908,927,'OP_WhoQueryReplyMsg',51),(1024,908,927,'OP_MonitorReplyMsg',52),(1025,908,927,'OP_MonitorCharacterListMsg',53),(1026,908,927,'OP_MonitorCharacterListRequestMsg',54),(1027,908,927,'OP_ClientCmdMsg',55),(1028,908,927,'OP_DispatchESMsg',56),(1029,908,927,'OP_DispatchClientCmdMsg',57),(1030,908,927,'OP_UpdateTargetMsg',58),(1031,908,927,'OP_UpdateTargetLocMsg',59),(1032,908,927,'OP_UpdateCharacterSheetMsg',60),(1033,908,927,'OP_UpdateSpellBookMsg',61),(1034,908,927,'OP_UpdateInventoryMsg',63),(1035,908,927,'OP_UpdateRecipeBookMsg',65),(1036,908,927,'OP_RequestRecipeDetailsMsg',66),(1037,908,927,'OP_RecipeDetailsMsg',67),(1038,908,927,'OP_UpdateSkillBookMsg',68),(1039,908,927,'OP_UpdateSkillsMsg',69),(1040,908,927,'OP_UpdateOpportunityMsg',70),(1041,908,927,'OP_ChangeZoneMsg',72),(1042,908,927,'OP_ClientTeleportRequestMsg',73),(1043,908,927,'OP_TeleportWithinZoneMsg',74),(1044,908,927,'OP_TeleportWithinZoneNoReloadMsg',75),(1045,908,927,'OP_MigrateClientToZoneRequestMsg',76),(1046,908,927,'OP_MigrateClientToZoneReplyMsg',77),(1047,908,927,'OP_ReadyToZoneMsg',78),(1048,908,927,'OP_RemoveClientFromGroupMsg',79),(1049,908,927,'OP_RemoveGroupFromGroupMsg',80),(1050,908,927,'OP_MakeGroupLeaderMsg',81),(1051,908,927,'OP_GroupCreatedMsg',82),(1052,908,927,'OP_GroupDestroyedMsg',83),(1053,908,927,'OP_GroupMemberAddedMsg',84),(1054,908,927,'OP_GroupMemberRemovedMsg',85),(1055,908,927,'OP_GroupRemovedFromGroupMsg',86),(1056,908,927,'OP_GroupLeaderChangedMsg',87),(1057,908,927,'OP_GroupResendOOZDataMsg',88),(1058,908,927,'OP_GroupSettingsChangedMsg',89),(1059,908,927,'OP_OutOfZoneMemberDataMsg',90),(1060,908,927,'OP_SendLatestRequestMsg',91),(1061,908,927,'OP_ClearDataMsg',92),(1062,908,927,'OP_SetSocialMsg',93),(1063,908,927,'OP_ESStatusMsg',94),(1064,908,927,'OP_ESZoneInstanceStatusMsg',95),(1065,908,927,'OP_ZonesStatusRequestMsg',96),(1066,908,927,'OP_ZonesStatusMsg',97),(1067,908,927,'OP_ESWeatherRequestMsg',98),(1068,908,927,'OP_ESWeatherRequestEndMsg',99),(1069,908,927,'OP_DialogSelectMsg',102),(1070,908,927,'OP_DialogCloseMsg',103),(1071,908,927,'OP_RemoveSpellEffectMsg',104),(1072,908,927,'OP_RemoveConcentrationMsg',105),(1073,908,927,'OP_QuestJournalOpenMsg',106),(1074,908,927,'OP_QuestJournalInspectMsg',107),(1075,908,927,'OP_QuestJournalSetVisibleMsg',108),(1076,908,927,'OP_QuestJournalWaypointMsg',109),(1077,908,927,'OP_CreateGuildRequestMsg',110),(1078,908,927,'OP_CreateGuildReplyMsg',111),(1079,908,927,'OP_GuildsayMsg',112),(1080,908,927,'OP_GuildUpdateMsg',115),(1081,908,927,'OP_DeleteGuildMsg',116),(1082,908,927,'OP_FellowshipExpMsg',117),(1083,908,927,'OP_ConsignmentCloseStoreMsg',118),(1084,908,927,'OP_ConsignItemRequestMsg',119),(1085,908,927,'OP_ConsignItemResponseMsg',120),(1086,908,927,'OP_PurchaseConsignmentRequestMsg',121),(1087,908,927,'OP_HouseDeletedRemotelyMsg',122),(1088,908,927,'OP_UpdateHouseDataMsg',123),(1089,908,927,'OP_UpdateHouseAccessDataMsg',124),(1090,908,927,'OP_PlayerHouseBaseScreenMsg',125),(1091,908,927,'OP_PlayerHousePurchaseScreenMsg',126),(1092,908,927,'OP_PlayerHouseAccessUpdateMsg',127),(1093,908,927,'OP_PlayerHouseDisplayStatusMsg',128),(1094,908,927,'OP_PlayerHouseCloseUIMsg',129),(1095,908,927,'OP_BuyPlayerHouseMsg',130),(1096,908,927,'OP_BuyPlayerHouseTintMsg',131),(1097,908,927,'OP_CollectAllHouseItemsMsg',132),(1098,908,927,'OP_RelinquishHouseMsg',133),(1099,908,927,'OP_EnterHouseMsg',134),(1100,908,927,'OP_ExitHouseMsg',135),(1101,908,927,'OP_HouseDefaultAccessSetMsg',136),(1102,908,927,'OP_HouseAccessSetMsg',137),(1103,908,927,'OP_HouseAccessRemoveMsg',138),(1104,908,927,'OP_PayHouseUpkeepMsg',139),(1105,908,927,'OP_MoveableObjectPlacementCriteri',141),(1106,908,927,'OP_EnterMoveObjectModeMsg',142),(1107,908,927,'OP_PositionMoveableObject',143),(1108,908,927,'OP_CancelMoveObjectModeMsg',144),(1109,908,927,'OP_ShaderCustomizationMsg',145),(1110,908,927,'OP_ReplaceableSubMeshesMsg',146),(1111,908,927,'OP_HouseCustomizationScreenMsg',147),(1112,908,927,'OP_CustomizationPurchaseRequestMs',148),(1113,908,927,'OP_CustomizationSetRequestMsg',149),(1114,908,927,'OP_CustomizationReplyMsg',150),(1115,908,927,'OP_TintWidgetsMsg',151),(1116,908,927,'OP_ExamineConsignmentRequestMsg',152),(1117,908,927,'OP_ExamineConsignmentResponseMsg',153),(1118,908,927,'OP_UISettingsResponseMsg',154),(1119,908,927,'OP_UIResetMsg',155),(1120,908,927,'OP_KeymapLoadMsg',156),(1121,908,927,'OP_KeymapNoneMsg',157),(1122,908,927,'OP_KeymapDataMsg',158),(1123,908,927,'OP_KeymapSaveMsg',159),(1124,908,927,'OP_DispatchSpellCmdMsg',160),(1125,908,927,'OP_EntityVerbsRequestMsg',162),(1126,908,927,'OP_EntityVerbsReplyMsg',163),(1127,908,927,'OP_EntityVerbsVerbMsg',164),(1128,908,927,'OP_ChatRelationshipUpdateMsg',166),(1129,908,927,'OP_LootItemsRequestMsg',167),(1130,908,927,'OP_StoppedLootingMsg',168),(1131,908,927,'OP_SitMsg',169),(1132,908,927,'OP_StandMsg',170),(1133,908,927,'OP_SatMsg',171),(1134,908,927,'OP_StoodMsg',172),(1135,908,927,'OP_ClearForTakeOffMsg',173),(1136,908,927,'OP_ReadyForTakeOffMsg',174),(1137,908,927,'OP_ShowIllusionsMsg',175),(1138,908,927,'OP_HideIllusionsMsg',176),(1139,908,927,'OP_ExamineItemRequestMsg',177),(1140,908,927,'OP_ReadBookPageMsg',178),(1141,908,927,'OP_DefaultGroupOptionsRequestMsg',179),(1142,908,927,'OP_DefaultGroupOptionsMsg',180),(1143,908,927,'OP_GroupOptionsMsg',181),(1144,908,927,'OP_DisplayGroupOptionsScreenMsg',182),(1145,908,927,'OP_DisplayInnVisitScreenMsg',183),(1146,908,927,'OP_DumpSchedulerMsg',184),(1147,908,927,'OP_LSRequestPlayerDescMsg',185),(1148,908,927,'OP_LSCheckAcctLockMsg',186),(1149,908,927,'OP_WSAcctLockStatusMsg',187),(1150,908,927,'OP_RequestHelpRepathMsg',188),(1151,908,927,'OP_RequestTargetLocMsg',189),(1152,908,927,'OP_UpdateMotdMsg',190),(1153,908,927,'OP_PerformPlayerKnockbackMsg',191),(1154,908,927,'OP_PerformCameraShakeMsg',192),(1155,908,927,'OP_PopulateSkillMapsMsg',195),(1156,908,927,'OP_CancelledFeignMsg',197),(1157,908,927,'OP_SignalMsg',198),(1158,908,927,'OP_ShowCreateFromRecipeUIMsg',199),(1159,908,927,'OP_CancelCreateFromRecipeMsg',200),(1160,908,927,'OP_BeginItemCreationMsg',201),(1161,908,927,'OP_StopItemCreationMsg',202),(1162,908,927,'OP_ShowItemCreationProcessUIMsg',203),(1163,908,927,'OP_UpdateItemCreationProcessUIMsg',204),(1164,908,927,'OP_DisplayTSEventReactionMsg',205),(1165,908,927,'OP_ShowRecipeBookMsg',206),(1166,908,927,'OP_KnowledgebaseRequestMsg',207),(1167,908,927,'OP_KnowledgebaseResponseMsg',208),(1168,908,927,'OP_CSTicketHeaderRequestMsg',209),(1169,908,927,'OP_CSTicketInfoMsg',210),(1170,908,927,'OP_CSTicketCommentRequestMsg',211),(1171,908,927,'OP_CSTicketCommentResponseMsg',212),(1172,908,927,'OP_CSTicketCreateMsg',213),(1173,908,927,'OP_CSTicketAddCommentMsg',214),(1174,908,927,'OP_CSTicketDeleteMsg',215),(1175,908,927,'OP_CSTicketChangeNotificationMsg',216),(1176,908,927,'OP_WorldDataUpdateMsg',217),(1177,908,927,'OP_KnownLanguagesMsg',218),(1178,908,927,'OP_LsRequestClientCrashLogMsg',219),(1179,908,927,'OP_LsClientBaselogReplyMsg',220),(1180,908,927,'OP_LsClientCrashlogReplyMsg',221),(1181,908,927,'OP_LsClientAlertlogReplyMsg',222),(1182,908,927,'OP_LsClientVerifylogReplyMsg',223),(1183,908,927,'OP_ClientTeleportToLocationMsg',224),(1184,908,927,'OP_UpdateClientPredFlagsMsg',225),(1185,908,927,'OP_ChangeServerControlFlagMsg',226),(1186,908,927,'OP_CSToolsRequestMsg',227),(1187,908,927,'OP_CSToolsResponseMsg',228),(1188,908,927,'OP_AddSocialStructureStandingMsg',229),(1189,908,927,'OP_CreateBoatTransportsMsg',230),(1190,908,927,'OP_PositionBoatTransportMsg',231),(1191,908,927,'OP_MigrateBoatTransportMsg',232),(1192,908,927,'OP_MigrateBoatTransportReplyMsg',233),(1193,908,927,'OP_DisplayDebugNLLPointsMsg',234),(1194,908,927,'OP_ExamineInfoRequestMsg',235),(1195,908,927,'OP_QuickbarInitMsg',236),(1196,908,927,'OP_QuickbarUpdateMsg',237),(1197,908,927,'OP_MacroInitMsg',238),(1198,908,927,'OP_MacroUpdateMsg',239),(1199,908,927,'OP_QuestionnaireMsg',240),(1200,908,927,'OP_LevelChangedMsg',241),(1201,908,927,'OP_SpellGainedMsg',242),(1202,908,927,'OP_EncounterBrokenMsg',243),(1203,908,927,'OP_OnscreenMsgMsg',244),(1204,908,927,'OP_DisplayWarningMsg',245),(1205,908,927,'OP_ModifyGuildMsg',246),(1206,908,927,'OP_GuildEventMsg',247),(1207,908,927,'OP_GuildEventAddMsg',248),(1208,908,927,'OP_GuildEventActionMsg',249),(1209,908,927,'OP_GuildEventListMsg',250),(1210,908,927,'OP_RequestGuildEventDetailsMsg',251),(1211,908,927,'OP_GuildEventDetailsMsg',252),(1212,908,927,'OP_RequestGuildInfoMsg',253),(1213,908,927,'OP_GuildBankActionMsg',254),(1214,908,927,'OP_GuildBankActionResponseMsg',255),(1215,908,927,'OP_GuildBankItemDetailsRequestMsg',256),(1216,908,927,'OP_GuildBankItemDetailsResponseMs',257),(1217,908,927,'OP_GuildBankUpdateMsg',258),(1218,908,927,'OP_GuildBankEventListMsg',259),(1219,908,927,'OP_RequestGuildBankEventDetailsMs',260),(1220,908,927,'OP_RewardPackMsg',261),(1221,908,927,'OP_RenameGuildMsg',262),(1222,908,927,'OP_ZoneToFriendRequestMsg',264),(1223,908,927,'OP_ZoneToFriendReplyMsg',265),(1224,908,927,'OP_ChatCreateChannelMsg',266),(1225,908,927,'OP_ChatJoinChannelMsg',267),(1226,908,927,'OP_ChatWhoChannelMsg',268),(1227,908,927,'OP_ChatLeaveChannelMsg',269),(1228,908,927,'OP_ChatTellChannelMsg',270),(1229,908,927,'OP_ChatTellUserMsg',271),(1230,908,927,'OP_ChatToggleFriendMsg',272),(1231,908,927,'OP_ChatToggleIgnoreMsg',273),(1232,908,927,'OP_ChatSendFriendsMsg',274),(1233,908,927,'OP_ChatSendIgnoresMsg',275),(1234,908,927,'OP_QuestReward',302),(1235,908,927,'OP_ChatFiltersMsg',317),(1236,908,927,'OP_MailGetHeadersMsg',318),(1237,908,927,'OP_MailGetMessageMsg',319),(1238,908,927,'OP_MailSendMessageMsg',320),(1239,908,927,'OP_MailDeleteMessageMsg',321),(1240,908,927,'OP_MailGetHeadersReplyMsg',322),(1241,908,927,'OP_MailGetMessageReplyMsg',323),(1242,908,927,'OP_MailSendMessageReplyMsg',324),(1243,908,927,'OP_MailCommitSendMessageMsg',325),(1244,908,927,'OP_MailSendSystemMessageMsg',326),(1245,908,927,'OP_MailRemoveAttachFromMailMsg',327),(1246,908,927,'OP_WaypointRequestMsg',329),(1247,908,927,'OP_WaypointReplyMsg',330),(1248,908,927,'OP_WaypointSelectMsg',331),(1249,908,927,'OP_WaypointUpdateMsg',332),(1250,908,927,'OP_CharNameChangedMsg',333),(1251,908,927,'OP_ShowZoneTeleporterDestinations',334),(1252,908,927,'OP_SelectZoneTeleporterDestinatio',335),(1253,908,927,'OP_ReloadLocalizedTxtMsg',336),(1254,908,927,'OP_RequestGuildMembershipMsg',337),(1255,908,927,'OP_GuildMembershipResponseMsg',338),(1256,908,927,'OP_LeaveGuildNotifyMsg',339),(1257,908,927,'OP_JoinGuildNotifyMsg',340),(1258,908,927,'OP_AvatarUpdateMsg',342),(1259,908,927,'OP_BioUpdateMsg',343),(1260,908,927,'OP_InspectPlayerMsg',344),(1261,908,927,'OP_WSServerLockMsg',345),(1262,908,927,'OP_LSServerLockMsg',346),(1263,908,927,'OP_WSServerHideMsg',347),(1264,908,927,'OP_CsCategoryRequestMsg',348),(1265,908,927,'OP_CsCategoryResponseMsg',349),(1266,908,927,'OP_KnowledgeWindowSlotMappingMsg',350),(1267,908,927,'OP_LFGUpdateMsg',351),(1268,908,927,'OP_AFKUpdateMsg',352),(1269,908,927,'OP_AnonUpdateMsg',353),(1270,908,927,'OP_UpdateActivePublicZonesMsg',354),(1271,908,927,'OP_UnknownNpcMsg',355),(1272,908,927,'OP_PromoFlagsDetailsMsg',356),(1273,908,927,'OP_ConsignViewCreateMsg',357),(1274,908,927,'OP_ConsignViewGetPageMsg',358),(1275,908,927,'OP_ConsignViewReleaseMsg',359),(1276,908,927,'OP_ConsignRemoveItemsMsg',360),(1277,908,927,'OP_UpdateDebugRadiiMsg',361),(1278,908,927,'OP_SnoopMsg',362),(1279,908,927,'OP_ReportMsg',363),(1280,908,927,'OP_UpdateRaidMsg',364),(1281,908,927,'OP_ConsignViewSortMsg',365),(1282,908,927,'OP_TitleUpdateMsg',366),(1283,908,927,'OP_ClientFellMsg',367),(1284,908,927,'OP_ClientInDeathRegionMsg',368),(1285,908,927,'OP_CampClientMsg',369),(1286,908,927,'OP_CSToolAccessResponseMsg',370),(1287,908,927,'OP_TrackingUpdateMsg',371),(1288,908,927,'OP_BeginTrackingMsg',372),(1289,908,927,'OP_StopTrackingMsg',373),(1290,908,927,'OP_GetAvatarAccessRequestForCSToo',374),(1291,908,927,'OP_AdvancementRequestMsg',375),(1292,908,927,'OP_UpdateAvgFrameTimeMsg',376),(1293,908,927,'OP_MapFogDataInitMsg',377),(1294,908,927,'OP_MapFogDataUpdateMsg',378),(1295,908,927,'OP_CloseGroupInviteWindowMsg',379),(1296,908,927,'OP_UpdateGroupMemberDataMsg',380),(1297,908,927,'OP_WorldPingMsg',381),(1298,908,927,'OP_MoveLogUpdateMsg',382),(1299,908,927,'OP_OfferQuestMsg',383),(1300,908,927,'OP_WorldShutdownUpdateMsg',384),(1301,908,927,'OP_DisplayMailScreenMsg',385),(1302,908,927,'OP_ClientIdleBeginMsg',386),(1303,908,927,'OP_ClientIdleEndMsg',387),(1304,908,927,'OP_PurchaseConsignmentLoreCheckRe',388),(1305,908,927,'OP_NotifyApprenticeStoppedMentori',389),(1306,908,927,'OP_CorruptedClientMsg',390),(1307,908,927,'OP_WorldDataChangeMsg',391),(1308,908,927,'OP_MailEventNotificationMsg',392),(1309,908,927,'OP_RestartZoneMsg',393),(1310,908,927,'OP_FlightPathsMsg',394),(1311,908,927,'OP_CharacterLinkdeadMsg',395),(1312,908,927,'OP_CharTransferStartRequestMsg',396),(1313,908,927,'OP_CharTransferStartReplyMsg',397),(1314,908,927,'OP_CharTransferRequestMsg',398),(1315,908,927,'OP_CharTransferReplyMsg',399),(1316,908,927,'OP_CharTransferRollbackRequestMsg',400),(1317,908,927,'OP_CharTransferCommitRequestMsg',401),(1318,908,927,'OP_CharTransferRollbackReplyMsg',402),(1319,908,927,'OP_CharTransferCommitReplyMsg',403),(1320,908,927,'OP_GetCharacterSerializedRequestM',404),(1321,908,927,'OP_GetCharacterSerializedReplyMsg',405),(1322,908,927,'OP_CreateCharFromCBBRequestMsg',406),(1323,908,927,'OP_CreateCharFromCBBReplyMsg',407),(1324,908,927,'OP_HousingDataChangedMsg',408),(1325,908,927,'OP_HousingRestoreMsg',409),(1326,908,927,'OP_AuctionItem',410),(1327,908,927,'OP_AuctionItemReply',411),(1328,908,927,'OP_AuctionCoin',412),(1329,908,927,'OP_AuctionCoinReply',413),(1330,908,927,'OP_AuctionCharacter',414),(1331,908,927,'OP_AuctionCharacterReply',415),(1332,908,927,'OP_AuctionCommitMsg',416),(1333,908,927,'OP_AuctionAbortMsg',417),(1334,908,927,'OP_CharTransferValidateRequestMsg',418),(1335,908,927,'OP_CharTransferValidateReplyMsg',419),(1336,908,927,'OP_RaceRestrictionMsg',420),(1337,908,927,'OP_SetInstanceDisplayNameMsg',421),(1338,908,927,'OP_GetAuctionAssetIDMsg',422),(1339,908,927,'OP_GetAuctionAssetIDReplyMsg',423),(1340,908,927,'OP_ResendWorldChannelsMsg',424),(1341,908,927,'OP_DisplayExchangeScreenMsg',425),(1342,908,927,'OP_ArenaGameTypesMsg',426),(1343,908,927,'OP_AuditAuctionEventMsg',428),(1344,908,927,'OP_InviteRequestMsg',430),(1345,908,927,'OP_InviteResponseMsg',431),(1346,908,927,'OP_InviteTargetResponseMsg',432),(1347,908,927,'OP_InspectPlayerRequestMsg',433),(1348,908,927,'OP_DispatchMsg',434),(1349,908,927,'OP_DisplayEventMsg',435),(1350,908,927,'OP_PrePossessionMsg',436),(1351,908,927,'OP_PostPossessionMsg',437),(1352,908,927,'OP_AdventureList',462),(1353,908,927,'OP_CancelSpellCast',463),(1354,908,927,'OP_UpdateTitleCmd',469),(1355,908,927,'OP_AttackAllowed',475),(1356,908,927,'OP_AttackNotAllowed',476),(1357,908,927,'OP_DressingRoom',482),(1358,908,927,'OP_SkillInfoRequest',486),(1359,908,927,'OP_SkillInfoResponse',487),(1360,908,927,'OP_BadLanguageFilter',490),(1361,908,927,'OP_MapRequest',492),(1362,908,927,'OP_EqUnknown',493),(1363,908,927,'OP_EqHearChatCmd',494),(1364,908,927,'OP_EqDisplayTextCmd',495),(1365,908,927,'OP_EqCreateGhostCmd',496),(1366,908,927,'OP_EqCreateWidgetCmd',497),(1367,908,927,'OP_EqCreateSignWidgetCmd',498),(1368,908,927,'OP_EqDestroyGhostCmd',499),(1369,908,927,'OP_EqUpdateGhostCmd',500),(1370,908,927,'OP_EqSetControlGhostCmd',501),(1371,908,927,'OP_EqSetPOVGhostCmd',502),(1372,908,927,'OP_EqHearCombatCmd',503),(1373,908,927,'OP_EqHearSpellCastCmd',504),(1374,908,927,'OP_EqHearSpellInterruptCmd',507),(1375,908,927,'OP_EqHearSpellFizzleCmd',508),(1376,908,927,'OP_EqHearConsiderCmd',509),(1377,908,927,'OP_EqUpdateSubClassesCmd',510),(1378,908,927,'OP_EqCreateListBoxCmd',511),(1379,908,927,'OP_EqSetDebugPathPointsCmd',512),(1380,908,927,'OP_EqCannedEmoteCmd',514),(1381,908,927,'OP_EqStateCmd',515),(1382,908,927,'OP_EqPlaySoundCmd',516),(1383,908,927,'OP_EqPlaySound3DCmd',517),(1384,908,927,'OP_EqPlayVoiceCmd',518),(1385,908,927,'OP_EqHearDrowningCmd',519),(1386,908,927,'OP_EqHearDeathCmd',520),(1387,908,927,'OP_EqGroupMemberRemovedCmd',521),(1388,908,927,'OP_EqHearChainEffectCmd',522),(1389,908,927,'OP_EqReceiveOfferCmd',523),(1390,908,927,'OP_EqInspectPCResultsCmd',524),(1391,908,927,'OP_EqDrawablePathGraphCmd',525),(1392,908,927,'OP_EqDialogOpenCmd',526),(1393,908,927,'OP_EqDialogCloseCmd',527),(1394,908,927,'OP_EqFactionUpdateCmd',528),(1395,908,927,'OP_EqCollectionUpdateCmd',529),(1396,908,927,'OP_EqCollectionFilterCmd',530),(1397,908,927,'OP_EqCollectionItemCmd',531),(1398,908,927,'OP_EqQuestJournalUpdateCmd',532),(1399,908,927,'OP_EqQuestJournalReplyCmd',534),(1400,908,927,'OP_EqQuestGroupCmd',535),(1401,908,927,'OP_EqUpdateMerchantCmd',536),(1402,908,927,'OP_EqUpdateStoreCmd',537),(1403,908,927,'OP_EqUpdatePlayerTradeCmd',538),(1404,908,927,'OP_EqHelpPathCmd',539),(1405,908,927,'OP_EqHelpPathClearCmd',540),(1406,908,927,'OP_EqUpdateBankCmd',541),(1407,908,927,'OP_EqExamineInfoCmd',542),(1408,908,927,'OP_EqCloseWindowCmd',543),(1409,908,927,'OP_EqUpdateLootCmd',544),(1410,908,927,'OP_EqJunctionListCmd',545),(1411,908,927,'OP_EqShowDeathWindowCmd',546),(1412,908,927,'OP_EqDisplaySpellFailCmd',547),(1413,908,927,'OP_EqSpellCastStartCmd',548),(1414,908,927,'OP_EqSpellCastEndCmd',549),(1415,908,927,'OP_EqResurrectedCmd',550),(1416,908,927,'OP_EqChoiceWinCmd',551),(1417,908,927,'OP_EqSetDefaultVerbCmd',552),(1418,908,927,'OP_EqInstructionWindowCmd',554),(1419,908,927,'OP_EqInstructionWindowCloseCmd',555),(1420,908,927,'OP_EqInstructionWindowGoalCmd',556),(1421,908,927,'OP_EqInstructionWindowTaskCmd',557),(1422,908,927,'OP_EqEnableGameEventCmd',558),(1423,908,927,'OP_EqShowWindowCmd',559),(1424,908,927,'OP_EqEnableWindowCmd',560),(1425,908,927,'OP_EqFlashWindowCmd',561),(1426,908,927,'OP_EqHearPlayFlavorCmd',562),(1427,908,927,'OP_EqUpdateSignWidgetCmd',564),(1428,908,927,'OP_EqDebugPVDCmd',565),(1429,908,927,'OP_EqShowBookCmd',566),(1430,908,927,'OP_EqQuestionnaireCmd',567),(1431,908,927,'OP_EqGetProbsCmd',568),(1432,908,927,'OP_EqHearHealCmd',569),(1433,908,927,'OP_EqChatChannelUpdateCmd',570),(1434,908,927,'OP_EqWhoChannelQueryReplyCmd',571),(1435,908,927,'OP_EqAvailWorldChannelsCmd',572),(1436,908,927,'OP_EqUpdateTargetCmd',573),(1437,908,927,'OP_EqConsignmentItemsCmd',575),(1438,908,927,'OP_EqStartBrokerCmd',577),(1439,908,927,'OP_EqMapExplorationCmd',578),(1440,908,927,'OP_EqStoreLogCmd',579),(1441,908,927,'OP_EqSpellMoveToRangeAndRetryCmd',580),(1442,908,927,'OP_EqUpdatePlayerMailCmd',581),(1443,908,927,'OP_EqArenaResultsCmd',582),(1444,908,927,'OP_EqGuildBankEventActionCmd',583),(1445,908,927,'OP_EqGuildBankExamineInfoCmd',584),(1446,908,927,'OP_EqHearSpellNoLandCmd',585),(1447,908,927,'OP_Lottery',589),(1448,908,927,'OP_GuildRecruitingMemberInfo',590),(1449,908,927,'OP_GuildRecruiting',591),(1450,908,927,'OP_GuildRecruitingDetails',592),(1451,908,927,'OP_GuildRecruitingImage',593),(1452,908,927,'OP_PointOfInterest',614),(1453,908,927,'OP_TraitsList',616),(1454,908,927,'OP_RecipeList',625),(1455,908,927,'OP_CharacterAchievements',655),(1456,908,927,'OP_AddClientToGroupMsg',1010),(1457,908,927,'OP_AddGroupToGroupMsg',1010),(1458,908,927,'OP_GuildKickMsg',1010),(1459,908,927,'OP_ProcessScriptMsg',1010),(1460,908,927,'OP_ProcessWorkspaceMsg',1010),(1461,908,927,'OP_PurchaseConsignmentResponseMsg',1010),(1462,908,927,'OP_QuickbarAddMsg',1010),(1463,908,927,'OP_SkillSlotMapping',1010),(1464,908,927,'OP_Unknown',10014),(1465,908,927,'OP_WSWeatherUpdateMsg',10015),(1466,1008,1011,'OP_LoginRequestMsg',0),(1467,1008,1011,'OP_LoginByNumRequestMsg',1),(1468,1008,1011,'OP_WSLoginRequestMsg',2),(1469,1008,1011,'OP_ESLoginRequestMsg',3),(1470,1008,1011,'OP_LoginReplyMsg',4),(1471,1008,1011,'OP_WSStatusReplyMsg',5),(1472,1008,1011,'OP_WorldStatusChangeMsg',6),(1473,1008,1011,'OP_AllWSDescRequestMsg',7),(1474,1008,1011,'OP_WorldListMsg',8),(1475,1008,1011,'OP_AllCharactersDescRequestMsg',9),(1476,1008,1011,'OP_AllCharactersDescReplyMsg',10),(1477,1008,1011,'OP_CreateCharacterRequestMsg',11),(1478,1008,1011,'OP_CreateCharacterReplyMsg',12),(1479,1008,1011,'OP_WSCreateCharacterRequestMsg',13),(1480,1008,1011,'OP_WSCreateCharacterReplyMsg',14),(1481,1008,1011,'OP_ReskinCharacterRequestMsg',15),(1482,1008,1011,'OP_DeleteCharacterRequestMsg',16),(1483,1008,1011,'OP_DeleteCharacterReplyMsg',17),(1484,1008,1011,'OP_PlayCharacterRequestMsg',18),(1485,1008,1011,'OP_PlayCharacterReplyMsg',19),(1486,1008,1011,'OP_ExpectClientAsCharacterReplyMs',22),(1487,1008,1011,'OP_ServerPlayCharacterRequestMsg',23),(1488,1008,1011,'OP_ServerPlayCharacterReplyMsg',24),(1489,1008,1011,'OP_ESInitMsg',25),(1490,1008,1011,'OP_ESReadyForClientsMsg',26),(1491,1008,1011,'OP_CreateZoneInstanceMsg',27),(1492,1008,1011,'OP_ZoneInstanceCreateReplyMsg',28),(1493,1008,1011,'OP_ZoneInstanceDestroyedMsg',29),(1494,1008,1011,'OP_ExpectClientAsCharacterRequest',30),(1495,1008,1011,'OP_ZoneInfoMsg',31),(1496,1008,1011,'OP_DoneLoadingZoneResourcesMsg',32),(1497,1008,1011,'OP_DoneSendingInitialEntitiesMsg',33),(1498,1008,1011,'OP_DoneLoadingEntityResourcesMsg',34),(1499,1008,1011,'OP_PredictionUpdateMsg',35),(1500,1008,1011,'OP_UpdatePositionMsg',37),(1501,1008,1011,'OP_SetRemoteCmdsMsg',39),(1502,1008,1011,'OP_RemoteCmdMsg',40),(1503,1008,1011,'OP_GameWorldTimeMsg',41),(1504,1008,1011,'OP_MOTDMsg',42),(1505,1008,1011,'OP_ZoneMOTDMsg',43),(1506,1008,1011,'OP_AvatarCreatedMsg',44),(1507,1008,1011,'OP_AvatarDestroyedMsg',45),(1508,1008,1011,'OP_RequestCampMsg',47),(1509,1008,1011,'OP_CampStartedMsg',48),(1510,1008,1011,'OP_CampAbortedMsg',49),(1511,1008,1011,'OP_WhoQueryRequestMsg',50),(1512,1008,1011,'OP_WhoQueryReplyMsg',51),(1513,1008,1011,'OP_MonitorReplyMsg',52),(1514,1008,1011,'OP_MonitorCharacterListMsg',53),(1515,1008,1011,'OP_MonitorCharacterListRequestMsg',54),(1516,1008,1011,'OP_ClientCmdMsg',55),(1517,1008,1011,'OP_DispatchESMsg',56),(1518,1008,1011,'OP_DispatchClientCmdMsg',57),(1519,1008,1011,'OP_UpdateTargetMsg',58),(1520,1008,1011,'OP_UpdateTargetLocMsg',59),(1521,1008,1011,'OP_UpdateCharacterSheetMsg',60),(1522,1008,1011,'OP_UpdateSpellBookMsg',61),(1523,1008,1011,'OP_UpdateInventoryMsg',63),(1524,1008,1011,'OP_UpdateRecipeBookMsg',65),(1525,1008,1011,'OP_RequestRecipeDetailsMsg',66),(1526,1008,1011,'OP_RecipeDetailsMsg',67),(1527,1008,1011,'OP_UpdateSkillBookMsg',68),(1528,1008,1011,'OP_UpdateSkillsMsg',69),(1529,1008,1011,'OP_UpdateOpportunityMsg',70),(1530,1008,1011,'OP_ChangeZoneMsg',72),(1531,1008,1011,'OP_ClientTeleportRequestMsg',73),(1532,1008,1011,'OP_TeleportWithinZoneMsg',74),(1533,1008,1011,'OP_TeleportWithinZoneNoReloadMsg',75),(1534,1008,1011,'OP_MigrateClientToZoneRequestMsg',76),(1535,1008,1011,'OP_MigrateClientToZoneReplyMsg',77),(1536,1008,1011,'OP_ReadyToZoneMsg',78),(1537,1008,1011,'OP_RemoveClientFromGroupMsg',79),(1538,1008,1011,'OP_RemoveGroupFromGroupMsg',80),(1539,1008,1011,'OP_MakeGroupLeaderMsg',81),(1540,1008,1011,'OP_GroupCreatedMsg',82),(1541,1008,1011,'OP_GroupDestroyedMsg',83),(1542,1008,1011,'OP_GroupMemberAddedMsg',84),(1543,1008,1011,'OP_GroupMemberRemovedMsg',85),(1544,1008,1011,'OP_GroupRemovedFromGroupMsg',86),(1545,1008,1011,'OP_GroupLeaderChangedMsg',87),(1546,1008,1011,'OP_GroupResendOOZDataMsg',88),(1547,1008,1011,'OP_GroupSettingsChangedMsg',89),(1548,1008,1011,'OP_OutOfZoneMemberDataMsg',90),(1549,1008,1011,'OP_SendLatestRequestMsg',91),(1550,1008,1011,'OP_ClearDataMsg',92),(1551,1008,1011,'OP_SetSocialMsg',93),(1552,1008,1011,'OP_ESStatusMsg',94),(1553,1008,1011,'OP_ESZoneInstanceStatusMsg',95),(1554,1008,1011,'OP_ZonesStatusRequestMsg',96),(1555,1008,1011,'OP_ZonesStatusMsg',97),(1556,1008,1011,'OP_ESWeatherRequestMsg',98),(1557,1008,1011,'OP_ESWeatherRequestEndMsg',99),(1558,1008,1011,'OP_DialogSelectMsg',102),(1559,1008,1011,'OP_DialogCloseMsg',103),(1560,1008,1011,'OP_RemoveSpellEffectMsg',104),(1561,1008,1011,'OP_RemoveConcentrationMsg',105),(1562,1008,1011,'OP_QuestJournalOpenMsg',106),(1563,1008,1011,'OP_QuestJournalInspectMsg',107),(1564,1008,1011,'OP_QuestJournalSetVisibleMsg',108),(1565,1008,1011,'OP_QuestJournalWaypointMsg',109),(1566,1008,1011,'OP_CreateGuildRequestMsg',110),(1567,1008,1011,'OP_CreateGuildReplyMsg',111),(1568,1008,1011,'OP_GuildsayMsg',112),(1569,1008,1011,'OP_GuildUpdateMsg',115),(1570,1008,1011,'OP_DeleteGuildMsg',116),(1571,1008,1011,'OP_FellowshipExpMsg',117),(1572,1008,1011,'OP_ConsignmentCloseStoreMsg',118),(1573,1008,1011,'OP_ConsignItemRequestMsg',119),(1574,1008,1011,'OP_ConsignItemResponseMsg',120),(1575,1008,1011,'OP_PurchaseConsignmentRequestMsg',121),(1576,1008,1011,'OP_HouseDeletedRemotelyMsg',122),(1577,1008,1011,'OP_UpdateHouseDataMsg',123),(1578,1008,1011,'OP_UpdateHouseAccessDataMsg',124),(1579,1008,1011,'OP_PlayerHouseBaseScreenMsg',125),(1580,1008,1011,'OP_PlayerHousePurchaseScreenMsg',126),(1581,1008,1011,'OP_PlayerHouseAccessUpdateMsg',127),(1582,1008,1011,'OP_PlayerHouseDisplayStatusMsg',128),(1583,1008,1011,'OP_PlayerHouseCloseUIMsg',129),(1584,1008,1011,'OP_BuyPlayerHouseMsg',130),(1585,1008,1011,'OP_BuyPlayerHouseTintMsg',131),(1586,1008,1011,'OP_CollectAllHouseItemsMsg',132),(1587,1008,1011,'OP_RelinquishHouseMsg',133),(1588,1008,1011,'OP_EnterHouseMsg',134),(1589,1008,1011,'OP_ExitHouseMsg',135),(1590,1008,1011,'OP_HouseDefaultAccessSetMsg',136),(1591,1008,1011,'OP_HouseAccessSetMsg',137),(1592,1008,1011,'OP_HouseAccessRemoveMsg',138),(1593,1008,1011,'OP_PayHouseUpkeepMsg',139),(1594,1008,1011,'OP_MoveableObjectPlacementCriteri',141),(1595,1008,1011,'OP_EnterMoveObjectModeMsg',142),(1596,1008,1011,'OP_PositionMoveableObject',143),(1597,1008,1011,'OP_CancelMoveObjectModeMsg',144),(1598,1008,1011,'OP_ShaderCustomizationMsg',145),(1599,1008,1011,'OP_ReplaceableSubMeshesMsg',146),(1600,1008,1011,'OP_HouseCustomizationScreenMsg',147),(1601,1008,1011,'OP_CustomizationPurchaseRequestMs',148),(1602,1008,1011,'OP_CustomizationSetRequestMsg',149),(1603,1008,1011,'OP_CustomizationReplyMsg',150),(1604,1008,1011,'OP_TintWidgetsMsg',151),(1605,1008,1011,'OP_ExamineConsignmentRequestMsg',152),(1606,1008,1011,'OP_ExamineConsignmentResponseMsg',153),(1607,1008,1011,'OP_UISettingsResponseMsg',154),(1608,1008,1011,'OP_UIResetMsg',156),(1609,1008,1011,'OP_KeymapLoadMsg',157),(1610,1008,1011,'OP_KeymapNoneMsg',158),(1611,1008,1011,'OP_KeymapDataMsg',159),(1612,1008,1011,'OP_KeymapSaveMsg',160),(1613,1008,1011,'OP_DispatchSpellCmdMsg',161),(1614,1008,1011,'OP_EntityVerbsRequestMsg',163),(1615,1008,1011,'OP_EntityVerbsReplyMsg',164),(1616,1008,1011,'OP_EntityVerbsVerbMsg',165),(1617,1008,1011,'OP_ChatRelationshipUpdateMsg',167),(1618,1008,1011,'OP_LootItemsRequestMsg',168),(1619,1008,1011,'OP_StoppedLootingMsg',169),(1620,1008,1011,'OP_SitMsg',170),(1621,1008,1011,'OP_StandMsg',171),(1622,1008,1011,'OP_SatMsg',172),(1623,1008,1011,'OP_StoodMsg',173),(1624,1008,1011,'OP_ClearForTakeOffMsg',174),(1625,1008,1011,'OP_ReadyForTakeOffMsg',175),(1626,1008,1011,'OP_ShowIllusionsMsg',176),(1627,1008,1011,'OP_HideIllusionsMsg',177),(1628,1008,1011,'OP_ExamineItemRequestMsg',178),(1629,1008,1011,'OP_ReadBookPageMsg',179),(1630,1008,1011,'OP_DefaultGroupOptionsRequestMsg',180),(1631,1008,1011,'OP_DefaultGroupOptionsMsg',181),(1632,1008,1011,'OP_GroupOptionsMsg',182),(1633,1008,1011,'OP_DisplayGroupOptionsScreenMsg',183),(1634,1008,1011,'OP_DisplayInnVisitScreenMsg',184),(1635,1008,1011,'OP_DumpSchedulerMsg',185),(1636,1008,1011,'OP_LSRequestPlayerDescMsg',186),(1637,1008,1011,'OP_LSCheckAcctLockMsg',187),(1638,1008,1011,'OP_WSAcctLockStatusMsg',188),(1639,1008,1011,'OP_RequestHelpRepathMsg',189),(1640,1008,1011,'OP_RequestTargetLocMsg',190),(1641,1008,1011,'OP_UpdateMotdMsg',191),(1642,1008,1011,'OP_PerformPlayerKnockbackMsg',192),(1643,1008,1011,'OP_PerformCameraShakeMsg',193),(1644,1008,1011,'OP_PopulateSkillMapsMsg',196),(1645,1008,1011,'OP_CancelledFeignMsg',198),(1646,1008,1011,'OP_SignalMsg',199),(1647,1008,1011,'OP_ShowCreateFromRecipeUIMsg',200),(1648,1008,1011,'OP_CancelCreateFromRecipeMsg',201),(1649,1008,1011,'OP_BeginItemCreationMsg',202),(1650,1008,1011,'OP_StopItemCreationMsg',203),(1651,1008,1011,'OP_ShowItemCreationProcessUIMsg',204),(1652,1008,1011,'OP_UpdateItemCreationProcessUIMsg',205),(1653,1008,1011,'OP_DisplayTSEventReactionMsg',206),(1654,1008,1011,'OP_ShowRecipeBookMsg',207),(1655,1008,1011,'OP_KnowledgebaseRequestMsg',208),(1656,1008,1011,'OP_KnowledgebaseResponseMsg',209),(1657,1008,1011,'OP_CSTicketHeaderRequestMsg',210),(1658,1008,1011,'OP_CSTicketInfoMsg',211),(1659,1008,1011,'OP_CSTicketCommentRequestMsg',212),(1660,1008,1011,'OP_CSTicketCommentResponseMsg',213),(1661,1008,1011,'OP_CSTicketCreateMsg',214),(1662,1008,1011,'OP_CSTicketAddCommentMsg',215),(1663,1008,1011,'OP_CSTicketDeleteMsg',216),(1664,1008,1011,'OP_CSTicketChangeNotificationMsg',217),(1665,1008,1011,'OP_WorldDataUpdateMsg',218),(1666,1008,1011,'OP_KnownLanguagesMsg',219),(1667,1008,1011,'OP_LsRequestClientCrashLogMsg',220),(1668,1008,1011,'OP_LsClientBaselogReplyMsg',221),(1669,1008,1011,'OP_LsClientCrashlogReplyMsg',222),(1670,1008,1011,'OP_LsClientAlertlogReplyMsg',223),(1671,1008,1011,'OP_LsClientVerifylogReplyMsg',224),(1672,1008,1011,'OP_ClientTeleportToLocationMsg',225),(1673,1008,1011,'OP_UpdateClientPredFlagsMsg',226),(1674,1008,1011,'OP_ChangeServerControlFlagMsg',227),(1675,1008,1011,'OP_CSToolsRequestMsg',228),(1676,1008,1011,'OP_CSToolsResponseMsg',229),(1677,1008,1011,'OP_AddSocialStructureStandingMsg',230),(1678,1008,1011,'OP_CreateBoatTransportsMsg',231),(1679,1008,1011,'OP_PositionBoatTransportMsg',232),(1680,1008,1011,'OP_MigrateBoatTransportMsg',233),(1681,1008,1011,'OP_MigrateBoatTransportReplyMsg',234),(1682,1008,1011,'OP_DisplayDebugNLLPointsMsg',235),(1683,1008,1011,'OP_ExamineInfoRequestMsg',236),(1684,1008,1011,'OP_QuickbarInitMsg',237),(1685,1008,1011,'OP_QuickbarUpdateMsg',238),(1686,1008,1011,'OP_MacroInitMsg',239),(1687,1008,1011,'OP_MacroUpdateMsg',240),(1688,1008,1011,'OP_QuestionnaireMsg',241),(1689,1008,1011,'OP_LevelChangedMsg',242),(1690,1008,1011,'OP_SpellGainedMsg',243),(1691,1008,1011,'OP_EncounterBrokenMsg',244),(1692,1008,1011,'OP_OnscreenMsgMsg',245),(1693,1008,1011,'OP_DisplayWarningMsg',246),(1694,1008,1011,'OP_ModifyGuildMsg',247),(1695,1008,1011,'OP_GuildEventMsg',248),(1696,1008,1011,'OP_GuildEventAddMsg',249),(1697,1008,1011,'OP_GuildEventActionMsg',250),(1698,1008,1011,'OP_GuildEventListMsg',251),(1699,1008,1011,'OP_RequestGuildEventDetailsMsg',252),(1700,1008,1011,'OP_GuildEventDetailsMsg',253),(1701,1008,1011,'OP_RequestGuildInfoMsg',254),(1702,1008,1011,'OP_GuildBankActionMsg',255),(1703,1008,1011,'OP_GuildBankActionResponseMsg',256),(1704,1008,1011,'OP_GuildBankItemDetailsRequestMsg',257),(1705,1008,1011,'OP_GuildBankItemDetailsResponseMs',258),(1706,1008,1011,'OP_GuildBankUpdateMsg',259),(1707,1008,1011,'OP_GuildBankEventListMsg',260),(1708,1008,1011,'OP_RequestGuildBankEventDetailsMs',261),(1709,1008,1011,'OP_RewardPackMsg',262),(1710,1008,1011,'OP_RenameGuildMsg',263),(1711,1008,1011,'OP_ZoneToFriendRequestMsg',265),(1712,1008,1011,'OP_ZoneToFriendReplyMsg',266),(1713,1008,1011,'OP_ChatCreateChannelMsg',267),(1714,1008,1011,'OP_ChatJoinChannelMsg',268),(1715,1008,1011,'OP_ChatWhoChannelMsg',269),(1716,1008,1011,'OP_ChatLeaveChannelMsg',270),(1717,1008,1011,'OP_ChatTellChannelMsg',271),(1718,1008,1011,'OP_ChatTellUserMsg',272),(1719,1008,1011,'OP_ChatToggleFriendMsg',273),(1720,1008,1011,'OP_ChatToggleIgnoreMsg',274),(1721,1008,1011,'OP_ChatSendFriendsMsg',275),(1722,1008,1011,'OP_ChatSendIgnoresMsg',276),(1723,1008,1011,'OP_QuestReward',303),(1724,1008,1011,'OP_ChatFiltersMsg',318),(1725,1008,1011,'OP_MailGetHeadersMsg',319),(1726,1008,1011,'OP_MailGetMessageMsg',320),(1727,1008,1011,'OP_MailSendMessageMsg',321),(1728,1008,1011,'OP_MailDeleteMessageMsg',322),(1729,1008,1011,'OP_MailGetHeadersReplyMsg',323),(1730,1008,1011,'OP_MailGetMessageReplyMsg',324),(1731,1008,1011,'OP_MailSendMessageReplyMsg',325),(1732,1008,1011,'OP_MailCommitSendMessageMsg',326),(1733,1008,1011,'OP_MailSendSystemMessageMsg',327),(1734,1008,1011,'OP_MailRemoveAttachFromMailMsg',328),(1735,1008,1011,'OP_WaypointRequestMsg',330),(1736,1008,1011,'OP_WaypointReplyMsg',331),(1737,1008,1011,'OP_WaypointSelectMsg',332),(1738,1008,1011,'OP_WaypointUpdateMsg',333),(1739,1008,1011,'OP_CharNameChangedMsg',334),(1740,1008,1011,'OP_ShowZoneTeleporterDestinations',335),(1741,1008,1011,'OP_SelectZoneTeleporterDestinatio',336),(1742,1008,1011,'OP_ReloadLocalizedTxtMsg',337),(1743,1008,1011,'OP_RequestGuildMembershipMsg',338),(1744,1008,1011,'OP_GuildMembershipResponseMsg',339),(1745,1008,1011,'OP_LeaveGuildNotifyMsg',340),(1746,1008,1011,'OP_JoinGuildNotifyMsg',341),(1747,1008,1011,'OP_AvatarUpdateMsg',343),(1748,1008,1011,'OP_BioUpdateMsg',344),(1749,1008,1011,'OP_InspectPlayerMsg',345),(1750,1008,1011,'OP_WSServerLockMsg',346),(1751,1008,1011,'OP_LSServerLockMsg',347),(1752,1008,1011,'OP_WSServerHideMsg',348),(1753,1008,1011,'OP_CsCategoryRequestMsg',349),(1754,1008,1011,'OP_CsCategoryResponseMsg',350),(1755,1008,1011,'OP_KnowledgeWindowSlotMappingMsg',351),(1756,1008,1011,'OP_LFGUpdateMsg',352),(1757,1008,1011,'OP_AFKUpdateMsg',353),(1758,1008,1011,'OP_AnonUpdateMsg',354),(1759,1008,1011,'OP_UpdateActivePublicZonesMsg',355),(1760,1008,1011,'OP_UnknownNpcMsg',356),(1761,1008,1011,'OP_PromoFlagsDetailsMsg',357),(1762,1008,1011,'OP_ConsignViewCreateMsg',358),(1763,1008,1011,'OP_ConsignViewGetPageMsg',359),(1764,1008,1011,'OP_ConsignViewReleaseMsg',360),(1765,1008,1011,'OP_ConsignRemoveItemsMsg',361),(1766,1008,1011,'OP_UpdateDebugRadiiMsg',362),(1767,1008,1011,'OP_SnoopMsg',363),(1768,1008,1011,'OP_ReportMsg',364),(1769,1008,1011,'OP_UpdateRaidMsg',365),(1770,1008,1011,'OP_ConsignViewSortMsg',366),(1771,1008,1011,'OP_TitleUpdateMsg',367),(1772,1008,1011,'OP_ClientFellMsg',368),(1773,1008,1011,'OP_ClientInDeathRegionMsg',369),(1774,1008,1011,'OP_CampClientMsg',370),(1775,1008,1011,'OP_CSToolAccessResponseMsg',371),(1776,1008,1011,'OP_TrackingUpdateMsg',372),(1777,1008,1011,'OP_BeginTrackingMsg',373),(1778,1008,1011,'OP_StopTrackingMsg',374),(1779,1008,1011,'OP_GetAvatarAccessRequestForCSToo',375),(1780,1008,1011,'OP_AdvancementRequestMsg',376),(1781,1008,1011,'OP_UpdateAvgFrameTimeMsg',377),(1782,1008,1011,'OP_MapFogDataInitMsg',378),(1783,1008,1011,'OP_MapFogDataUpdateMsg',379),(1784,1008,1011,'OP_CloseGroupInviteWindowMsg',380),(1785,1008,1011,'OP_UpdateGroupMemberDataMsg',381),(1786,1008,1011,'OP_WorldPingMsg',382),(1787,1008,1011,'OP_MoveLogUpdateMsg',383),(1788,1008,1011,'OP_OfferQuestMsg',384),(1789,1008,1011,'OP_WorldShutdownUpdateMsg',385),(1790,1008,1011,'OP_DisplayMailScreenMsg',386),(1791,1008,1011,'OP_ClientIdleBeginMsg',387),(1792,1008,1011,'OP_ClientIdleEndMsg',388),(1793,1008,1011,'OP_PurchaseConsignmentLoreCheckRe',389),(1794,1008,1011,'OP_NotifyApprenticeStoppedMentori',390),(1795,1008,1011,'OP_CorruptedClientMsg',391),(1796,1008,1011,'OP_WorldDataChangeMsg',392),(1797,1008,1011,'OP_MailEventNotificationMsg',393),(1798,1008,1011,'OP_RestartZoneMsg',394),(1799,1008,1011,'OP_FlightPathsMsg',395),(1800,1008,1011,'OP_CharacterLinkdeadMsg',396),(1801,1008,1011,'OP_CharTransferStartRequestMsg',397),(1802,1008,1011,'OP_CharTransferStartReplyMsg',398),(1803,1008,1011,'OP_CharTransferRequestMsg',399),(1804,1008,1011,'OP_CharTransferReplyMsg',400),(1805,1008,1011,'OP_CharTransferRollbackRequestMsg',401),(1806,1008,1011,'OP_CharTransferCommitRequestMsg',402),(1807,1008,1011,'OP_CharTransferRollbackReplyMsg',403),(1808,1008,1011,'OP_CharTransferCommitReplyMsg',404),(1809,1008,1011,'OP_GetCharacterSerializedRequestM',405),(1810,1008,1011,'OP_GetCharacterSerializedReplyMsg',406),(1811,1008,1011,'OP_CreateCharFromCBBRequestMsg',407),(1812,1008,1011,'OP_CreateCharFromCBBReplyMsg',408),(1813,1008,1011,'OP_HousingDataChangedMsg',409),(1814,1008,1011,'OP_HousingRestoreMsg',410),(1815,1008,1011,'OP_AuctionItem',411),(1816,1008,1011,'OP_AuctionItemReply',412),(1817,1008,1011,'OP_AuctionCoin',413),(1818,1008,1011,'OP_AuctionCoinReply',414),(1819,1008,1011,'OP_AuctionCharacter',415),(1820,1008,1011,'OP_AuctionCharacterReply',416),(1821,1008,1011,'OP_AuctionCommitMsg',417),(1822,1008,1011,'OP_AuctionAbortMsg',418),(1823,1008,1011,'OP_CharTransferValidateRequestMsg',419),(1824,1008,1011,'OP_CharTransferValidateReplyMsg',420),(1825,1008,1011,'OP_RaceRestrictionMsg',421),(1826,1008,1011,'OP_SetInstanceDisplayNameMsg',422),(1827,1008,1011,'OP_GetAuctionAssetIDMsg',423),(1828,1008,1011,'OP_GetAuctionAssetIDReplyMsg',424),(1829,1008,1011,'OP_ResendWorldChannelsMsg',425),(1830,1008,1011,'OP_DisplayExchangeScreenMsg',426),(1831,1008,1011,'OP_ArenaGameTypesMsg',427),(1832,1008,1011,'OP_AuditAuctionEventMsg',429),(1833,1008,1011,'OP_InviteRequestMsg',431),(1834,1008,1011,'OP_InviteResponseMsg',432),(1835,1008,1011,'OP_InviteTargetResponseMsg',433),(1836,1008,1011,'OP_InspectPlayerRequestMsg',434),(1837,1008,1011,'OP_DispatchMsg',435),(1838,1008,1011,'OP_DisplayEventMsg',436),(1839,1008,1011,'OP_PrePossessionMsg',437),(1840,1008,1011,'OP_PostPossessionMsg',438),(1841,1008,1011,'OP_AdventureList',464),(1842,1008,1011,'OP_CancelSpellCast',465),(1843,1008,1011,'OP_UpdateTitleCmd',471),(1844,1008,1011,'OP_AttackAllowed',477),(1845,1008,1011,'OP_AttackNotAllowed',478),(1846,1008,1011,'OP_DressingRoom',485),(1847,1008,1011,'OP_SkillInfoRequest',489),(1848,1008,1011,'OP_SkillInfoResponse',490),(1849,1008,1011,'OP_BadLanguageFilter',494),(1850,1008,1011,'OP_MapRequest',495),(1851,1008,1011,'OP_EqUnknown',520),(1852,1008,1011,'OP_EqHearChatCmd',522),(1853,1008,1011,'OP_EqDisplayTextCmd',523),(1854,1008,1011,'OP_EqCreateGhostCmd',524),(1855,1008,1011,'OP_EqCreateWidgetCmd',525),(1856,1008,1011,'OP_EqCreateSignWidgetCmd',526),(1857,1008,1011,'OP_EqDestroyGhostCmd',527),(1858,1008,1011,'OP_EqUpdateGhostCmd',528),(1859,1008,1011,'OP_EqSetControlGhostCmd',529),(1860,1008,1011,'OP_EqSetPOVGhostCmd',530),(1861,1008,1011,'OP_EqHearCombatCmd',531),(1862,1008,1011,'OP_EqHearSpellCastCmd',532),(1863,1008,1011,'OP_EqHearSpellInterruptCmd',535),(1864,1008,1011,'OP_EqHearSpellFizzleCmd',536),(1865,1008,1011,'OP_EqHearConsiderCmd',537),(1866,1008,1011,'OP_EqUpdateSubClassesCmd',538),(1867,1008,1011,'OP_EqCreateListBoxCmd',539),(1868,1008,1011,'OP_EqSetDebugPathPointsCmd',540),(1869,1008,1011,'OP_EqCannedEmoteCmd',542),(1870,1008,1011,'OP_EqStateCmd',543),(1871,1008,1011,'OP_EqPlaySoundCmd',544),(1872,1008,1011,'OP_EqPlaySound3DCmd',545),(1873,1008,1011,'OP_EqPlayVoiceCmd',546),(1874,1008,1011,'OP_EqHearDrowningCmd',547),(1875,1008,1011,'OP_EqHearDeathCmd',548),(1876,1008,1011,'OP_EqGroupMemberRemovedCmd',549),(1877,1008,1011,'OP_EqHearChainEffectCmd',550),(1878,1008,1011,'OP_EqReceiveOfferCmd',551),(1879,1008,1011,'OP_EqInspectPCResultsCmd',552),(1880,1008,1011,'OP_EqDrawablePathGraphCmd',553),(1881,1008,1011,'OP_EqDialogOpenCmd',554),(1882,1008,1011,'OP_EqDialogCloseCmd',555),(1883,1008,1011,'OP_EqFactionUpdateCmd',556),(1884,1008,1011,'OP_EqCollectionUpdateCmd',557),(1885,1008,1011,'OP_EqCollectionFilterCmd',558),(1886,1008,1011,'OP_EqCollectionItemCmd',559),(1887,1008,1011,'OP_EqQuestJournalUpdateCmd',560),(1888,1008,1011,'OP_EqQuestJournalReplyCmd',562),(1889,1008,1011,'OP_EqQuestGroupCmd',563),(1890,1008,1011,'OP_EqUpdateMerchantCmd',564),(1891,1008,1011,'OP_EqUpdateStoreCmd',565),(1892,1008,1011,'OP_EqUpdatePlayerTradeCmd',566),(1893,1008,1011,'OP_EqHelpPathCmd',567),(1894,1008,1011,'OP_EqHelpPathClearCmd',568),(1895,1008,1011,'OP_EqUpdateBankCmd',569),(1896,1008,1011,'OP_EqExamineInfoCmd',570),(1897,1008,1011,'OP_EqCloseWindowCmd',571),(1898,1008,1011,'OP_EqUpdateLootCmd',572),(1899,1008,1011,'OP_EqJunctionListCmd',573),(1900,1008,1011,'OP_EqShowDeathWindowCmd',574),(1901,1008,1011,'OP_EqDisplaySpellFailCmd',575),(1902,1008,1011,'OP_EqSpellCastStartCmd',576),(1903,1008,1011,'OP_EqSpellCastEndCmd',577),(1904,1008,1011,'OP_EqResurrectedCmd',578),(1905,1008,1011,'OP_EqChoiceWinCmd',579),(1906,1008,1011,'OP_EqSetDefaultVerbCmd',580),(1907,1008,1011,'OP_EqInstructionWindowCmd',582),(1908,1008,1011,'OP_EqInstructionWindowCloseCmd',583),(1909,1008,1011,'OP_EqInstructionWindowGoalCmd',584),(1910,1008,1011,'OP_EqInstructionWindowTaskCmd',585),(1911,1008,1011,'OP_EqEnableGameEventCmd',586),(1912,1008,1011,'OP_EqShowWindowCmd',587),(1913,1008,1011,'OP_EqEnableWindowCmd',588),(1914,1008,1011,'OP_EqFlashWindowCmd',589),(1915,1008,1011,'OP_EqHearPlayFlavorCmd',590),(1916,1008,1011,'OP_EqUpdateSignWidgetCmd',592),(1917,1008,1011,'OP_EqDebugPVDCmd',593),(1918,1008,1011,'OP_EqShowBookCmd',594),(1919,1008,1011,'OP_EqQuestionnaireCmd',595),(1920,1008,1011,'OP_EqGetProbsCmd',596),(1921,1008,1011,'OP_EqHearHealCmd',597),(1922,1008,1011,'OP_EqChatChannelUpdateCmd',598),(1923,1008,1011,'OP_EqWhoChannelQueryReplyCmd',599),(1924,1008,1011,'OP_EqAvailWorldChannelsCmd',600),(1925,1008,1011,'OP_EqUpdateTargetCmd',601),(1926,1008,1011,'OP_EqConsignmentItemsCmd',603),(1927,1008,1011,'OP_EqStartBrokerCmd',605),(1928,1008,1011,'OP_EqMapExplorationCmd',606),(1929,1008,1011,'OP_EqStoreLogCmd',607),(1930,1008,1011,'OP_EqSpellMoveToRangeAndRetryCmd',608),(1931,1008,1011,'OP_EqUpdatePlayerMailCmd',609),(1932,1008,1011,'OP_EqArenaResultsCmd',610),(1933,1008,1011,'OP_EqGuildBankEventActionCmd',611),(1934,1008,1011,'OP_EqGuildBankExamineInfoCmd',612),(1935,1008,1011,'OP_EqHearSpellNoLandCmd',613),(1936,1008,1011,'OP_Lottery',617),(1937,1008,1011,'OP_GuildRecruitingMemberInfo',618),(1938,1008,1011,'OP_GuildRecruiting',619),(1939,1008,1011,'OP_GuildRecruitingDetails',620),(1940,1008,1011,'OP_GuildRecruitingImage',621),(1941,1008,1011,'OP_PointOfInterest',642),(1942,1008,1011,'OP_TraitsList',644),(1943,1008,1011,'OP_RecipeList',653),(1944,1008,1011,'OP_CharacterAchievements',655),(1945,1008,1011,'OP_AddClientToGroupMsg',1041),(1946,1008,1011,'OP_AddGroupToGroupMsg',1041),(1947,1008,1011,'OP_GuildKickMsg',1041),(1948,1008,1011,'OP_ProcessScriptMsg',1041),(1949,1008,1011,'OP_ProcessWorkspaceMsg',1041),(1950,1008,1011,'OP_PurchaseConsignmentResponseMsg',1041),(1951,1008,1011,'OP_QuickbarAddMsg',1041),(1952,1008,1011,'OP_SkillSlotMapping',1041),(1953,1008,1011,'OP_Unknown',10045),(1954,1008,1011,'OP_WSWeatherUpdateMsg',10046),(1955,1045,1046,'OP_LoginRequestMsg',0),(1956,1045,1046,'OP_LoginByNumRequestMsg',1),(1957,1045,1046,'OP_WSLoginRequestMsg',2),(1958,1045,1046,'OP_ESLoginRequestMsg',3),(1959,1045,1046,'OP_LoginReplyMsg',4),(1960,1045,1046,'OP_WSStatusReplyMsg',5),(1961,1045,1046,'OP_WorldStatusChangeMsg',6),(1962,1045,1046,'OP_AllWSDescRequestMsg',7),(1963,1045,1046,'OP_WorldListMsg',8),(1964,1045,1046,'OP_AllCharactersDescRequestMsg',9),(1965,1045,1046,'OP_AllCharactersDescReplyMsg',10),(1966,1045,1046,'OP_CreateCharacterRequestMsg',11),(1967,1045,1046,'OP_CreateCharacterReplyMsg',12),(1968,1045,1046,'OP_WSCreateCharacterRequestMsg',13),(1969,1045,1046,'OP_WSCreateCharacterReplyMsg',14),(1970,1045,1046,'OP_ReskinCharacterRequestMsg',15),(1971,1045,1046,'OP_DeleteCharacterRequestMsg',16),(1972,1045,1046,'OP_DeleteCharacterReplyMsg',17),(1973,1045,1046,'OP_PlayCharacterRequestMsg',18),(1974,1045,1046,'OP_PlayCharacterReplyMsg',19),(1975,1045,1046,'OP_ExpectClientAsCharacterReplyMs',22),(1976,1045,1046,'OP_ServerPlayCharacterRequestMsg',23),(1977,1045,1046,'OP_ServerPlayCharacterReplyMsg',24),(1978,1045,1046,'OP_ESInitMsg',25),(1979,1045,1046,'OP_ESReadyForClientsMsg',26),(1980,1045,1046,'OP_CreateZoneInstanceMsg',27),(1981,1045,1046,'OP_ZoneInstanceCreateReplyMsg',28),(1982,1045,1046,'OP_ZoneInstanceDestroyedMsg',29),(1983,1045,1046,'OP_ExpectClientAsCharacterRequest',30),(1984,1045,1046,'OP_ZoneInfoMsg',31),(1985,1045,1046,'OP_DoneLoadingZoneResourcesMsg',32),(1986,1045,1046,'OP_DoneSendingInitialEntitiesMsg',33),(1987,1045,1046,'OP_DoneLoadingEntityResourcesMsg',34),(1988,1045,1046,'OP_PredictionUpdateMsg',35),(1989,1045,1046,'OP_UpdatePositionMsg',37),(1990,1045,1046,'OP_SetRemoteCmdsMsg',39),(1991,1045,1046,'OP_RemoteCmdMsg',40),(1992,1045,1046,'OP_GameWorldTimeMsg',41),(1993,1045,1046,'OP_MOTDMsg',42),(1994,1045,1046,'OP_ZoneMOTDMsg',43),(1995,1045,1046,'OP_AvatarCreatedMsg',44),(1996,1045,1046,'OP_AvatarDestroyedMsg',45),(1997,1045,1046,'OP_RequestCampMsg',47),(1998,1045,1046,'OP_CampStartedMsg',48),(1999,1045,1046,'OP_CampAbortedMsg',49),(2000,1045,1046,'OP_WhoQueryRequestMsg',50),(2001,1045,1046,'OP_WhoQueryReplyMsg',51),(2002,1045,1046,'OP_MonitorReplyMsg',52),(2003,1045,1046,'OP_MonitorCharacterListMsg',53),(2004,1045,1046,'OP_MonitorCharacterListRequestMsg',54),(2005,1045,1046,'OP_ClientCmdMsg',55),(2006,1045,1046,'OP_DispatchESMsg',56),(2007,1045,1046,'OP_DispatchClientCmdMsg',57),(2008,1045,1046,'OP_UpdateTargetMsg',58),(2009,1045,1046,'OP_UpdateTargetLocMsg',59),(2010,1045,1046,'OP_UpdateCharacterSheetMsg',60),(2011,1045,1046,'OP_UpdateSpellBookMsg',61),(2012,1045,1046,'OP_UpdateInventoryMsg',63),(2013,1045,1046,'OP_UpdateRecipeBookMsg',65),(2014,1045,1046,'OP_RequestRecipeDetailsMsg',66),(2015,1045,1046,'OP_RecipeDetailsMsg',67),(2016,1045,1046,'OP_UpdateSkillBookMsg',68),(2017,1045,1046,'OP_UpdateSkillsMsg',69),(2018,1045,1046,'OP_UpdateOpportunityMsg',70),(2019,1045,1046,'OP_ChangeZoneMsg',72),(2020,1045,1046,'OP_ClientTeleportRequestMsg',73),(2021,1045,1046,'OP_TeleportWithinZoneMsg',74),(2022,1045,1046,'OP_TeleportWithinZoneNoReloadMsg',75),(2023,1045,1046,'OP_MigrateClientToZoneRequestMsg',76),(2024,1045,1046,'OP_MigrateClientToZoneReplyMsg',77),(2025,1045,1046,'OP_ReadyToZoneMsg',78),(2026,1045,1046,'OP_RemoveClientFromGroupMsg',79),(2027,1045,1046,'OP_RemoveGroupFromGroupMsg',80),(2028,1045,1046,'OP_MakeGroupLeaderMsg',81),(2029,1045,1046,'OP_GroupCreatedMsg',82),(2030,1045,1046,'OP_GroupDestroyedMsg',83),(2031,1045,1046,'OP_GroupMemberAddedMsg',84),(2032,1045,1046,'OP_GroupMemberRemovedMsg',85),(2033,1045,1046,'OP_GroupRemovedFromGroupMsg',86),(2034,1045,1046,'OP_GroupLeaderChangedMsg',87),(2035,1045,1046,'OP_GroupResendOOZDataMsg',88),(2036,1045,1046,'OP_GroupSettingsChangedMsg',89),(2037,1045,1046,'OP_OutOfZoneMemberDataMsg',90),(2038,1045,1046,'OP_SendLatestRequestMsg',91),(2039,1045,1046,'OP_ClearDataMsg',92),(2040,1045,1046,'OP_SetSocialMsg',93),(2041,1045,1046,'OP_ESStatusMsg',94),(2042,1045,1046,'OP_ESZoneInstanceStatusMsg',95),(2043,1045,1046,'OP_ZonesStatusRequestMsg',96),(2044,1045,1046,'OP_ZonesStatusMsg',97),(2045,1045,1046,'OP_ESWeatherRequestMsg',98),(2046,1045,1046,'OP_ESWeatherRequestEndMsg',99),(2047,1045,1046,'OP_DialogSelectMsg',102),(2048,1045,1046,'OP_DialogCloseMsg',103),(2049,1045,1046,'OP_RemoveSpellEffectMsg',104),(2050,1045,1046,'OP_RemoveConcentrationMsg',105),(2051,1045,1046,'OP_QuestJournalOpenMsg',106),(2052,1045,1046,'OP_QuestJournalInspectMsg',107),(2053,1045,1046,'OP_QuestJournalSetVisibleMsg',108),(2054,1045,1046,'OP_QuestJournalWaypointMsg',109),(2055,1045,1046,'OP_CreateGuildRequestMsg',110),(2056,1045,1046,'OP_CreateGuildReplyMsg',111),(2057,1045,1046,'OP_GuildsayMsg',112),(2058,1045,1046,'OP_GuildUpdateMsg',119),(2059,1045,1046,'OP_DeleteGuildMsg',120),(2060,1045,1046,'OP_FellowshipExpMsg',121),(2061,1045,1046,'OP_ConsignmentCloseStoreMsg',122),(2062,1045,1046,'OP_ConsignItemRequestMsg',123),(2063,1045,1046,'OP_ConsignItemResponseMsg',124),(2064,1045,1046,'OP_PurchaseConsignmentRequestMsg',125),(2065,1045,1046,'OP_HouseDeletedRemotelyMsg',126),(2066,1045,1046,'OP_UpdateHouseDataMsg',127),(2067,1045,1046,'OP_UpdateHouseAccessDataMsg',128),(2068,1045,1046,'OP_PlayerHouseBaseScreenMsg',129),(2069,1045,1046,'OP_PlayerHousePurchaseScreenMsg',130),(2070,1045,1046,'OP_PlayerHouseAccessUpdateMsg',131),(2071,1045,1046,'OP_PlayerHouseDisplayStatusMsg',132),(2072,1045,1046,'OP_PlayerHouseCloseUIMsg',133),(2073,1045,1046,'OP_BuyPlayerHouseMsg',134),(2074,1045,1046,'OP_BuyPlayerHouseTintMsg',135),(2075,1045,1046,'OP_CollectAllHouseItemsMsg',136),(2076,1045,1046,'OP_RelinquishHouseMsg',137),(2077,1045,1046,'OP_EnterHouseMsg',138),(2078,1045,1046,'OP_ExitHouseMsg',139),(2079,1045,1046,'OP_HouseDefaultAccessSetMsg',140),(2080,1045,1046,'OP_HouseAccessSetMsg',141),(2081,1045,1046,'OP_HouseAccessRemoveMsg',142),(2082,1045,1046,'OP_PayHouseUpkeepMsg',143),(2083,1045,1046,'OP_MoveableObjectPlacementCriteri',145),(2084,1045,1046,'OP_EnterMoveObjectModeMsg',146),(2085,1045,1046,'OP_PositionMoveableObject',147),(2086,1045,1046,'OP_CancelMoveObjectModeMsg',148),(2087,1045,1046,'OP_ShaderCustomizationMsg',149),(2088,1045,1046,'OP_ReplaceableSubMeshesMsg',150),(2089,1045,1046,'OP_HouseCustomizationScreenMsg',151),(2090,1045,1046,'OP_CustomizationPurchaseRequestMs',152),(2091,1045,1046,'OP_CustomizationSetRequestMsg',153),(2092,1045,1046,'OP_CustomizationReplyMsg',154),(2093,1045,1046,'OP_TintWidgetsMsg',155),(2094,1045,1046,'OP_ExamineConsignmentRequestMsg',156),(2095,1045,1046,'OP_ExamineConsignmentResponseMsg',157),(2096,1045,1046,'OP_UISettingsResponseMsg',158),(2097,1045,1046,'OP_UIResetMsg',160),(2098,1045,1046,'OP_KeymapLoadMsg',161),(2099,1045,1046,'OP_KeymapNoneMsg',162),(2100,1045,1046,'OP_KeymapDataMsg',163),(2101,1045,1046,'OP_KeymapSaveMsg',164),(2102,1045,1046,'OP_DispatchSpellCmdMsg',165),(2103,1045,1046,'OP_EntityVerbsRequestMsg',167),(2104,1045,1046,'OP_EntityVerbsReplyMsg',168),(2105,1045,1046,'OP_EntityVerbsVerbMsg',169),(2106,1045,1046,'OP_ChatRelationshipUpdateMsg',171),(2107,1045,1046,'OP_LootItemsRequestMsg',172),(2108,1045,1046,'OP_StoppedLootingMsg',173),(2109,1045,1046,'OP_SitMsg',174),(2110,1045,1046,'OP_StandMsg',175),(2111,1045,1046,'OP_SatMsg',176),(2112,1045,1046,'OP_StoodMsg',177),(2113,1045,1046,'OP_ClearForTakeOffMsg',178),(2114,1045,1046,'OP_ReadyForTakeOffMsg',179),(2115,1045,1046,'OP_ShowIllusionsMsg',180),(2116,1045,1046,'OP_HideIllusionsMsg',181),(2117,1045,1046,'OP_ExamineItemRequestMsg',182),(2118,1045,1046,'OP_ReadBookPageMsg',183),(2119,1045,1046,'OP_DefaultGroupOptionsRequestMsg',184),(2120,1045,1046,'OP_DefaultGroupOptionsMsg',185),(2121,1045,1046,'OP_GroupOptionsMsg',186),(2122,1045,1046,'OP_DisplayGroupOptionsScreenMsg',187),(2123,1045,1046,'OP_DisplayInnVisitScreenMsg',188),(2124,1045,1046,'OP_DumpSchedulerMsg',189),(2125,1045,1046,'OP_LSRequestPlayerDescMsg',190),(2126,1045,1046,'OP_LSCheckAcctLockMsg',191),(2127,1045,1046,'OP_WSAcctLockStatusMsg',192),(2128,1045,1046,'OP_RequestHelpRepathMsg',193),(2129,1045,1046,'OP_RequestTargetLocMsg',194),(2130,1045,1046,'OP_UpdateMotdMsg',195),(2131,1045,1046,'OP_PerformPlayerKnockbackMsg',196),(2132,1045,1046,'OP_PerformCameraShakeMsg',197),(2133,1045,1046,'OP_PopulateSkillMapsMsg',200),(2134,1045,1046,'OP_CancelledFeignMsg',202),(2135,1045,1046,'OP_SignalMsg',203),(2136,1045,1046,'OP_ShowCreateFromRecipeUIMsg',204),(2137,1045,1046,'OP_CancelCreateFromRecipeMsg',205),(2138,1045,1046,'OP_BeginItemCreationMsg',206),(2139,1045,1046,'OP_StopItemCreationMsg',207),(2140,1045,1046,'OP_ShowItemCreationProcessUIMsg',208),(2141,1045,1046,'OP_UpdateItemCreationProcessUIMsg',209),(2142,1045,1046,'OP_DisplayTSEventReactionMsg',210),(2143,1045,1046,'OP_ShowRecipeBookMsg',211),(2144,1045,1046,'OP_KnowledgebaseRequestMsg',212),(2145,1045,1046,'OP_KnowledgebaseResponseMsg',213),(2146,1045,1046,'OP_CSTicketHeaderRequestMsg',214),(2147,1045,1046,'OP_CSTicketInfoMsg',215),(2148,1045,1046,'OP_CSTicketCommentRequestMsg',216),(2149,1045,1046,'OP_CSTicketCommentResponseMsg',217),(2150,1045,1046,'OP_CSTicketCreateMsg',218),(2151,1045,1046,'OP_CSTicketAddCommentMsg',219),(2152,1045,1046,'OP_CSTicketDeleteMsg',220),(2153,1045,1046,'OP_CSTicketChangeNotificationMsg',221),(2154,1045,1046,'OP_WorldDataUpdateMsg',222),(2155,1045,1046,'OP_KnownLanguagesMsg',223),(2156,1045,1046,'OP_LsRequestClientCrashLogMsg',224),(2157,1045,1046,'OP_LsClientBaselogReplyMsg',225),(2158,1045,1046,'OP_LsClientCrashlogReplyMsg',226),(2159,1045,1046,'OP_LsClientAlertlogReplyMsg',227),(2160,1045,1046,'OP_LsClientVerifylogReplyMsg',228),(2161,1045,1046,'OP_ClientTeleportToLocationMsg',229),(2162,1045,1046,'OP_UpdateClientPredFlagsMsg',230),(2163,1045,1046,'OP_ChangeServerControlFlagMsg',231),(2164,1045,1046,'OP_CSToolsRequestMsg',232),(2165,1045,1046,'OP_CSToolsResponseMsg',233),(2166,1045,1046,'OP_AddSocialStructureStandingMsg',234),(2167,1045,1046,'OP_CreateBoatTransportsMsg',235),(2168,1045,1046,'OP_PositionBoatTransportMsg',236),(2169,1045,1046,'OP_MigrateBoatTransportMsg',237),(2170,1045,1046,'OP_MigrateBoatTransportReplyMsg',238),(2171,1045,1046,'OP_DisplayDebugNLLPointsMsg',239),(2172,1045,1046,'OP_ExamineInfoRequestMsg',240),(2173,1045,1046,'OP_QuickbarInitMsg',241),(2174,1045,1046,'OP_QuickbarUpdateMsg',242),(2175,1045,1046,'OP_MacroInitMsg',243),(2176,1045,1046,'OP_MacroUpdateMsg',244),(2177,1045,1046,'OP_QuestionnaireMsg',245),(2178,1045,1046,'OP_LevelChangedMsg',246),(2179,1045,1046,'OP_SpellGainedMsg',247),(2180,1045,1046,'OP_EncounterBrokenMsg',248),(2181,1045,1046,'OP_OnscreenMsgMsg',249),(2182,1045,1046,'OP_DisplayWarningMsg',250),(2183,1045,1046,'OP_ModifyGuildMsg',251),(2184,1045,1046,'OP_GuildEventMsg',252),(2185,1045,1046,'OP_GuildEventAddMsg',253),(2186,1045,1046,'OP_GuildEventActionMsg',254),(2187,1045,1046,'OP_GuildEventListMsg',255),(2188,1045,1046,'OP_RequestGuildEventDetailsMsg',256),(2189,1045,1046,'OP_GuildEventDetailsMsg',257),(2190,1045,1046,'OP_RequestGuildInfoMsg',258),(2191,1045,1046,'OP_GuildBankActionMsg',259),(2192,1045,1046,'OP_GuildBankActionResponseMsg',260),(2193,1045,1046,'OP_GuildBankItemDetailsRequestMsg',261),(2194,1045,1046,'OP_GuildBankItemDetailsResponseMs',262),(2195,1045,1046,'OP_GuildBankUpdateMsg',263),(2196,1045,1046,'OP_GuildBankEventListMsg',264),(2197,1045,1046,'OP_RequestGuildBankEventDetailsMs',265),(2198,1045,1046,'OP_RewardPackMsg',266),(2199,1045,1046,'OP_RenameGuildMsg',267),(2200,1045,1046,'OP_ZoneToFriendRequestMsg',269),(2201,1045,1046,'OP_ZoneToFriendReplyMsg',270),(2202,1045,1046,'OP_ChatCreateChannelMsg',271),(2203,1045,1046,'OP_ChatJoinChannelMsg',272),(2204,1045,1046,'OP_ChatWhoChannelMsg',273),(2205,1045,1046,'OP_ChatLeaveChannelMsg',274),(2206,1045,1046,'OP_ChatTellChannelMsg',275),(2207,1045,1046,'OP_ChatTellUserMsg',276),(2208,1045,1046,'OP_ChatToggleFriendMsg',277),(2209,1045,1046,'OP_ChatToggleIgnoreMsg',278),(2210,1045,1046,'OP_ChatSendFriendsMsg',279),(2211,1045,1046,'OP_ChatSendIgnoresMsg',280),(2212,1045,1046,'OP_QuestReward',307),(2213,1045,1046,'OP_ChatFiltersMsg',322),(2214,1045,1046,'OP_MailGetHeadersMsg',323),(2215,1045,1046,'OP_MailGetMessageMsg',324),(2216,1045,1046,'OP_MailSendMessageMsg',325),(2217,1045,1046,'OP_MailDeleteMessageMsg',326),(2218,1045,1046,'OP_MailGetHeadersReplyMsg',327),(2219,1045,1046,'OP_MailGetMessageReplyMsg',328),(2220,1045,1046,'OP_MailSendMessageReplyMsg',329),(2221,1045,1046,'OP_MailCommitSendMessageMsg',330),(2222,1045,1046,'OP_MailSendSystemMessageMsg',331),(2223,1045,1046,'OP_MailRemoveAttachFromMailMsg',332),(2224,1045,1046,'OP_WaypointRequestMsg',334),(2225,1045,1046,'OP_WaypointReplyMsg',335),(2226,1045,1046,'OP_WaypointSelectMsg',336),(2227,1045,1046,'OP_WaypointUpdateMsg',337),(2228,1045,1046,'OP_CharNameChangedMsg',338),(2229,1045,1046,'OP_ShowZoneTeleporterDestinations',339),(2230,1045,1046,'OP_SelectZoneTeleporterDestinatio',340),(2231,1045,1046,'OP_ReloadLocalizedTxtMsg',341),(2232,1045,1046,'OP_RequestGuildMembershipMsg',342),(2233,1045,1046,'OP_GuildMembershipResponseMsg',343),(2234,1045,1046,'OP_LeaveGuildNotifyMsg',344),(2235,1045,1046,'OP_JoinGuildNotifyMsg',345),(2236,1045,1046,'OP_AvatarUpdateMsg',347),(2237,1045,1046,'OP_BioUpdateMsg',348),(2238,1045,1046,'OP_InspectPlayerMsg',349),(2239,1045,1046,'OP_WSServerLockMsg',350),(2240,1045,1046,'OP_LSServerLockMsg',351),(2241,1045,1046,'OP_WSServerHideMsg',352),(2242,1045,1046,'OP_CsCategoryRequestMsg',353),(2243,1045,1046,'OP_CsCategoryResponseMsg',354),(2244,1045,1046,'OP_KnowledgeWindowSlotMappingMsg',355),(2245,1045,1046,'OP_LFGUpdateMsg',356),(2246,1045,1046,'OP_AFKUpdateMsg',357),(2247,1045,1046,'OP_AnonUpdateMsg',358),(2248,1045,1046,'OP_UpdateActivePublicZonesMsg',359),(2249,1045,1046,'OP_UnknownNpcMsg',360),(2250,1045,1046,'OP_PromoFlagsDetailsMsg',361),(2251,1045,1046,'OP_ConsignViewCreateMsg',362),(2252,1045,1046,'OP_ConsignViewGetPageMsg',363),(2253,1045,1046,'OP_ConsignViewReleaseMsg',364),(2254,1045,1046,'OP_ConsignRemoveItemsMsg',365),(2255,1045,1046,'OP_UpdateDebugRadiiMsg',366),(2256,1045,1046,'OP_SnoopMsg',367),(2257,1045,1046,'OP_ReportMsg',368),(2258,1045,1046,'OP_UpdateRaidMsg',369),(2259,1045,1046,'OP_ConsignViewSortMsg',370),(2260,1045,1046,'OP_TitleUpdateMsg',371),(2261,1045,1046,'OP_ClientFellMsg',372),(2262,1045,1046,'OP_ClientInDeathRegionMsg',373),(2263,1045,1046,'OP_CampClientMsg',374),(2264,1045,1046,'OP_CSToolAccessResponseMsg',375),(2265,1045,1046,'OP_TrackingUpdateMsg',376),(2266,1045,1046,'OP_BeginTrackingMsg',377),(2267,1045,1046,'OP_StopTrackingMsg',378),(2268,1045,1046,'OP_GetAvatarAccessRequestForCSToo',379),(2269,1045,1046,'OP_AdvancementRequestMsg',380),(2270,1045,1046,'OP_UpdateAvgFrameTimeMsg',381),(2271,1045,1046,'OP_MapFogDataInitMsg',382),(2272,1045,1046,'OP_MapFogDataUpdateMsg',383),(2273,1045,1046,'OP_CloseGroupInviteWindowMsg',384),(2274,1045,1046,'OP_UpdateGroupMemberDataMsg',385),(2275,1045,1046,'OP_WorldPingMsg',386),(2276,1045,1046,'OP_MoveLogUpdateMsg',387),(2277,1045,1046,'OP_OfferQuestMsg',388),(2278,1045,1046,'OP_WorldShutdownUpdateMsg',389),(2279,1045,1046,'OP_DisplayMailScreenMsg',390),(2280,1045,1046,'OP_ClientIdleBeginMsg',391),(2281,1045,1046,'OP_ClientIdleEndMsg',392),(2282,1045,1046,'OP_PurchaseConsignmentLoreCheckRe',393),(2283,1045,1046,'OP_NotifyApprenticeStoppedMentori',394),(2284,1045,1046,'OP_CorruptedClientMsg',395),(2285,1045,1046,'OP_WorldDataChangeMsg',396),(2286,1045,1046,'OP_MailEventNotificationMsg',397),(2287,1045,1046,'OP_RestartZoneMsg',398),(2288,1045,1046,'OP_FlightPathsMsg',399),(2289,1045,1046,'OP_CharacterLinkdeadMsg',400),(2290,1045,1046,'OP_CharTransferStartRequestMsg',401),(2291,1045,1046,'OP_CharTransferStartReplyMsg',402),(2292,1045,1046,'OP_CharTransferRequestMsg',403),(2293,1045,1046,'OP_CharTransferReplyMsg',404),(2294,1045,1046,'OP_CharTransferRollbackRequestMsg',405),(2295,1045,1046,'OP_CharTransferCommitRequestMsg',406),(2296,1045,1046,'OP_CharTransferRollbackReplyMsg',407),(2297,1045,1046,'OP_CharTransferCommitReplyMsg',408),(2298,1045,1046,'OP_GetCharacterSerializedRequestM',409),(2299,1045,1046,'OP_GetCharacterSerializedReplyMsg',410),(2300,1045,1046,'OP_CreateCharFromCBBRequestMsg',411),(2301,1045,1046,'OP_CreateCharFromCBBReplyMsg',412),(2302,1045,1046,'OP_HousingDataChangedMsg',413),(2303,1045,1046,'OP_HousingRestoreMsg',414),(2304,1045,1046,'OP_AuctionItem',415),(2305,1045,1046,'OP_AuctionItemReply',416),(2306,1045,1046,'OP_AuctionCoin',417),(2307,1045,1046,'OP_AuctionCoinReply',418),(2308,1045,1046,'OP_AuctionCharacter',419),(2309,1045,1046,'OP_AuctionCharacterReply',420),(2310,1045,1046,'OP_AuctionCommitMsg',421),(2311,1045,1046,'OP_AuctionAbortMsg',422),(2312,1045,1046,'OP_CharTransferValidateRequestMsg',423),(2313,1045,1046,'OP_CharTransferValidateReplyMsg',424),(2314,1045,1046,'OP_RaceRestrictionMsg',425),(2315,1045,1046,'OP_SetInstanceDisplayNameMsg',426),(2316,1045,1046,'OP_GetAuctionAssetIDMsg',427),(2317,1045,1046,'OP_GetAuctionAssetIDReplyMsg',428),(2318,1045,1046,'OP_ResendWorldChannelsMsg',429),(2319,1045,1046,'OP_DisplayExchangeScreenMsg',430),(2320,1045,1046,'OP_ArenaGameTypesMsg',431),(2321,1045,1046,'OP_AuditAuctionEventMsg',433),(2322,1045,1046,'OP_InviteRequestMsg',435),(2323,1045,1046,'OP_InviteResponseMsg',436),(2324,1045,1046,'OP_InviteTargetResponseMsg',437),(2325,1045,1046,'OP_InspectPlayerRequestMsg',438),(2326,1045,1046,'OP_DispatchMsg',439),(2327,1045,1046,'OP_DisplayEventMsg',440),(2328,1045,1046,'OP_PrePossessionMsg',441),(2329,1045,1046,'OP_PostPossessionMsg',442),(2330,1045,1046,'OP_AdventureList',474),(2331,1045,1046,'OP_CancelSpellCast',475),(2332,1045,1046,'OP_UpdateTitleCmd',483),(2333,1045,1046,'OP_AttackAllowed',487),(2334,1045,1046,'OP_AttackNotAllowed',488),(2335,1045,1046,'OP_DressingRoom',494),(2336,1045,1046,'OP_SkillInfoRequest',498),(2337,1045,1046,'OP_SkillInfoResponse',499),(2338,1045,1046,'OP_BadLanguageFilter',503),(2339,1045,1046,'OP_MapRequest',504),(2340,1045,1046,'OP_EqUnknown',539),(2341,1045,1046,'OP_EqHearChatCmd',541),(2342,1045,1046,'OP_EqDisplayTextCmd',542),(2343,1045,1046,'OP_EqCreateGhostCmd',543),(2344,1045,1046,'OP_EqCreateWidgetCmd',544),(2345,1045,1046,'OP_EqCreateSignWidgetCmd',545),(2346,1045,1046,'OP_EqDestroyGhostCmd',546),(2347,1045,1046,'OP_EqUpdateGhostCmd',547),(2348,1045,1046,'OP_EqSetControlGhostCmd',548),(2349,1045,1046,'OP_EqSetPOVGhostCmd',549),(2350,1045,1046,'OP_EqHearCombatCmd',550),(2351,1045,1046,'OP_EqHearSpellCastCmd',551),(2352,1045,1046,'OP_EqHearSpellInterruptCmd',554),(2353,1045,1046,'OP_EqHearSpellFizzleCmd',555),(2354,1045,1046,'OP_EqHearConsiderCmd',556),(2355,1045,1046,'OP_EqUpdateSubClassesCmd',557),(2356,1045,1046,'OP_EqCreateListBoxCmd',558),(2357,1045,1046,'OP_EqSetDebugPathPointsCmd',559),(2358,1045,1046,'OP_EqCannedEmoteCmd',561),(2359,1045,1046,'OP_EqStateCmd',562),(2360,1045,1046,'OP_EqPlaySoundCmd',563),(2361,1045,1046,'OP_EqPlaySound3DCmd',564),(2362,1045,1046,'OP_EqPlayVoiceCmd',565),(2363,1045,1046,'OP_EqHearDrowningCmd',566),(2364,1045,1046,'OP_EqHearDeathCmd',567),(2365,1045,1046,'OP_EqGroupMemberRemovedCmd',568),(2366,1045,1046,'OP_EqHearChainEffectCmd',569),(2367,1045,1046,'OP_EqReceiveOfferCmd',570),(2368,1045,1046,'OP_EqInspectPCResultsCmd',571),(2369,1045,1046,'OP_EqDrawablePathGraphCmd',572),(2370,1045,1046,'OP_EqDialogOpenCmd',573),(2371,1045,1046,'OP_EqDialogCloseCmd',574),(2372,1045,1046,'OP_EqFactionUpdateCmd',575),(2373,1045,1046,'OP_EqCollectionUpdateCmd',576),(2374,1045,1046,'OP_EqCollectionFilterCmd',577),(2375,1045,1046,'OP_EqCollectionItemCmd',578),(2376,1045,1046,'OP_EqQuestJournalUpdateCmd',579),(2377,1045,1046,'OP_EqQuestJournalReplyCmd',581),(2378,1045,1046,'OP_EqQuestGroupCmd',582),(2379,1045,1046,'OP_EqUpdateMerchantCmd',583),(2380,1045,1046,'OP_EqUpdateStoreCmd',584),(2381,1045,1046,'OP_EqUpdatePlayerTradeCmd',585),(2382,1045,1046,'OP_EqHelpPathCmd',586),(2383,1045,1046,'OP_EqHelpPathClearCmd',587),(2384,1045,1046,'OP_EqUpdateBankCmd',588),(2385,1045,1046,'OP_EqExamineInfoCmd',589),(2386,1045,1046,'OP_EqCloseWindowCmd',590),(2387,1045,1046,'OP_EqUpdateLootCmd',591),(2388,1045,1046,'OP_EqJunctionListCmd',592),(2389,1045,1046,'OP_EqShowDeathWindowCmd',593),(2390,1045,1046,'OP_EqDisplaySpellFailCmd',594),(2391,1045,1046,'OP_EqSpellCastStartCmd',595),(2392,1045,1046,'OP_EqSpellCastEndCmd',596),(2393,1045,1046,'OP_EqResurrectedCmd',597),(2394,1045,1046,'OP_EqChoiceWinCmd',598),(2395,1045,1046,'OP_EqSetDefaultVerbCmd',599),(2396,1045,1046,'OP_EqInstructionWindowCmd',601),(2397,1045,1046,'OP_EqInstructionWindowCloseCmd',602),(2398,1045,1046,'OP_EqInstructionWindowGoalCmd',603),(2399,1045,1046,'OP_EqInstructionWindowTaskCmd',604),(2400,1045,1046,'OP_EqEnableGameEventCmd',605),(2401,1045,1046,'OP_EqShowWindowCmd',606),(2402,1045,1046,'OP_EqEnableWindowCmd',607),(2403,1045,1046,'OP_EqFlashWindowCmd',608),(2404,1045,1046,'OP_EqHearPlayFlavorCmd',609),(2405,1045,1046,'OP_EqUpdateSignWidgetCmd',611),(2406,1045,1046,'OP_EqDebugPVDCmd',612),(2407,1045,1046,'OP_EqShowBookCmd',613),(2408,1045,1046,'OP_EqQuestionnaireCmd',614),(2409,1045,1046,'OP_EqGetProbsCmd',615),(2410,1045,1046,'OP_EqHearHealCmd',616),(2411,1045,1046,'OP_EqChatChannelUpdateCmd',617),(2412,1045,1046,'OP_EqWhoChannelQueryReplyCmd',618),(2413,1045,1046,'OP_EqAvailWorldChannelsCmd',619),(2414,1045,1046,'OP_EqUpdateTargetCmd',620),(2415,1045,1046,'OP_EqConsignmentItemsCmd',622),(2416,1045,1046,'OP_EqStartBrokerCmd',624),(2417,1045,1046,'OP_EqMapExplorationCmd',625),(2418,1045,1046,'OP_EqStoreLogCmd',626),(2419,1045,1046,'OP_EqSpellMoveToRangeAndRetryCmd',627),(2420,1045,1046,'OP_EqUpdatePlayerMailCmd',628),(2421,1045,1046,'OP_EqArenaResultsCmd',629),(2422,1045,1046,'OP_EqGuildBankEventActionCmd',630),(2423,1045,1046,'OP_EqGuildBankExamineInfoCmd',631),(2424,1045,1046,'OP_EqHearSpellNoLandCmd',632),(2425,1045,1046,'OP_Lottery',636),(2426,1045,1046,'OP_GuildRecruitingMemberInfo',637),(2427,1045,1046,'OP_GuildRecruiting',638),(2428,1045,1046,'OP_GuildRecruitingDetails',639),(2429,1045,1046,'OP_GuildRecruitingImage',640),(2430,1045,1046,'OP_PointOfInterest',661),(2431,1045,1046,'OP_TraitsList',663),(2432,1045,1046,'OP_RecipeList',672),(2433,1045,1046,'OP_CharacterAchievements',674),(2434,1045,1046,'OP_AddClientToGroupMsg',1054),(2435,1045,1046,'OP_AddGroupToGroupMsg',1054),(2436,1045,1046,'OP_GuildKickMsg',1054),(2437,1045,1046,'OP_ProcessScriptMsg',1054),(2438,1045,1046,'OP_ProcessWorkspaceMsg',1054),(2439,1045,1046,'OP_PurchaseConsignmentResponseMsg',1054),(2440,1045,1046,'OP_QuickbarAddMsg',1054),(2441,1045,1046,'OP_SkillSlotMapping',1054),(2442,1045,1046,'OP_Unknown',10058),(2443,1045,1046,'OP_WSWeatherUpdateMsg',10059),(2444,1096,1096,'OP_LoginRequestMsg',0),(2445,1096,1096,'OP_LoginByNumRequestMsg',1),(2446,1096,1096,'OP_WSLoginRequestMsg',2),(2447,1096,1096,'OP_ESLoginRequestMsg',3),(2448,1096,1096,'OP_LoginReplyMsg',4),(2449,1096,1096,'OP_WSStatusReplyMsg',5),(2450,1096,1096,'OP_WorldStatusChangeMsg',6),(2451,1096,1096,'OP_AllWSDescRequestMsg',7),(2452,1096,1096,'OP_WorldListMsg',8),(2453,1096,1096,'OP_AllCharactersDescRequestMsg',9),(2454,1096,1096,'OP_AllCharactersDescReplyMsg',10),(2455,1096,1096,'OP_CreateCharacterRequestMsg',11),(2456,1096,1096,'OP_CreateCharacterReplyMsg',12),(2457,1096,1096,'OP_WSCreateCharacterRequestMsg',13),(2458,1096,1096,'OP_WSCreateCharacterReplyMsg',14),(2459,1096,1096,'OP_ReskinCharacterRequestMsg',15),(2460,1096,1096,'OP_DeleteCharacterRequestMsg',16),(2461,1096,1096,'OP_DeleteCharacterReplyMsg',17),(2462,1096,1096,'OP_PlayCharacterRequestMsg',18),(2463,1096,1096,'OP_PlayCharacterReplyMsg',19),(2464,1096,1096,'OP_ExpectClientAsCharacterReplyMs',22),(2465,1096,1096,'OP_ServerPlayCharacterRequestMsg',23),(2466,1096,1096,'OP_ServerPlayCharacterReplyMsg',24),(2467,1096,1096,'OP_ESInitMsg',25),(2468,1096,1096,'OP_ESReadyForClientsMsg',26),(2469,1096,1096,'OP_CreateZoneInstanceMsg',27),(2470,1096,1096,'OP_ZoneInstanceCreateReplyMsg',28),(2471,1096,1096,'OP_ZoneInstanceDestroyedMsg',29),(2472,1096,1096,'OP_ExpectClientAsCharacterRequest',30),(2473,1096,1096,'OP_ZoneInfoMsg',32),(2474,1096,1096,'OP_DoneLoadingZoneResourcesMsg',33),(2475,1096,1096,'OP_DoneSendingInitialEntitiesMsg',34),(2476,1096,1096,'OP_DoneLoadingEntityResourcesMsg',35),(2477,1096,1096,'OP_PredictionUpdateMsg',36),(2478,1096,1096,'OP_UpdatePositionMsg',38),(2479,1096,1096,'OP_SetRemoteCmdsMsg',40),(2480,1096,1096,'OP_RemoteCmdMsg',41),(2481,1096,1096,'OP_GameWorldTimeMsg',42),(2482,1096,1096,'OP_MOTDMsg',43),(2483,1096,1096,'OP_ZoneMOTDMsg',44),(2484,1096,1096,'OP_AvatarCreatedMsg',45),(2485,1096,1096,'OP_AvatarDestroyedMsg',46),(2486,1096,1096,'OP_RequestCampMsg',48),(2487,1096,1096,'OP_CampStartedMsg',49),(2488,1096,1096,'OP_CampAbortedMsg',50),(2489,1096,1096,'OP_WhoQueryRequestMsg',51),(2490,1096,1096,'OP_WhoQueryReplyMsg',52),(2491,1096,1096,'OP_MonitorReplyMsg',53),(2492,1096,1096,'OP_MonitorCharacterListMsg',54),(2493,1096,1096,'OP_MonitorCharacterListRequestMsg',55),(2494,1096,1096,'OP_ClientCmdMsg',56),(2495,1096,1096,'OP_DispatchESMsg',57),(2496,1096,1096,'OP_DispatchClientCmdMsg',58),(2497,1096,1096,'OP_UpdateTargetMsg',59),(2498,1096,1096,'OP_UpdateTargetLocMsg',60),(2499,1096,1096,'OP_UpdateCharacterSheetMsg',61),(2500,1096,1096,'OP_UpdateSpellBookMsg',62),(2501,1096,1096,'OP_UpdateInventoryMsg',64),(2502,1096,1096,'OP_UpdateRecipeBookMsg',66),(2503,1096,1096,'OP_RequestRecipeDetailsMsg',67),(2504,1096,1096,'OP_RecipeDetailsMsg',68),(2505,1096,1096,'OP_UpdateSkillBookMsg',69),(2506,1096,1096,'OP_UpdateSkillsMsg',70),(2507,1096,1096,'OP_UpdateOpportunityMsg',71),(2508,1096,1096,'OP_ChangeZoneMsg',73),(2509,1096,1096,'OP_ClientTeleportRequestMsg',74),(2510,1096,1096,'OP_TeleportWithinZoneMsg',75),(2511,1096,1096,'OP_TeleportWithinZoneNoReloadMsg',76),(2512,1096,1096,'OP_MigrateClientToZoneRequestMsg',77),(2513,1096,1096,'OP_MigrateClientToZoneReplyMsg',78),(2514,1096,1096,'OP_ReadyToZoneMsg',80),(2515,1096,1096,'OP_RemoveClientFromGroupMsg',81),(2516,1096,1096,'OP_RemoveGroupFromGroupMsg',82),(2517,1096,1096,'OP_MakeGroupLeaderMsg',83),(2518,1096,1096,'OP_GroupCreatedMsg',84),(2519,1096,1096,'OP_GroupDestroyedMsg',85),(2520,1096,1096,'OP_GroupMemberAddedMsg',86),(2521,1096,1096,'OP_GroupMemberRemovedMsg',87),(2522,1096,1096,'OP_GroupRemovedFromGroupMsg',88),(2523,1096,1096,'OP_GroupLeaderChangedMsg',89),(2524,1096,1096,'OP_GroupResendOOZDataMsg',90),(2525,1096,1096,'OP_GroupSettingsChangedMsg',91),(2526,1096,1096,'OP_OutOfZoneMemberDataMsg',92),(2527,1096,1096,'OP_SendLatestRequestMsg',93),(2528,1096,1096,'OP_ClearDataMsg',94),(2529,1096,1096,'OP_SetSocialMsg',95),(2530,1096,1096,'OP_ESStatusMsg',96),(2531,1096,1096,'OP_ESZoneInstanceStatusMsg',97),(2532,1096,1096,'OP_ZonesStatusRequestMsg',98),(2533,1096,1096,'OP_ZonesStatusMsg',99),(2534,1096,1096,'OP_ESWeatherRequestMsg',100),(2535,1096,1096,'OP_ESWeatherRequestEndMsg',101),(2536,1096,1096,'OP_DialogSelectMsg',105),(2537,1096,1096,'OP_DialogCloseMsg',106),(2538,1096,1096,'OP_RemoveSpellEffectMsg',107),(2539,1096,1096,'OP_RemoveConcentrationMsg',108),(2540,1096,1096,'OP_QuestJournalOpenMsg',109),(2541,1096,1096,'OP_QuestJournalInspectMsg',110),(2542,1096,1096,'OP_QuestJournalSetVisibleMsg',111),(2543,1096,1096,'OP_QuestJournalWaypointMsg',112),(2544,1096,1096,'OP_CreateGuildRequestMsg',113),(2545,1096,1096,'OP_CreateGuildReplyMsg',114),(2546,1096,1096,'OP_GuildsayMsg',115),(2547,1096,1096,'OP_FellowshipExpMsg',118),(2548,1096,1096,'OP_DeleteGuildMsg',119),(2549,1096,1096,'OP_GuildUpdateMsg',120),(2550,1096,1096,'OP_ConsignmentCloseStoreMsg',121),(2551,1096,1096,'OP_ConsignItemRequestMsg',122),(2552,1096,1096,'OP_ConsignItemResponseMsg',123),(2553,1096,1096,'OP_PurchaseConsignmentRequestMsg',124),(2554,1096,1096,'OP_HouseDeletedRemotelyMsg',125),(2555,1096,1096,'OP_UpdateHouseDataMsg',126),(2556,1096,1096,'OP_UpdateHouseAccessDataMsg',127),(2557,1096,1096,'OP_PlayerHouseBaseScreenMsg',128),(2558,1096,1096,'OP_PlayerHousePurchaseScreenMsg',129),(2559,1096,1096,'OP_PlayerHouseAccessUpdateMsg',130),(2560,1096,1096,'OP_PlayerHouseDisplayStatusMsg',131),(2561,1096,1096,'OP_PlayerHouseCloseUIMsg',132),(2562,1096,1096,'OP_BuyPlayerHouseMsg',133),(2563,1096,1096,'OP_BuyPlayerHouseTintMsg',134),(2564,1096,1096,'OP_CollectAllHouseItemsMsg',135),(2565,1096,1096,'OP_RelinquishHouseMsg',136),(2566,1096,1096,'OP_EnterHouseMsg',137),(2567,1096,1096,'OP_ExitHouseMsg',138),(2568,1096,1096,'OP_HouseDefaultAccessSetMsg',139),(2569,1096,1096,'OP_HouseAccessSetMsg',140),(2570,1096,1096,'OP_HouseAccessRemoveMsg',141),(2571,1096,1096,'OP_PayHouseUpkeepMsg',142),(2572,1096,1096,'OP_MoveableObjectPlacementCriteri',146),(2573,1096,1096,'OP_EnterMoveObjectModeMsg',147),(2574,1096,1096,'OP_PositionMoveableObject',148),(2575,1096,1096,'OP_CancelMoveObjectModeMsg',149),(2576,1096,1096,'OP_ShaderCustomizationMsg',150),(2577,1096,1096,'OP_ReplaceableSubMeshesMsg',151),(2578,1096,1096,'OP_HouseCustomizationScreenMsg',152),(2579,1096,1096,'OP_CustomizationPurchaseRequestMs',153),(2580,1096,1096,'OP_CustomizationSetRequestMsg',154),(2581,1096,1096,'OP_CustomizationReplyMsg',155),(2582,1096,1096,'OP_TintWidgetsMsg',156),(2583,1096,1096,'OP_ExamineConsignmentRequestMsg',157),(2584,1096,1096,'OP_ExamineConsignmentResponseMsg',158),(2585,1096,1096,'OP_UISettingsResponseMsg',159),(2586,1096,1096,'OP_UIResetMsg',160),(2587,1096,1096,'OP_KeymapLoadMsg',161),(2588,1096,1096,'OP_KeymapNoneMsg',162),(2589,1096,1096,'OP_KeymapDataMsg',163),(2590,1096,1096,'OP_KeymapSaveMsg',164),(2591,1096,1096,'OP_DispatchSpellCmdMsg',165),(2592,1096,1096,'OP_EntityVerbsRequestMsg',166),(2593,1096,1096,'OP_EntityVerbsReplyMsg',167),(2594,1096,1096,'OP_EntityVerbsVerbMsg',168),(2595,1096,1096,'OP_ChatRelationshipUpdateMsg',170),(2596,1096,1096,'OP_LootItemsRequestMsg',171),(2597,1096,1096,'OP_StoppedLootingMsg',172),(2598,1096,1096,'OP_SitMsg',173),(2599,1096,1096,'OP_StandMsg',174),(2600,1096,1096,'OP_SatMsg',175),(2601,1096,1096,'OP_StoodMsg',176),(2602,1096,1096,'OP_ClearForTakeOffMsg',177),(2603,1096,1096,'OP_ReadyForTakeOffMsg',178),(2604,1096,1096,'OP_ShowIllusionsMsg',179),(2605,1096,1096,'OP_HideIllusionsMsg',180),(2606,1096,1096,'OP_ExamineItemRequestMsg',181),(2607,1096,1096,'OP_ReadBookPageMsg',182),(2608,1096,1096,'OP_DefaultGroupOptionsRequestMsg',183),(2609,1096,1096,'OP_DefaultGroupOptionsMsg',184),(2610,1096,1096,'OP_GroupOptionsMsg',185),(2611,1096,1096,'OP_DisplayGroupOptionsScreenMsg',186),(2612,1096,1096,'OP_DisplayInnVisitScreenMsg',188),(2613,1096,1096,'OP_DumpSchedulerMsg',189),(2614,1096,1096,'OP_LSRequestPlayerDescMsg',190),(2615,1096,1096,'OP_LSCheckAcctLockMsg',191),(2616,1096,1096,'OP_WSAcctLockStatusMsg',192),(2617,1096,1096,'OP_RequestHelpRepathMsg',193),(2618,1096,1096,'OP_RequestTargetLocMsg',194),(2619,1096,1096,'OP_UpdateMotdMsg',195),(2620,1096,1096,'OP_PerformPlayerKnockbackMsg',197),(2621,1096,1096,'OP_PerformCameraShakeMsg',198),(2622,1096,1096,'OP_PopulateSkillMapsMsg',199),(2623,1096,1096,'OP_CancelledFeignMsg',201),(2624,1096,1096,'OP_SignalMsg',202),(2625,1096,1096,'OP_ShowCreateFromRecipeUIMsg',203),(2626,1096,1096,'OP_CancelCreateFromRecipeMsg',204),(2627,1096,1096,'OP_BeginItemCreationMsg',205),(2628,1096,1096,'OP_StopItemCreationMsg',206),(2629,1096,1096,'OP_ShowItemCreationProcessUIMsg',207),(2630,1096,1096,'OP_UpdateItemCreationProcessUIMsg',208),(2631,1096,1096,'OP_DisplayTSEventReactionMsg',209),(2632,1096,1096,'OP_ShowRecipeBookMsg',210),(2633,1096,1096,'OP_KnowledgebaseRequestMsg',211),(2634,1096,1096,'OP_KnowledgebaseResponseMsg',212),(2635,1096,1096,'OP_CSTicketHeaderRequestMsg',213),(2636,1096,1096,'OP_CSTicketInfoMsg',214),(2637,1096,1096,'OP_CSTicketCommentRequestMsg',215),(2638,1096,1096,'OP_CSTicketCommentResponseMsg',216),(2639,1096,1096,'OP_CSTicketCreateMsg',217),(2640,1096,1096,'OP_CSTicketAddCommentMsg',218),(2641,1096,1096,'OP_CSTicketDeleteMsg',219),(2642,1096,1096,'OP_CSTicketChangeNotificationMsg',220),(2643,1096,1096,'OP_WorldDataUpdateMsg',221),(2644,1096,1096,'OP_KnownLanguagesMsg',222),(2645,1096,1096,'OP_LsRequestClientCrashLogMsg',223),(2646,1096,1096,'OP_LsClientBaselogReplyMsg',224),(2647,1096,1096,'OP_LsClientCrashlogReplyMsg',225),(2648,1096,1096,'OP_LsClientAlertlogReplyMsg',226),(2649,1096,1096,'OP_LsClientVerifylogReplyMsg',227),(2650,1096,1096,'OP_ClientTeleportToLocationMsg',228),(2651,1096,1096,'OP_UpdateClientPredFlagsMsg',229),(2652,1096,1096,'OP_ChangeServerControlFlagMsg',230),(2653,1096,1096,'OP_CSToolsRequestMsg',231),(2654,1096,1096,'OP_CSToolsResponseMsg',232),(2655,1096,1096,'OP_AddSocialStructureStandingMsg',233),(2656,1096,1096,'OP_CreateBoatTransportsMsg',234),(2657,1096,1096,'OP_PositionBoatTransportMsg',235),(2658,1096,1096,'OP_MigrateBoatTransportMsg',236),(2659,1096,1096,'OP_MigrateBoatTransportReplyMsg',237),(2660,1096,1096,'OP_DisplayDebugNLLPointsMsg',238),(2661,1096,1096,'OP_ExamineInfoRequestMsg',239),(2662,1096,1096,'OP_QuickbarInitMsg',240),(2663,1096,1096,'OP_QuickbarUpdateMsg',241),(2664,1096,1096,'OP_MacroInitMsg',242),(2665,1096,1096,'OP_MacroUpdateMsg',243),(2666,1096,1096,'OP_QuestionnaireMsg',244),(2667,1096,1096,'OP_LevelChangedMsg',245),(2668,1096,1096,'OP_SpellGainedMsg',246),(2669,1096,1096,'OP_EncounterBrokenMsg',247),(2670,1096,1096,'OP_OnscreenMsgMsg',248),(2671,1096,1096,'OP_DisplayWarningMsg',249),(2672,1096,1096,'OP_ModifyGuildMsg',250),(2673,1096,1096,'OP_GuildEventMsg',251),(2674,1096,1096,'OP_GuildEventAddMsg',252),(2675,1096,1096,'OP_GuildEventActionMsg',253),(2676,1096,1096,'OP_GuildEventListMsg',254),(2677,1096,1096,'OP_RequestGuildEventDetailsMsg',255),(2678,1096,1096,'OP_GuildEventDetailsMsg',256),(2679,1096,1096,'OP_RequestGuildInfoMsg',257),(2680,1096,1096,'OP_GuildBankActionMsg',258),(2681,1096,1096,'OP_GuildBankActionResponseMsg',259),(2682,1096,1096,'OP_GuildBankItemDetailsRequestMsg',260),(2683,1096,1096,'OP_GuildBankItemDetailsResponseMs',261),(2684,1096,1096,'OP_GuildBankUpdateMsg',262),(2685,1096,1096,'OP_GuildBankEventListMsg',263),(2686,1096,1096,'OP_RequestGuildBankEventDetailsMs',264),(2687,1096,1096,'OP_RewardPackMsg',265),(2688,1096,1096,'OP_RenameGuildMsg',266),(2689,1096,1096,'OP_ZoneToFriendRequestMsg',268),(2690,1096,1096,'OP_ZoneToFriendReplyMsg',269),(2691,1096,1096,'OP_ChatCreateChannelMsg',270),(2692,1096,1096,'OP_ChatJoinChannelMsg',271),(2693,1096,1096,'OP_ChatWhoChannelMsg',272),(2694,1096,1096,'OP_ChatLeaveChannelMsg',273),(2695,1096,1096,'OP_ChatTellChannelMsg',274),(2696,1096,1096,'OP_ChatTellUserMsg',275),(2697,1096,1096,'OP_ChatToggleFriendMsg',276),(2698,1096,1096,'OP_ChatToggleIgnoreMsg',277),(2699,1096,1096,'OP_ChatSendFriendsMsg',278),(2700,1096,1096,'OP_ChatSendIgnoresMsg',279),(2701,1096,1096,'OP_QuestReward',304),(2702,1096,1096,'OP_ChatFiltersMsg',319),(2703,1096,1096,'OP_MailGetHeadersMsg',320),(2704,1096,1096,'OP_MailGetMessageMsg',321),(2705,1096,1096,'OP_MailSendMessageMsg',322),(2706,1096,1096,'OP_MailDeleteMessageMsg',323),(2707,1096,1096,'OP_MailGetHeadersReplyMsg',324),(2708,1096,1096,'OP_MailGetMessageReplyMsg',325),(2709,1096,1096,'OP_MailSendMessageReplyMsg',326),(2710,1096,1096,'OP_MailCommitSendMessageMsg',327),(2711,1096,1096,'OP_MailSendSystemMessageMsg',328),(2712,1096,1096,'OP_MailRemoveAttachFromMailMsg',329),(2713,1096,1096,'OP_WaypointRequestMsg',331),(2714,1096,1096,'OP_WaypointReplyMsg',332),(2715,1096,1096,'OP_WaypointSelectMsg',333),(2716,1096,1096,'OP_WaypointUpdateMsg',334),(2717,1096,1096,'OP_CharNameChangedMsg',335),(2718,1096,1096,'OP_ShowZoneTeleporterDestinations',336),(2719,1096,1096,'OP_SelectZoneTeleporterDestinatio',337),(2720,1096,1096,'OP_ReloadLocalizedTxtMsg',338),(2721,1096,1096,'OP_RequestGuildMembershipMsg',339),(2722,1096,1096,'OP_GuildMembershipResponseMsg',340),(2723,1096,1096,'OP_LeaveGuildNotifyMsg',341),(2724,1096,1096,'OP_JoinGuildNotifyMsg',342),(2725,1096,1096,'OP_AvatarUpdateMsg',343),(2726,1096,1096,'OP_BioUpdateMsg',345),(2727,1096,1096,'OP_InspectPlayerMsg',346),(2728,1096,1096,'OP_WSServerLockMsg',347),(2729,1096,1096,'OP_LSServerLockMsg',348),(2730,1096,1096,'OP_WSServerHideMsg',349),(2731,1096,1096,'OP_CsCategoryRequestMsg',350),(2732,1096,1096,'OP_CsCategoryResponseMsg',351),(2733,1096,1096,'OP_KnowledgeWindowSlotMappingMsg',352),(2734,1096,1096,'OP_LFGUpdateMsg',3533),(2735,1096,1096,'OP_AFKUpdateMsg',353),(2736,1096,1096,'OP_AnonUpdateMsg',354),(2737,1096,1096,'OP_UpdateActivePublicZonesMsg',355),(2738,1096,1096,'OP_UnknownNpcMsg',356),(2739,1096,1096,'OP_PromoFlagsDetailsMsg',357),(2740,1096,1096,'OP_ConsignViewCreateMsg',358),(2741,1096,1096,'OP_ConsignViewGetPageMsg',359),(2742,1096,1096,'OP_ConsignViewReleaseMsg',360),(2743,1096,1096,'OP_ConsignRemoveItemsMsg',361),(2744,1096,1096,'OP_UpdateDebugRadiiMsg',362),(2745,1096,1096,'OP_SnoopMsg',363),(2746,1096,1096,'OP_ReportMsg',364),(2747,1096,1096,'OP_UpdateRaidMsg',365),(2748,1096,1096,'OP_ConsignViewSortMsg',366),(2749,1096,1096,'OP_TitleUpdateMsg',367),(2750,1096,1096,'OP_ClientFellMsg',368),(2751,1096,1096,'OP_ClientInDeathRegionMsg',369),(2752,1096,1096,'OP_CampClientMsg',370),(2753,1096,1096,'OP_CSToolAccessResponseMsg',371),(2754,1096,1096,'OP_TrackingUpdateMsg',372),(2755,1096,1096,'OP_BeginTrackingMsg',373),(2756,1096,1096,'OP_StopTrackingMsg',374),(2757,1096,1096,'OP_GetAvatarAccessRequestForCSToo',375),(2758,1096,1096,'OP_AdvancementRequestMsg',376),(2759,1096,1096,'OP_UpdateAvgFrameTimeMsg',377),(2760,1096,1096,'OP_MapFogDataInitMsg',378),(2761,1096,1096,'OP_MapFogDataUpdateMsg',379),(2762,1096,1096,'OP_CloseGroupInviteWindowMsg',380),(2763,1096,1096,'OP_UpdateGroupMemberDataMsg',381),(2764,1096,1096,'OP_WorldPingMsg',382),(2765,1096,1096,'OP_MoveLogUpdateMsg',383),(2766,1096,1096,'OP_OfferQuestMsg',384),(2767,1096,1096,'OP_WorldShutdownUpdateMsg',385),(2768,1096,1096,'OP_DisplayMailScreenMsg',386),(2769,1096,1096,'OP_ClientIdleBeginMsg',387),(2770,1096,1096,'OP_ClientIdleEndMsg',388),(2771,1096,1096,'OP_PurchaseConsignmentLoreCheckRe',389),(2772,1096,1096,'OP_NotifyApprenticeStoppedMentori',390),(2773,1096,1096,'OP_CorruptedClientMsg',391),(2774,1096,1096,'OP_WorldDataChangeMsg',392),(2775,1096,1096,'OP_MailEventNotificationMsg',393),(2776,1096,1096,'OP_RestartZoneMsg',394),(2777,1096,1096,'OP_FlightPathsMsg',395),(2778,1096,1096,'OP_CharacterLinkdeadMsg',396),(2779,1096,1096,'OP_CharTransferStartRequestMsg',397),(2780,1096,1096,'OP_CharTransferStartReplyMsg',398),(2781,1096,1096,'OP_CharTransferRequestMsg',399),(2782,1096,1096,'OP_CharTransferReplyMsg',400),(2783,1096,1096,'OP_CharTransferRollbackRequestMsg',401),(2784,1096,1096,'OP_CharTransferCommitRequestMsg',402),(2785,1096,1096,'OP_CharTransferRollbackReplyMsg',403),(2786,1096,1096,'OP_CharTransferCommitReplyMsg',404),(2787,1096,1096,'OP_GetCharacterSerializedRequestM',405),(2788,1096,1096,'OP_GetCharacterSerializedReplyMsg',406),(2789,1096,1096,'OP_CreateCharFromCBBRequestMsg',407),(2790,1096,1096,'OP_CreateCharFromCBBReplyMsg',408),(2791,1096,1096,'OP_HousingDataChangedMsg',409),(2792,1096,1096,'OP_HousingRestoreMsg',410),(2793,1096,1096,'OP_AuctionItem',411),(2794,1096,1096,'OP_AuctionItemReply',412),(2795,1096,1096,'OP_AuctionCoin',413),(2796,1096,1096,'OP_AuctionCoinReply',414),(2797,1096,1096,'OP_AuctionCharacter',415),(2798,1096,1096,'OP_AuctionCharacterReply',416),(2799,1096,1096,'OP_AuctionCommitMsg',417),(2800,1096,1096,'OP_AuctionAbortMsg',418),(2801,1096,1096,'OP_CharTransferValidateRequestMsg',419),(2802,1096,1096,'OP_CharTransferValidateReplyMsg',420),(2803,1096,1096,'OP_RaceRestrictionMsg',421),(2804,1096,1096,'OP_SetInstanceDisplayNameMsg',422),(2805,1096,1096,'OP_GetAuctionAssetIDMsg',423),(2806,1096,1096,'OP_GetAuctionAssetIDReplyMsg',424),(2807,1096,1096,'OP_ResendWorldChannelsMsg',425),(2808,1096,1096,'OP_DisplayExchangeScreenMsg',426),(2809,1096,1096,'OP_ArenaGameTypesMsg',428),(2810,1096,1096,'OP_AuditAuctionEventMsg',429),(2811,1096,1096,'OP_InviteRequestMsg',431),(2812,1096,1096,'OP_InviteResponseMsg',432),(2813,1096,1096,'OP_InviteTargetResponseMsg',433),(2814,1096,1096,'OP_InspectPlayerRequestMsg',434),(2815,1096,1096,'OP_DispatchMsg',435),(2816,1096,1096,'OP_DisplayEventMsg',436),(2817,1096,1096,'OP_PrePossessionMsg',437),(2818,1096,1096,'OP_PostPossessionMsg',438),(2819,1096,1096,'OP_AdventureList',470),(2820,1096,1096,'OP_CancelSpellCast',471),(2821,1096,1096,'OP_UpdateTitleCmd',476),(2822,1096,1096,'OP_AttackAllowed',482),(2823,1096,1096,'OP_AttackNotAllowed',483),(2824,1096,1096,'OP_DressingRoom',492),(2825,1096,1096,'OP_SkillInfoRequest',496),(2826,1096,1096,'OP_SkillInfoResponse',497),(2827,1096,1096,'OP_BadLanguageFilter',501),(2828,1096,1096,'OP_MapRequest',503),(2829,1096,1096,'OP_Unknown',509),(2830,1096,1096,'OP_EqUnknown',541),(2831,1096,1096,'OP_EqHearChatCmd',543),(2832,1096,1096,'OP_EqDisplayTextCmd',544),(2833,1096,1096,'OP_EqCreateGhostCmd',545),(2834,1096,1096,'OP_EqCreateWidgetCmd',546),(2835,1096,1096,'OP_EqCreateSignWidgetCmd',547),(2836,1096,1096,'OP_EqDestroyGhostCmd',548),(2837,1096,1096,'OP_EqUpdateGhostCmd',549),(2838,1096,1096,'OP_EqSetControlGhostCmd',550),(2839,1096,1096,'OP_EqSetPOVGhostCmd',551),(2840,1096,1096,'OP_EqHearCombatCmd',552),(2841,1096,1096,'OP_EqHearSpellCastCmd',553),(2842,1096,1096,'OP_EqHearSpellInterruptCmd',556),(2843,1096,1096,'OP_EqHearSpellFizzleCmd',557),(2844,1096,1096,'OP_EqHearConsiderCmd',558),(2845,1096,1096,'OP_EqUpdateSubClassesCmd',559),(2846,1096,1096,'OP_EqCreateListBoxCmd',560),(2847,1096,1096,'OP_EqSetDebugPathPointsCmd',561),(2848,1096,1096,'OP_EqCannedEmoteCmd',563),(2849,1096,1096,'OP_EqStateCmd',564),(2850,1096,1096,'OP_EqPlaySoundCmd',565),(2851,1096,1096,'OP_EqPlaySound3DCmd',566),(2852,1096,1096,'OP_EqPlayVoiceCmd',567),(2853,1096,1096,'OP_EqHearDrowningCmd',568),(2854,1096,1096,'OP_EqHearDeathCmd',569),(2855,1096,1096,'OP_EqGroupMemberRemovedCmd',570),(2856,1096,1096,'OP_EqHearChainEffectCmd',571),(2857,1096,1096,'OP_EqReceiveOfferCmd',572),(2858,1096,1096,'OP_EqInspectPCResultsCmd',573),(2859,1096,1096,'OP_EqDrawablePathGraphCmd',574),(2860,1096,1096,'OP_EqDialogOpenCmd',575),(2861,1096,1096,'OP_EqDialogCloseCmd',576),(2862,1096,1096,'OP_EqFactionUpdateCmd',577),(2863,1096,1096,'OP_EqCollectionUpdateCmd',578),(2864,1096,1096,'OP_EqCollectionFilterCmd',579),(2865,1096,1096,'OP_EqCollectionItemCmd',580),(2866,1096,1096,'OP_EqQuestJournalUpdateCmd',581),(2867,1096,1096,'OP_EqQuestJournalReplyCmd',583),(2868,1096,1096,'OP_EqQuestGroupCmd',584),(2869,1096,1096,'OP_EqUpdateMerchantCmd',585),(2870,1096,1096,'OP_EqUpdateStoreCmd',586),(2871,1096,1096,'OP_EqUpdatePlayerTradeCmd',587),(2872,1096,1096,'OP_EqHelpPathCmd',588),(2873,1096,1096,'OP_EqHelpPathClearCmd',589),(2874,1096,1096,'OP_EqUpdateBankCmd',590),(2875,1096,1096,'OP_EqExamineInfoCmd',591),(2876,1096,1096,'OP_EqCloseWindowCmd',592),(2877,1096,1096,'OP_EqUpdateLootCmd',593),(2878,1096,1096,'OP_EqJunctionListCmd',594),(2879,1096,1096,'OP_EqShowDeathWindowCmd',595),(2880,1096,1096,'OP_EqDisplaySpellFailCmd',596),(2881,1096,1096,'OP_EqSpellCastStartCmd',597),(2882,1096,1096,'OP_EqSpellCastEndCmd',598),(2883,1096,1096,'OP_EqResurrectedCmd',599),(2884,1096,1096,'OP_EqChoiceWinCmd',600),(2885,1096,1096,'OP_EqSetDefaultVerbCmd',601),(2886,1096,1096,'OP_EqInstructionWindowCmd',603),(2887,1096,1096,'OP_EqInstructionWindowCloseCmd',604),(2888,1096,1096,'OP_EqInstructionWindowGoalCmd',605),(2889,1096,1096,'OP_EqInstructionWindowTaskCmd',606),(2890,1096,1096,'OP_EqEnableGameEventCmd',607),(2891,1096,1096,'OP_EqShowWindowCmd',608),(2892,1096,1096,'OP_EqEnableWindowCmd',609),(2893,1096,1096,'OP_EqFlashWindowCmd',610),(2894,1096,1096,'OP_EqHearPlayFlavorCmd',611),(2895,1096,1096,'OP_EqUpdateSignWidgetCmd',613),(2896,1096,1096,'OP_EqDebugPVDCmd',614),(2897,1096,1096,'OP_EqShowBookCmd',615),(2898,1096,1096,'OP_EqQuestionnaireCmd',616),(2899,1096,1096,'OP_EqGetProbsCmd',617),(2900,1096,1096,'OP_EqHearHealCmd',618),(2901,1096,1096,'OP_EqChatChannelUpdateCmd',619),(2902,1096,1096,'OP_EqWhoChannelQueryReplyCmd',620),(2903,1096,1096,'OP_EqAvailWorldChannelsCmd',621),(2904,1096,1096,'OP_EqUpdateTargetCmd',622),(2905,1096,1096,'OP_EqConsignmentItemsCmd',624),(2906,1096,1096,'OP_EqStartBrokerCmd',626),(2907,1096,1096,'OP_EqMapExplorationCmd',627),(2908,1096,1096,'OP_EqStoreLogCmd',628),(2909,1096,1096,'OP_EqSpellMoveToRangeAndRetryCmd',629),(2910,1096,1096,'OP_EqUpdatePlayerMailCmd',630),(2911,1096,1096,'OP_EqArenaResultsCmd',631),(2912,1096,1096,'OP_EqGuildBankEventActionCmd',632),(2913,1096,1096,'OP_EqGuildBankExamineInfoCmd',633),(2914,1096,1096,'OP_EqHearSpellNoLandCmd',634),(2915,1096,1096,'OP_GuildList',637),(2916,1096,1096,'OP_Lottery',638),(2917,1096,1096,'OP_GuildRecruitingMemberInfo',639),(2918,1096,1096,'OP_GuildRecruiting',640),(2919,1096,1096,'OP_GuildRecruitingDetails',641),(2920,1096,1096,'OP_GuildRecruitingImage',642),(2921,1096,1096,'OP_TradeskillList',659),(2922,1096,1096,'OP_PointOfInterest',663),(2923,1096,1096,'OP_TraitsList',665),(2924,1096,1096,'OP_RecipeList',674),(2925,1096,1096,'OP_CharacterAchievements',677),(2926,1096,1096,'OP_AddClientToGroupMsg',999),(2927,1096,1096,'OP_AddGroupToGroupMsg',1000),(2928,1096,1096,'OP_WSWeatherUpdateMsg',1001),(2929,1096,1096,'OP_SkillSlotMapping',1002),(2930,1096,1096,'OP_GuildKickMsg',1003),(2931,1096,1096,'OP_PurchaseConsignmentResponseMsg',1004),(2932,1096,1096,'OP_ProcessScriptMsg',1005),(2933,1096,1096,'OP_ProcessWorkspaceMsg',1006),(2934,1096,1096,'OP_QuickbarAddMsg',1007),(2935,0,0,'OP_BagOptions',999),(2936,839,844,'OP_BagOptions',999),(2937,908,927,'OP_BagOptions',999),(2938,1008,1011,'OP_BagOptions',999),(2939,1045,1046,'OP_BagOptions',999),(2940,1096,1096,'OP_BagOptions',999),(2941,0,0,'OP_AchievementUpdateMsg',999),(2942,839,844,'OP_AchievementUpdateMsg',999),(2943,908,927,'OP_AchievementUpdateMsg',999),(2944,1008,1011,'OP_AchievementUpdateMsg',999),(2945,1045,1046,'OP_AchievementUpdateMsg',999),(2946,1096,1096,'OP_AchievementUpdateMsg',678),(2947,1096,1096,'OP_PetOptions',187),(2948,1045,1046,'OP_PetOptions',999),(2949,1008,1011,'OP_PetOptions',999),(2950,908,927,'OP_PetOptions',999),(2951,839,844,'OP_PetOptions',999),(2952,0,0,'OP_PetOptions',999),(2953,1193,1195,'OP_LoginRequestMsg',0),(2954,1193,1195,'OP_LoginByNumRequestMsg',1),(2955,1193,1195,'OP_WSLoginRequestMsg',2),(2956,1193,1195,'OP_ESLoginRequestMsg',3),(2957,1193,1195,'OP_LoginReplyMsg',4),(2958,1193,1195,'OP_WSStatusReplyMsg',5),(2959,1193,1195,'OP_WorldStatusChangeMsg',6),(2960,1193,1195,'OP_AllWSDescRequestMsg',7),(2961,1193,1195,'OP_WorldListMsg',8),(2962,1193,1195,'OP_AllCharactersDescRequestMsg',9),(2963,1193,1195,'OP_AllCharactersDescReplyMsg',10),(2964,1193,1195,'OP_CreateCharacterRequestMsg',11),(2965,1193,1195,'OP_CreateCharacterReplyMsg',12),(2966,1193,1195,'OP_WSCreateCharacterRequestMsg',13),(2967,1193,1195,'OP_WSCreateCharacterReplyMsg',14),(2968,1193,1195,'OP_ReskinCharacterRequestMsg',15),(2969,1193,1195,'OP_DeleteCharacterRequestMsg',16),(2970,1193,1195,'OP_DeleteCharacterReplyMsg',17),(2971,1193,1195,'OP_PlayCharacterRequestMsg',18),(2972,1193,1195,'OP_PlayCharacterReplyMsg',19),(2973,1193,1195,'OP_ExpectClientAsCharacterReplyMs',22),(2974,1193,1195,'OP_ServerPlayCharacterRequestMsg',23),(2975,1193,1195,'OP_ServerPlayCharacterReplyMsg',24),(2976,1193,1195,'OP_ESInitMsg',25),(2977,1193,1195,'OP_ESReadyForClientsMsg',26),(2978,1193,1195,'OP_CreateZoneInstanceMsg',29),(2979,1193,1195,'OP_ZoneInstanceCreateReplyMsg',30),(2980,1193,1195,'OP_ZoneInstanceDestroyedMsg',31),(2981,1193,1195,'OP_ExpectClientAsCharacterRequest',32),(2982,1193,1195,'OP_ZoneInfoMsg',33),(2983,1193,1195,'OP_DoneLoadingZoneResourcesMsg',34),(2984,1193,1195,'OP_DoneSendingInitialEntitiesMsg',35),(2985,1193,1195,'OP_DoneLoadingEntityResourcesMsg',36),(2986,1193,1195,'OP_PredictionUpdateMsg',37),(2987,1193,1195,'OP_UpdatePositionMsg',39),(2988,1193,1195,'OP_SetRemoteCmdsMsg',41),(2989,1193,1195,'OP_RemoteCmdMsg',42),(2990,1193,1195,'OP_GameWorldTimeMsg',43),(2991,1193,1195,'OP_MOTDMsg',44),(2992,1193,1195,'OP_ZoneMOTDMsg',45),(2993,1193,1195,'OP_AvatarCreatedMsg',46),(2994,1193,1195,'OP_AvatarDestroyedMsg',47),(2995,1193,1195,'OP_RequestCampMsg',50),(2996,1193,1195,'OP_CampStartedMsg',51),(2997,1193,1195,'OP_CampAbortedMsg',52),(2998,1193,1195,'OP_WhoQueryRequestMsg',53),(2999,1193,1195,'OP_WhoQueryReplyMsg',54),(3000,1193,1195,'OP_MonitorReplyMsg',55),(3001,1193,1195,'OP_MonitorCharacterListMsg',56),(3002,1193,1195,'OP_MonitorCharacterListRequestMsg',57),(3003,1193,1195,'OP_ClientCmdMsg',58),(3004,1193,1195,'OP_DispatchESMsg',59),(3005,1193,1195,'OP_DispatchClientCmdMsg',60),(3006,1193,1195,'OP_UpdateTargetMsg',61),(3007,1193,1195,'OP_UpdateTargetLocMsg',62),(3008,1193,1195,'OP_UpdateCharacterSheetMsg',63),(3009,1193,1195,'OP_CharacterPet',64),(3010,1193,1195,'OP_CharacterMerc',65),(3011,1193,1195,'OP_UpdateSpellBookMsg',66),(3012,1193,1195,'OP_UpdateInventoryMsg',68),(3013,1193,1195,'OP_AfterInvSpellUpdate',69),(3014,1193,1195,'OP_UpdateRecipeBookMsg',70),(3015,1193,1195,'OP_RequestRecipeDetailsMsg',71),(3016,1193,1195,'OP_RecipeDetailsMsg',72),(3017,1193,1195,'OP_UpdateSkillBookMsg',73),(3018,1193,1195,'OP_UpdateSkillsMsg',74),(3019,1193,1195,'OP_UpdateOpportunityMsg',75),(3020,1193,1195,'OP_ChangeZoneMsg',77),(3021,1193,1195,'OP_ClientTeleportRequestMsg',78),(3022,1193,1195,'OP_TeleportWithinZoneMsg',79),(3023,1193,1195,'OP_TeleportWithinZoneNoReloadMsg',80),(3024,1193,1195,'OP_MigrateClientToZoneRequestMsg',81),(3025,1193,1195,'OP_MigrateClientToZoneReplyMsg',82),(3026,1193,1195,'OP_ReadyToZoneMsg',84),(3027,1193,1195,'OP_RemoveClientFromGroupMsg',85),(3028,1193,1195,'OP_RemoveGroupFromGroupMsg',86),(3029,1193,1195,'OP_MakeGroupLeaderMsg',87),(3030,1193,1195,'OP_GroupCreatedMsg',88),(3031,1193,1195,'OP_GroupDestroyedMsg',89),(3032,1193,1195,'OP_GroupMemberAddedMsg',90),(3033,1193,1195,'OP_GroupMemberRemovedMsg',91),(3034,1193,1195,'OP_GroupRemovedFromGroupMsg',92),(3035,1193,1195,'OP_GroupLeaderChangedMsg',93),(3036,1193,1195,'OP_GroupResendOOZDataMsg',94),(3037,1193,1195,'OP_GroupSettingsChangedMsg',95),(3038,1193,1195,'OP_OutOfZoneMemberDataMsg',96),(3039,1193,1195,'OP_SendLatestRequestMsg',97),(3040,1193,1195,'OP_ClearDataMsg',98),(3041,1193,1195,'OP_SetSocialMsg',99),(3042,1193,1195,'OP_ESStatusMsg',100),(3043,1193,1195,'OP_ESZoneInstanceStatusMsg',101),(3044,1193,1195,'OP_ZonesStatusRequestMsg',102),(3045,1193,1195,'OP_ZonesStatusMsg',103),(3046,1193,1195,'OP_ESWeatherRequestMsg',104),(3047,1193,1195,'OP_ESWeatherRequestEndMsg',105),(3048,1193,1195,'OP_DialogSelectMsg',109),(3049,1193,1195,'OP_DialogCloseMsg',110),(3050,1193,1195,'OP_RemoveSpellEffectMsg',111),(3051,1193,1195,'OP_RemoveConcentrationMsg',112),(3052,1193,1195,'OP_QuestJournalOpenMsg',113),(3053,1193,1195,'OP_QuestJournalInspectMsg',114),(3054,1193,1195,'OP_QuestJournalSetVisibleMsg',115),(3055,1193,1195,'OP_QuestJournalWaypointMsg',116),(3056,1193,1195,'OP_CreateGuildRequestMsg',119),(3057,1193,1195,'OP_CreateGuildReplyMsg',120),(3058,1193,1195,'OP_GuildsayMsg',121),(3059,1193,1195,'OP_FellowshipExpMsg',122),(3060,1193,1195,'OP_DeleteGuildMsg',123),(3061,1193,1195,'OP_GuildUpdateMsg',124),(3062,1193,1195,'OP_ConsignmentCloseStoreMsg',125),(3063,1193,1195,'OP_ConsignItemRequestMsg',126),(3064,1193,1195,'OP_ConsignItemResponseMsg',127),(3065,1193,1195,'OP_PurchaseConsignmentRequestMsg',128),(3066,1193,1195,'OP_LikeOption',135),(3067,1193,1195,'OP_PublishHouse',137),(3068,1193,1195,'OP_PlayerMadeInstacnesScreen',138),(3069,1193,1195,'OP_PlayerMadeInstances',139),(3070,1193,1195,'OP_HouseDeletedRemotelyMsg',140),(3071,1193,1195,'OP_UpdateHouseDataMsg',141),(3072,1193,1195,'OP_UpdateHouseAccessDataMsg',142),(3073,1193,1195,'OP_PlayerHouseBaseScreenMsg',143),(3074,1193,1195,'OP_PlayerHousePurchaseScreenMsg',144),(3075,1193,1195,'OP_PlayerHouseAccessUpdateMsg',145),(3076,1193,1195,'OP_PlayerHouseDisplayStatusMsg',146),(3077,1193,1195,'OP_PlayerHouseCloseUIMsg',147),(3078,1193,1195,'OP_BuyPlayerHouseMsg',148),(3079,1193,1195,'OP_BuyPlayerHouseTintMsg',149),(3080,1193,1195,'OP_CollectAllHouseItemsMsg',150),(3081,1193,1195,'OP_RelinquishHouseMsg',151),(3082,1193,1195,'OP_EnterHouseMsg',152),(3083,1193,1195,'OP_ExitHouseMsg',153),(3084,1193,1195,'OP_HouseDefaultAccessSetMsg',154),(3085,1193,1195,'OP_HouseAccessSetMsg',155),(3086,1193,1195,'OP_HouseAccessRemoveMsg',156),(3087,1193,1195,'OP_PayHouseUpkeepMsg',157),(3088,1193,1195,'OP_MoveableObjectPlacementCriteri',158),(3089,1193,1195,'OP_EnterMoveObjectModeMsg',159),(3090,1193,1195,'OP_PositionMoveableObject',160),(3091,1193,1195,'OP_CancelMoveObjectModeMsg',161),(3092,1193,1195,'OP_ShaderCustomizationMsg',162),(3093,1193,1195,'OP_ReplaceableSubMeshesMsg',163),(3094,1193,1195,'OP_HouseCustomizationScreenMsg',164),(3095,1193,1195,'OP_CustomizationPurchaseRequestMs',165),(3096,1193,1195,'OP_CustomizationSetRequestMsg',166),(3097,1193,1195,'OP_CustomizationReplyMsg',167),(3098,1193,1195,'OP_TintWidgetsMsg',168),(3099,1193,1195,'OP_ExamineConsignmentRequestMsg',169),(3100,1193,1195,'OP_ExamineConsignmentResponseMsg',170),(3101,1193,1195,'OP_UISettingsResponseMsg',171),(3102,1193,1195,'OP_UIResetMsg',172),(3103,1193,1195,'OP_KeymapLoadMsg',173),(3104,1193,1195,'OP_KeymapNoneMsg',174),(3105,1193,1195,'OP_KeymapDataMsg',175),(3106,1193,1195,'OP_KeymapSaveMsg',176),(3107,1193,1195,'OP_DispatchSpellCmdMsg',177),(3108,1193,1195,'OP_EntityVerbsRequestMsg',178),(3109,1193,1195,'OP_EntityVerbsReplyMsg',179),(3110,1193,1195,'OP_EntityVerbsVerbMsg',180),(3111,1193,1195,'OP_ChatRelationshipUpdateMsg',182),(3112,1193,1195,'OP_LootItemsRequestMsg',183),(3113,1193,1195,'OP_StoppedLootingMsg',184),(3114,1193,1195,'OP_SitMsg',185),(3115,1193,1195,'OP_StandMsg',186),(3116,1193,1195,'OP_SatMsg',187),(3117,1193,1195,'OP_StoodMsg',188),(3118,1193,1195,'OP_ClearForTakeOffMsg',189),(3119,1193,1195,'OP_ReadyForTakeOffMsg',190),(3120,1193,1195,'OP_ShowIllusionsMsg',191),(3121,1193,1195,'OP_HideIllusionsMsg',192),(3122,1193,1195,'OP_ExamineItemRequestMsg',193),(3123,1193,1195,'OP_ReadBookPageMsg',194),(3124,1193,1195,'OP_DefaultGroupOptionsRequestMsg',195),(3125,1193,1195,'OP_DefaultGroupOptionsMsg',196),(3126,1193,1195,'OP_GroupOptionsMsg',197),(3127,1193,1195,'OP_DisplayGroupOptionsScreenMsg',198),(3128,1193,1195,'OP_PetOptions',199),(3129,1193,1195,'OP_DisplayInnVisitScreenMsg',200),(3130,1193,1195,'OP_DumpSchedulerMsg',201),(3131,1193,1195,'OP_LSCheckAcctLockMsg',202),(3132,1193,1195,'OP_WSAcctLockStatusMsg',203),(3133,1193,1195,'OP_RequestHelpRepathMsg',204),(3134,1193,1195,'OP_RequestTargetLocMsg',205),(3135,1193,1195,'OP_UpdateMotdMsg',206),(3136,1193,1195,'OP_DestUpdateReq',208),(3137,1193,1195,'OP_PerformPlayerKnockbackMsg',211),(3138,1193,1195,'OP_PerformCameraShakeMsg',212),(3139,1193,1195,'OP_PopulateSkillMapsMsg',213),(3140,1193,1195,'OP_CancelledFeignMsg',214),(3141,1193,1195,'OP_SysClient',216),(3142,1193,1195,'OP_ShowCreateFromRecipeUIMsg',217),(3143,1193,1195,'OP_CancelCreateFromRecipeMsg',218),(3144,1193,1195,'OP_BeginItemCreationMsg',219),(3145,1193,1195,'OP_StopItemCreationMsg',220),(3146,1193,1195,'OP_ShowItemCreationProcessUIMsg',221),(3147,1193,1195,'OP_UpdateItemCreationProcessUIMsg',222),(3148,1193,1195,'OP_DisplayTSEventReactionMsg',223),(3149,1193,1195,'OP_ShowRecipeBookMsg',224),(3150,1193,1195,'OP_KnowledgebaseRequestMsg',225),(3151,1193,1195,'OP_KnowledgebaseResponseMsg',226),(3152,1193,1195,'OP_CSTicketHeaderRequestMsg',227),(3153,1193,1195,'OP_CSTicketInfoMsg',228),(3154,1193,1195,'OP_CSTicketCommentRequestMsg',229),(3155,1193,1195,'OP_CSTicketCommentResponseMsg',230),(3156,1193,1195,'OP_CSTicketCreateMsg',231),(3157,1193,1195,'OP_CSTicketAddCommentMsg',232),(3158,1193,1195,'OP_CSTicketDeleteMsg',233),(3159,1193,1195,'OP_CSTicketChangeNotificationMsg',234),(3160,1193,1195,'OP_WorldDataUpdateMsg',235),(3161,1193,1195,'OP_KnownLanguagesMsg',236),(3162,1193,1195,'OP_LsRequestClientCrashLogMsg',237),(3163,1193,1195,'OP_LsClientBaselogReplyMsg',238),(3164,1193,1195,'OP_LsClientCrashlogReplyMsg',239),(3165,1193,1195,'OP_LsClientAlertlogReplyMsg',240),(3166,1193,1195,'OP_LsClientVerifylogReplyMsg',241),(3167,1193,1195,'OP_ClientTeleportToLocationMsg',242),(3168,1193,1195,'OP_UpdateClientPredFlagsMsg',243),(3169,1193,1195,'OP_ChangeServerControlFlagMsg',244),(3170,1193,1195,'OP_CSToolsRequestMsg',245),(3171,1193,1195,'OP_CSToolsResponseMsg',246),(3172,1193,1195,'OP_AddSocialStructureStandingMsg',247),(3173,1193,1195,'OP_CreateBoatTransportsMsg',248),(3174,1193,1195,'OP_PositionBoatTransportMsg',249),(3175,1193,1195,'OP_MigrateBoatTransportMsg',250),(3176,1193,1195,'OP_MigrateBoatTransportReplyMsg',251),(3177,1193,1195,'OP_DisplayDebugNLLPointsMsg',252),(3178,1193,1195,'OP_ExamineInfoRequestMsg',253),(3179,1193,1195,'OP_QuickbarInitMsg',254),(3180,1193,1195,'OP_QuickbarUpdateMsg',255),(3181,1193,1195,'OP_MacroInitMsg',256),(3182,1193,1195,'OP_MacroUpdateMsg',257),(3183,1193,1195,'OP_QuestionnaireMsg',258),(3184,1193,1195,'OP_LevelChangedMsg',259),(3185,1193,1195,'OP_SpellGainedMsg',260),(3186,1193,1195,'OP_EncounterBrokenMsg',261),(3187,1193,1195,'OP_OnscreenMsgMsg',262),(3188,1193,1195,'OP_DisplayWarningMsg',263),(3189,1193,1195,'OP_ModifyGuildMsg',264),(3190,1193,1195,'OP_GuildEventMsg',265),(3191,1193,1195,'OP_GuildEventAddMsg',266),(3192,1193,1195,'OP_GuildEventActionMsg',267),(3193,1193,1195,'OP_GuildEventListMsg',268),(3194,1193,1195,'OP_RequestGuildEventDetailsMsg',269),(3195,1193,1195,'OP_GuildEventDetailsMsg',270),(3196,1193,1195,'OP_RequestGuildInfoMsg',271),(3197,1193,1195,'OP_GuildBankActionMsg',272),(3198,1193,1195,'OP_GuildBankActionResponseMsg',273),(3199,1193,1195,'OP_GuildBankItemDetailsRequestMsg',274),(3200,1193,1195,'OP_GuildBankItemDetailsResponseMs',275),(3201,1193,1195,'OP_GuildBankUpdateMsg',276),(3202,1193,1195,'OP_GuildBankEventListMsg',277),(3203,1193,1195,'OP_RequestGuildBankEventDetailsMs',278),(3204,1193,1195,'OP_RewardPackMsg',279),(3205,1193,1195,'OP_RenameGuildMsg',280),(3206,1193,1195,'OP_ZoneToFriendRequestMsg',281),(3207,1193,1195,'OP_ZoneToFriendReplyMsg',282),(3208,1193,1195,'OP_ChatCreateChannelMsg',283),(3209,1193,1195,'OP_ChatJoinChannelMsg',284),(3210,1193,1195,'OP_ChatWhoChannelMsg',285),(3211,1193,1195,'OP_ChatLeaveChannelMsg',286),(3212,1193,1195,'OP_ChatTellChannelMsg',287),(3213,1193,1195,'OP_ChatTellUserMsg',288),(3214,1193,1195,'OP_ChatToggleFriendMsg',289),(3215,1193,1195,'OP_BrokerAddBag',290),(3216,1193,1195,'OP_BrokerRemoveBag',291),(3217,1193,1195,'OP_ChatToggleIgnoreMsg',292),(3218,1193,1195,'OP_ChatSendFriendsMsg',293),(3219,1193,1195,'OP_ChatSendIgnoresMsg',294),(3220,1193,1195,'OP_QuestReward',318),(3221,1193,1195,'OP_ChatFiltersMsg',333),(3222,1193,1195,'OP_MailGetMessageMsg',336),(3223,1193,1195,'OP_MailSendMessageMsg',337),(3224,1193,1195,'OP_MailDeleteMessageMsg',338),(3225,1193,1195,'OP_MailGetHeadersReplyMsg',339),(3226,1193,1195,'OP_MailGetMessageReplyMsg',340),(3227,1193,1195,'OP_MailSendMessageReplyMsg',341),(3228,1193,1195,'OP_MailCommitSendMessageMsg',342),(3229,1193,1195,'OP_MailSendSystemMessageMsg',343),(3230,1193,1195,'OP_MailRemoveAttachFromMailMsg',344),(3231,1193,1195,'OP_WaypointRequestMsg',346),(3232,1193,1195,'OP_WaypointReplyMsg',347),(3233,1193,1195,'OP_WaypointSelectMsg',348),(3234,1193,1195,'OP_WaypointUpdateMsg',349),(3235,1193,1195,'OP_CharNameChangedMsg',350),(3236,1193,1195,'OP_ShowZoneTeleporterDestinations',351),(3237,1193,1195,'OP_SelectZoneTeleporterDestinatio',352),(3238,1193,1195,'OP_ReloadLocalizedTxtMsg',353),(3239,1193,1195,'OP_RequestGuildMembershipMsg',354),(3240,1193,1195,'OP_GuildMembershipResponseMsg',355),(3241,1193,1195,'OP_LeaveGuildNotifyMsg',356),(3242,1193,1195,'OP_JoinGuildNotifyMsg',357),(3243,1193,1195,'OP_AvatarUpdateMsg',358),(3244,1193,1195,'OP_BioUpdateMsg',360),(3245,1193,1195,'OP_InspectPlayerMsg',361),(3246,1193,1195,'OP_WSServerLockMsg',362),(3247,1193,1195,'OP_LSServerLockMsg',363),(3248,1193,1195,'OP_WSServerHideMsg',364),(3249,1193,1195,'OP_CsCategoryRequestMsg',365),(3250,1193,1195,'OP_CsCategoryResponseMsg',366),(3251,1193,1195,'OP_KnowledgeWindowSlotMappingMsg',367),(3252,1193,1195,'OP_AFKUpdateMsg',368),(3253,1193,1195,'OP_AnonUpdateMsg',369),(3254,1193,1195,'OP_UpdateActivePublicZonesMsg',370),(3255,1193,1195,'OP_UnknownNpcMsg',371),(3256,1193,1195,'OP_PromoFlagsDetailsMsg',372),(3257,1193,1195,'OP_ConsignViewCreateMsg',373),(3258,1193,1195,'OP_ConsignViewGetPageMsg',374),(3259,1193,1195,'OP_ConsignViewReleaseMsg',375),(3260,1193,1195,'OP_ConsignRemoveItemsMsg',376),(3261,1193,1195,'OP_UpdateDebugRadiiMsg',377),(3262,1193,1195,'OP_ReportMsg',378),(3263,1193,1195,'OP_UpdateRaidMsg',379),(3264,1193,1195,'OP_ConsignViewSortMsg',381),(3265,1193,1195,'OP_TitleUpdateMsg',382),(3266,1193,1195,'OP_ClientFellMsg',383),(3267,1193,1195,'OP_ClientInDeathRegionMsg',384),(3268,1193,1195,'OP_CampClientMsg',385),(3269,1193,1195,'OP_CSToolAccessResponseMsg',386),(3270,1193,1195,'OP_TrackingUpdateMsg',387),(3271,1193,1195,'OP_BeginTrackingMsg',388),(3272,1193,1195,'OP_StopTrackingMsg',389),(3273,1193,1195,'OP_GetAvatarAccessRequestForCSToo',391),(3274,1193,1195,'OP_AdvancementRequestMsg',392),(3275,1193,1195,'OP_MapFogDataInitMsg',393),(3276,1193,1195,'OP_MapFogDataUpdateMsg',394),(3277,1193,1195,'OP_CloseGroupInviteWindowMsg',395),(3278,1193,1195,'OP_UpdateGroupMemberDataMsg',396),(3279,1193,1195,'OP_WorldPingMsg',397),(3280,1193,1195,'OP_MoveLogUpdateMsg',388),(3281,1193,1195,'OP_OfferQuestMsg',399),(3282,1193,1195,'OP_WorldShutdownUpdateMsg',401),(3283,1193,1195,'OP_DisplayMailScreenMsg',402),(3284,1193,1195,'OP_ClientIdleBeginMsg',403),(3285,1193,1195,'OP_ClientIdleEndMsg',404),(3286,1193,1195,'OP_PurchaseConsignmentLoreCheckRe',405),(3287,1193,1195,'OP_NotifyApprenticeStoppedMentori',406),(3288,1193,1195,'OP_CorruptedClientMsg',407),(3289,1193,1195,'OP_WorldDataChangeMsg',408),(3290,1193,1195,'OP_MailEventNotificationMsg',409),(3291,1193,1195,'OP_RestartZoneMsg',410),(3292,1193,1195,'OP_FlightPathsMsg',411),(3293,1193,1195,'OP_CharacterLinkdeadMsg',412),(3294,1193,1195,'OP_CharTransferStartRequestMsg',413),(3295,1193,1195,'OP_CharTransferStartReplyMsg',414),(3296,1193,1195,'OP_CharTransferRequestMsg',415),(3297,1193,1195,'OP_CharTransferReplyMsg',416),(3298,1193,1195,'OP_CharTransferRollbackRequestMsg',417),(3299,1193,1195,'OP_CharTransferCommitRequestMsg',418),(3300,1193,1195,'OP_CharTransferRollbackReplyMsg',419),(3301,1193,1195,'OP_CharTransferCommitReplyMsg',420),(3302,1193,1195,'OP_GetCharacterSerializedRequestM',421),(3303,1193,1195,'OP_GetCharacterSerializedReplyMsg',422),(3304,1193,1195,'OP_CreateCharFromCBBRequestMsg',423),(3305,1193,1195,'OP_CreateCharFromCBBReplyMsg',424),(3306,1193,1195,'OP_HousingDataChangedMsg',425),(3307,1193,1195,'OP_HousingRestoreMsg',426),(3308,1193,1195,'OP_AuctionItem',427),(3309,1193,1195,'OP_AuctionItemReply',428),(3310,1193,1195,'OP_AuctionCoin',429),(3311,1193,1195,'OP_AuctionCoinReply',430),(3312,1193,1195,'OP_AuctionCharacter',431),(3313,1193,1195,'OP_AuctionCharacterReply',432),(3314,1193,1195,'OP_AuctionCommitMsg',433),(3315,1193,1195,'OP_AuctionAbortMsg',434),(3316,1193,1195,'OP_CharTransferValidateRequestMsg',435),(3317,1193,1195,'OP_CharTransferValidateReplyMsg',436),(3318,1193,1195,'OP_RaceRestrictionMsg',437),(3319,1193,1195,'OP_SetInstanceDisplayNameMsg',438),(3320,1193,1195,'OP_GetAuctionAssetIDMsg',439),(3321,1193,1195,'OP_GetAuctionAssetIDReplyMsg',440),(3322,1193,1195,'OP_ResendWorldChannelsMsg',441),(3323,1193,1195,'OP_DisplayExchangeScreenMsg',442),(3324,1193,1195,'OP_ArenaGameTypesMsg',443),(3325,1193,1195,'OP_AuditAuctionEventMsg',444),(3326,1193,1195,'OP_InviteRequestMsg',445),(3327,1193,1195,'OP_InviteResponseMsg',446),(3328,1193,1195,'OP_InviteTargetResponseMsg',447),(3329,1193,1195,'OP_InspectPlayerRequestMsg',448),(3330,1193,1195,'OP_DispatchMsg',449),(3331,1193,1195,'OP_DisplayEventMsg',450),(3332,1193,1195,'OP_PrePossessionMsg',451),(3333,1193,1195,'OP_PostPossessionMsg',452),(3334,1193,1195,'OP_ArenaCreate',454),(3335,1193,1195,'OP_ArenaList',455),(3336,1193,1195,'OP_ArenaWindow',463),(3337,1193,1195,'OP_HouseItemsList',481),(3338,1193,1195,'OP_CurrentPet',483),(3339,1193,1195,'OP_AdventureList',486),(3340,1193,1195,'OP_CancelSpellCast',487),(3341,1193,1195,'OP_UpdateTitleCmd',492),(3342,1193,1195,'OP_AttackAllowed',498),(3343,1193,1195,'OP_AttackNotAllowed',499),(3344,1193,1195,'OP_BagOptions',500),(3345,1193,1195,'OP_LFGGroupSearch',502),(3346,1193,1195,'OP_CharacterHousingList',505),(3347,1193,1195,'OP_DressingRoom',508),(3348,1193,1195,'OP_PlayLon',509),(3349,1193,1195,'OP_SkillInfoRequest',512),(3350,1193,1195,'OP_SkillInfoResponse',513),(3351,1193,1195,'OP_LFGUpdateMsg',516),(3352,1193,1195,'OP_BadLanguageFilter',517),(3353,1193,1195,'OP_VoiceChatChannel',518),(3354,1193,1195,'OP_MapRequest',519),(3355,1193,1195,'OP_MarketFundsUpdate',524),(3356,1193,1195,'OP_UIEvent',525),(3357,1193,1195,'OP_MarketAddFundsRequest',526),(3358,1193,1195,'OP_MarketAddFundsReply',527),(3359,1193,1195,'OP_MarketPurchase',529),(3360,1193,1195,'OP_MarketPlacePrices',530),(3361,1193,1195,'OP_MarketPlaceItems',533),(3362,1193,1195,'OP_RecipeBook',534),(3363,1193,1195,'OP_CreateCharacterDungeon',543),(3364,1193,1195,'OP_DungeonMakerEnter',544),(3365,1193,1195,'OP_DungeonMakerItemRequest',546),(3366,1193,1195,'OP_CharacterCreatedDungeons',547),(3367,1193,1195,'OP_DungeonMakerToolboxList',548),(3368,1193,1195,'OP_DungeonMakerUnknown',549),(3369,1193,1195,'OP_DungeonMakerUnknown1',550),(3370,1193,1195,'OP_PlayerPollPopup',552),(3371,1193,1195,'OP_PlayerPollAnswer',553),(3372,1193,1195,'OP_MentorPopup',554),(3373,1193,1195,'OP_LoadWelcomeWindow',556),(3374,1193,1195,'OP_OpenCharCust',557),(3375,1193,1195,'OP_SubmitCharCust',558),(3376,1193,1195,'OP_QueAllBgSolo',560),(3377,1193,1195,'OP_ZoneBgInstanceList',562),(3378,1193,1195,'OP_WorldTravelAvail',566),(3379,1193,1195,'OP_GarbagePacket',569),(3380,1193,1195,'OP_LoadCalendarEvents',570),(3381,1193,1195,'OP_VideoUploaded',571),(3382,1193,1195,'OP_SavageBarInitMsg',572),(3383,1193,1195,'OP_PetOptionsResponse',573),(3384,1193,1195,'OP_DungeonMakerItemResponse',574),(3385,1193,1195,'OP_CharacterMounts',576),(3386,1193,1195,'OP_EqBetaCopyRequest',585),(3387,1193,1195,'OP_EqHearChatCmd',586),(3388,1193,1195,'OP_EqDisplayTextCmd',587),(3389,1193,1195,'OP_EqCreateGhostCmd',588),(3390,1193,1195,'OP_EqCreateWidgetCmd',589),(3391,1193,1195,'OP_EqCreateSignWidgetCmd',590),(3392,1193,1195,'OP_EqDestroyGhostCmd',591),(3393,1193,1195,'OP_EqUpdateGhostCmd',592),(3394,1193,1195,'OP_EqSetControlGhostCmd',593),(3395,1193,1195,'OP_EqSetPOVGhostCmd',594),(3396,1193,1195,'OP_EqHearCombatCmd',595),(3397,1193,1195,'OP_EqHearSpellCastCmd',596),(3398,1193,1195,'OP_EQHearProcCmd',597),(3399,1193,1195,'OP_EQHearResEffectCmd',598),(3400,1193,1195,'OP_EqHearSpellInterruptCmd',599),(3401,1193,1195,'OP_EqHearSpellFizzleCmd',600),(3402,1193,1195,'OP_EqHearConsiderCmd',601),(3403,1193,1195,'OP_EqUpdateSubClassesCmd',602),(3404,1193,1195,'OP_EqCreateListBoxCmd',603),(3405,1193,1195,'OP_EqSetDebugPathPointsCmd',604),(3406,1193,1195,'OP_EqCannedEmoteCmd',606),(3407,1193,1195,'OP_EqStateCmd',607),(3408,1193,1195,'OP_EqPlaySoundCmd',608),(3409,1193,1195,'OP_EqPlaySound3DCmd',609),(3410,1193,1195,'OP_EqPlayVoiceCmd',610),(3411,1193,1195,'OP_EqHearDrowningCmd',611),(3412,1193,1195,'OP_EqHearDeathCmd',612),(3413,1193,1195,'OP_EqGroupMemberRemovedCmd',613),(3414,1193,1195,'OP_EqHearChainEffectCmd',614),(3415,1193,1195,'OP_EqReceiveOfferCmd',615),(3416,1193,1195,'OP_EqInspectPCResultsCmd',616),(3417,1193,1195,'OP_EqDrawablePathGraphCmd',617),(3418,1193,1195,'OP_EqDialogOpenCmd',618),(3419,1193,1195,'OP_EqDialogCloseCmd',619),(3420,1193,1195,'OP_EqFactionUpdateCmd',620),(3421,1193,1195,'OP_EqCollectionUpdateCmd',621),(3422,1193,1195,'OP_EqCollectionFilterCmd',622),(3423,1193,1195,'OP_EqCollectionItemCmd',623),(3424,1193,1195,'OP_EqQuestJournalUpdateCmd',624),(3425,1193,1195,'OP_EqMentoring',625),(3426,1193,1195,'OP_EqQuestJournalReplyCmd',626),(3427,1193,1195,'OP_EqQuestGroupCmd',627),(3428,1193,1195,'OP_EqUpdateMerchantCmd',628),(3429,1193,1195,'OP_EqUpdateStoreCmd',629),(3430,1193,1195,'OP_EqUpdatePlayerTradeCmd',630),(3431,1193,1195,'OP_EqHelpPathCmd',631),(3432,1193,1195,'OP_EqHelpPathClearCmd',632),(3433,1193,1195,'OP_EqUpdateBankCmd',633),(3434,1193,1195,'OP_EqExamineInfoCmd',634),(3435,1193,1195,'OP_EqCloseWindowCmd',635),(3436,1193,1195,'OP_EqUpdateLootCmd',636),(3437,1193,1195,'OP_EqJunctionListCmd',637),(3438,1193,1195,'OP_EqShowDeathWindowCmd',638),(3439,1193,1195,'OP_EqDisplaySpellFailCmd',639),(3440,1193,1195,'OP_EqSpellCastStartCmd',640),(3441,1193,1195,'OP_EqSpellCastEndCmd',641),(3442,1193,1195,'OP_EqResurrectedCmd',642),(3443,1193,1195,'OP_EqChoiceWinCmd',643),(3444,1193,1195,'OP_EqSetDefaultVerbCmd',644),(3445,1193,1195,'OP_EqInstructionWindowCmd',645),(3446,1193,1195,'OP_EqInstructionWindowCloseCmd',646),(3447,1193,1195,'OP_EqInstructionWindowGoalCmd',647),(3448,1193,1195,'OP_EqInstructionWindowTaskCmd',648),(3449,1193,1195,'OP_EqEnableGameEventCmd',649),(3450,1193,1195,'OP_EqShowWindowCmd',650),(3451,1193,1195,'OP_EqEnableWindowCmd',651),(3452,1193,1195,'OP_EqFlashWindowCmd',652),(3453,1193,1195,'OP_EqHearPlayFlavorCmd',654),(3454,1193,1195,'OP_EqUpdateSignWidgetCmd',655),(3455,1193,1195,'OP_EqDebugPVDCmd',656),(3456,1193,1195,'OP_EqShowBookCmd',657),(3457,1193,1195,'OP_EqQuestionnaireCmd',658),(3458,1193,1195,'OP_EqGetProbsCmd',660),(3459,1193,1195,'OP_EqHearHealCmd',661),(3460,1193,1195,'OP_EqChatChannelUpdateCmd',662),(3461,1193,1195,'OP_EqWhoChannelQueryReplyCmd',663),(3462,1193,1195,'OP_EqAvailWorldChannelsCmd',664),(3463,1193,1195,'OP_EqUpdateTargetCmd',665),(3464,1193,1195,'OP_BrokerSellList',666),(3465,1193,1195,'OP_EqConsignmentItemsCmd',667),(3466,1193,1195,'OP_EqStartBrokerCmd',669),(3467,1193,1195,'OP_EqMapExplorationCmd',670),(3468,1193,1195,'OP_EqStoreLogCmd',671),(3469,1193,1195,'OP_EqSpellMoveToRangeAndRetryCmd',672),(3470,1193,1195,'OP_EqUpdatePlayerMailCmd',673),(3471,1193,1195,'OP_GuildStatusUpdate',676),(3472,1193,1195,'OP_EqArenaResultsCmd',677),(3473,1193,1195,'OP_EqGuildBankEventActionCmd',678),(3474,1193,1195,'OP_EqGuildBankExamineInfoCmd',679),(3475,1193,1195,'OP_EqHearSpellNoLandCmd',680),(3476,1193,1195,'OP_Lottery',681),(3477,1193,1195,'OP_GuildRecruitingMemberInfo',682),(3478,1193,1195,'OP_GuildRecruiting',683),(3479,1193,1195,'OP_GuildRecruitingDetails',684),(3480,1193,1195,'OP_GuildRecruitingImage',685),(3481,1193,1195,'OP_TradeskillList',703),(3482,1193,1195,'OP_CharRenamed',687),(3483,1193,1195,'OP_UseAdornment',697),(3484,1193,1195,'OP_ExpPurchWindow',703),(3485,1193,1195,'OP_PointOfInterest',707),(3486,1193,1195,'OP_PointOfInterest2',708),(3487,1193,1195,'OP_TraitsList',709),(3488,1193,1195,'OP_CustomizeHouseDisplay',712),(3489,1193,1195,'OP_VoiceChatServer',713),(3490,1193,1195,'OP_SupplyDepot',717),(3491,1193,1195,'OP_EQHearThreatCmd',718),(3492,1193,1195,'OP_RecipeList',719),(3493,1193,1195,'OP_Research',720),(3494,1193,1195,'OP_CharacterCurrency',721),(3495,1193,1195,'OP_CharacterAchievements',722),(3496,1193,1195,'OP_AchievementUpdateMsg',723),(3497,1193,1195,'OP_EQHearDispellCmd',724),(3498,1193,1195,'OP_JournalQuestStoryline',725),(3499,1193,1195,'OP_DungeonPlayAsAvatarList',726),(3500,1193,1195,'OP_DungeonPlayAsAvatarSelected',727),(3501,1193,1195,'OP_MercHireWindow',728),(3502,1193,1195,'OP_MercUnknown',729),(3503,1193,1195,'OP_Unknown',746),(3504,1198,1199,'OP_LoginRequestMsg',0),(3505,1198,1199,'OP_LoginByNumRequestMsg',1),(3506,1198,1199,'OP_WSLoginRequestMsg',2),(3507,1198,1199,'OP_ESLoginRequestMsg',3),(3508,1198,1199,'OP_LoginReplyMsg',4),(3509,1198,1199,'OP_WSStatusReplyMsg',5),(3510,1198,1199,'OP_WorldStatusChangeMsg',6),(3511,1198,1199,'OP_AllWSDescRequestMsg',7),(3512,1198,1199,'OP_WorldListMsg',8),(3513,1198,1199,'OP_AllCharactersDescRequestMsg',9),(3514,1198,1199,'OP_AllCharactersDescReplyMsg',10),(3515,1198,1199,'OP_CreateCharacterRequestMsg',11),(3516,1198,1199,'OP_CreateCharacterReplyMsg',12),(3517,1198,1199,'OP_WSCreateCharacterRequestMsg',13),(3518,1198,1199,'OP_WSCreateCharacterReplyMsg',14),(3519,1198,1199,'OP_ReskinCharacterRequestMsg',15),(3520,1198,1199,'OP_DeleteCharacterRequestMsg',16),(3521,1198,1199,'OP_DeleteCharacterReplyMsg',17),(3522,1198,1199,'OP_PlayCharacterRequestMsg',18),(3523,1198,1199,'OP_PlayCharacterReplyMsg',19),(3524,1198,1199,'OP_ExpectClientAsCharacterReplyMs',22),(3525,1198,1199,'OP_ServerPlayCharacterRequestMsg',23),(3526,1198,1199,'OP_ServerPlayCharacterReplyMsg',24),(3527,1198,1199,'OP_ESInitMsg',25),(3528,1198,1199,'OP_ESReadyForClientsMsg',26),(3529,1198,1199,'OP_CreateZoneInstanceMsg',29),(3530,1198,1199,'OP_ZoneInstanceCreateReplyMsg',30),(3531,1198,1199,'OP_ZoneInstanceDestroyedMsg',31),(3532,1198,1199,'OP_ExpectClientAsCharacterRequest',32),(3533,1198,1199,'OP_ZoneInfoMsg',33),(3534,1198,1199,'OP_DoneLoadingZoneResourcesMsg',34),(3535,1198,1199,'OP_DoneSendingInitialEntitiesMsg',35),(3536,1198,1199,'OP_DoneLoadingEntityResourcesMsg',36),(3537,1198,1199,'OP_PredictionUpdateMsg',37),(3538,1198,1199,'OP_UpdatePositionMsg',39),(3539,1198,1199,'OP_SetRemoteCmdsMsg',41),(3540,1198,1199,'OP_RemoteCmdMsg',42),(3541,1198,1199,'OP_GameWorldTimeMsg',43),(3542,1198,1199,'OP_MOTDMsg',44),(3543,1198,1199,'OP_ZoneMOTDMsg',45),(3544,1198,1199,'OP_AvatarCreatedMsg',46),(3545,1198,1199,'OP_AvatarDestroyedMsg',47),(3546,1198,1199,'OP_RequestCampMsg',50),(3547,1198,1199,'OP_CampStartedMsg',51),(3548,1198,1199,'OP_CampAbortedMsg',52),(3549,1198,1199,'OP_WhoQueryRequestMsg',53),(3550,1198,1199,'OP_WhoQueryReplyMsg',54),(3551,1198,1199,'OP_MonitorReplyMsg',55),(3552,1198,1199,'OP_MonitorCharacterListMsg',56),(3553,1198,1199,'OP_MonitorCharacterListRequestMsg',57),(3554,1198,1199,'OP_ClientCmdMsg',58),(3555,1198,1199,'OP_DispatchESMsg',59),(3556,1198,1199,'OP_DispatchClientCmdMsg',60),(3557,1198,1199,'OP_UpdateTargetMsg',61),(3558,1198,1199,'OP_UpdateTargetLocMsg',62),(3559,1198,1199,'OP_UpdateCharacterSheetMsg',63),(3560,1198,1199,'OP_CharacterPet',64),(3561,1198,1199,'OP_CharacterMerc',65),(3562,1198,1199,'OP_UpdateSpellBookMsg',66),(3563,1198,1199,'OP_UpdateInventoryMsg',68),(3564,1198,1199,'OP_AfterInvSpellUpdate',69),(3565,1198,1199,'OP_UpdateRecipeBookMsg',70),(3566,1198,1199,'OP_RequestRecipeDetailsMsg',71),(3567,1198,1199,'OP_RecipeDetailsMsg',72),(3568,1198,1199,'OP_UpdateSkillBookMsg',73),(3569,1198,1199,'OP_UpdateSkillsMsg',74),(3570,1198,1199,'OP_UpdateOpportunityMsg',75),(3571,1198,1199,'OP_ChangeZoneMsg',77),(3572,1198,1199,'OP_ClientTeleportRequestMsg',78),(3573,1198,1199,'OP_TeleportWithinZoneMsg',79),(3574,1198,1199,'OP_TeleportWithinZoneNoReloadMsg',80),(3575,1198,1199,'OP_MigrateClientToZoneRequestMsg',81),(3576,1198,1199,'OP_MigrateClientToZoneReplyMsg',82),(3577,1198,1199,'OP_ReadyToZoneMsg',84),(3578,1198,1199,'OP_RemoveClientFromGroupMsg',85),(3579,1198,1199,'OP_RemoveGroupFromGroupMsg',86),(3580,1198,1199,'OP_MakeGroupLeaderMsg',87),(3581,1198,1199,'OP_GroupCreatedMsg',88),(3582,1198,1199,'OP_GroupDestroyedMsg',89),(3583,1198,1199,'OP_GroupMemberAddedMsg',90),(3584,1198,1199,'OP_GroupMemberRemovedMsg',91),(3585,1198,1199,'OP_GroupRemovedFromGroupMsg',92),(3586,1198,1199,'OP_GroupLeaderChangedMsg',93),(3587,1198,1199,'OP_GroupResendOOZDataMsg',94),(3588,1198,1199,'OP_GroupSettingsChangedMsg',95),(3589,1198,1199,'OP_OutOfZoneMemberDataMsg',96),(3590,1198,1199,'OP_SendLatestRequestMsg',97),(3591,1198,1199,'OP_ClearDataMsg',98),(3592,1198,1199,'OP_SetSocialMsg',99),(3593,1198,1199,'OP_ESStatusMsg',100),(3594,1198,1199,'OP_ESZoneInstanceStatusMsg',101),(3595,1198,1199,'OP_ZonesStatusRequestMsg',102),(3596,1198,1199,'OP_ZonesStatusMsg',103),(3597,1198,1199,'OP_ESWeatherRequestMsg',104),(3598,1198,1199,'OP_ESWeatherRequestEndMsg',105),(3599,1198,1199,'OP_DialogSelectMsg',109),(3600,1198,1199,'OP_DialogCloseMsg',110),(3601,1198,1199,'OP_RemoveSpellEffectMsg',111),(3602,1198,1199,'OP_RemoveConcentrationMsg',112),(3603,1198,1199,'OP_QuestJournalOpenMsg',113),(3604,1198,1199,'OP_QuestJournalInspectMsg',114),(3605,1198,1199,'OP_QuestJournalSetVisibleMsg',115),(3606,1198,1199,'OP_QuestJournalWaypointMsg',116),(3607,1198,1199,'OP_CreateGuildRequestMsg',119),(3608,1198,1199,'OP_CreateGuildReplyMsg',120),(3609,1198,1199,'OP_GuildsayMsg',121),(3610,1198,1199,'OP_FellowshipExpMsg',122),(3611,1198,1199,'OP_DeleteGuildMsg',123),(3612,1198,1199,'OP_GuildUpdateMsg',124),(3613,1198,1199,'OP_ConsignmentCloseStoreMsg',125),(3614,1198,1199,'OP_ConsignItemRequestMsg',126),(3615,1198,1199,'OP_ConsignItemResponseMsg',127),(3616,1198,1199,'OP_PurchaseConsignmentRequestMsg',128),(3617,1198,1199,'OP_LikeOption',135),(3618,1198,1199,'OP_PublishHouse',137),(3619,1198,1199,'OP_PlayerMadeInstacnesScreen',138),(3620,1198,1199,'OP_PlayerMadeInstances',139),(3621,1198,1199,'OP_HouseDeletedRemotelyMsg',140),(3622,1198,1199,'OP_UpdateHouseDataMsg',141),(3623,1198,1199,'OP_UpdateHouseAccessDataMsg',142),(3624,1198,1199,'OP_PlayerHouseBaseScreenMsg',143),(3625,1198,1199,'OP_PlayerHousePurchaseScreenMsg',144),(3626,1198,1199,'OP_PlayerHouseAccessUpdateMsg',145),(3627,1198,1199,'OP_PlayerHouseDisplayStatusMsg',146),(3628,1198,1199,'OP_PlayerHouseCloseUIMsg',147),(3629,1198,1199,'OP_BuyPlayerHouseMsg',148),(3630,1198,1199,'OP_BuyPlayerHouseTintMsg',149),(3631,1198,1199,'OP_CollectAllHouseItemsMsg',150),(3632,1198,1199,'OP_RelinquishHouseMsg',151),(3633,1198,1199,'OP_EnterHouseMsg',152),(3634,1198,1199,'OP_ExitHouseMsg',153),(3635,1198,1199,'OP_HouseDefaultAccessSetMsg',154),(3636,1198,1199,'OP_HouseAccessSetMsg',155),(3637,1198,1199,'OP_HouseAccessRemoveMsg',156),(3638,1198,1199,'OP_PayHouseUpkeepMsg',157),(3639,1198,1199,'OP_MoveableObjectPlacementCriteri',158),(3640,1198,1199,'OP_EnterMoveObjectModeMsg',159),(3641,1198,1199,'OP_PositionMoveableObject',160),(3642,1198,1199,'OP_CancelMoveObjectModeMsg',161),(3643,1198,1199,'OP_ShaderCustomizationMsg',162),(3644,1198,1199,'OP_ReplaceableSubMeshesMsg',163),(3645,1198,1199,'OP_HouseCustomizationScreenMsg',164),(3646,1198,1199,'OP_CustomizationPurchaseRequestMs',165),(3647,1198,1199,'OP_CustomizationSetRequestMsg',166),(3648,1198,1199,'OP_CustomizationReplyMsg',167),(3649,1198,1199,'OP_TintWidgetsMsg',168),(3650,1198,1199,'OP_ExamineConsignmentRequestMsg',169),(3651,1198,1199,'OP_ExamineConsignmentResponseMsg',170),(3652,1198,1199,'OP_UISettingsResponseMsg',171),(3653,1198,1199,'OP_UIResetMsg',172),(3654,1198,1199,'OP_KeymapLoadMsg',173),(3655,1198,1199,'OP_KeymapNoneMsg',174),(3656,1198,1199,'OP_KeymapDataMsg',175),(3657,1198,1199,'OP_KeymapSaveMsg',176),(3658,1198,1199,'OP_DispatchSpellCmdMsg',177),(3659,1198,1199,'OP_EntityVerbsRequestMsg',178),(3660,1198,1199,'OP_EntityVerbsReplyMsg',179),(3661,1198,1199,'OP_EntityVerbsVerbMsg',180),(3662,1198,1199,'OP_ChatRelationshipUpdateMsg',182),(3663,1198,1199,'OP_LootItemsRequestMsg',183),(3664,1198,1199,'OP_StoppedLootingMsg',184),(3665,1198,1199,'OP_SitMsg',185),(3666,1198,1199,'OP_StandMsg',186),(3667,1198,1199,'OP_SatMsg',187),(3668,1198,1199,'OP_StoodMsg',188),(3669,1198,1199,'OP_ClearForTakeOffMsg',189),(3670,1198,1199,'OP_ReadyForTakeOffMsg',190),(3671,1198,1199,'OP_ShowIllusionsMsg',191),(3672,1198,1199,'OP_HideIllusionsMsg',192),(3673,1198,1199,'OP_ExamineItemRequestMsg',193),(3674,1198,1199,'OP_ReadBookPageMsg',194),(3675,1198,1199,'OP_DefaultGroupOptionsRequestMsg',195),(3676,1198,1199,'OP_DefaultGroupOptionsMsg',196),(3677,1198,1199,'OP_GroupOptionsMsg',197),(3678,1198,1199,'OP_DisplayGroupOptionsScreenMsg',198),(3679,1198,1199,'OP_PetOptions',199),(3680,1198,1199,'OP_DisplayInnVisitScreenMsg',200),(3681,1198,1199,'OP_DumpSchedulerMsg',201),(3682,1198,1199,'OP_LSCheckAcctLockMsg',202),(3683,1198,1199,'OP_WSAcctLockStatusMsg',203),(3684,1198,1199,'OP_RequestHelpRepathMsg',204),(3685,1198,1199,'OP_RequestTargetLocMsg',205),(3686,1198,1199,'OP_UpdateMotdMsg',206),(3687,1198,1199,'OP_DestUpdateReq',208),(3688,1198,1199,'OP_PerformPlayerKnockbackMsg',211),(3689,1198,1199,'OP_PerformCameraShakeMsg',212),(3690,1198,1199,'OP_PopulateSkillMapsMsg',213),(3691,1198,1199,'OP_CancelledFeignMsg',214),(3692,1198,1199,'OP_SysClient',216),(3693,1198,1199,'OP_ShowCreateFromRecipeUIMsg',217),(3694,1198,1199,'OP_CancelCreateFromRecipeMsg',218),(3695,1198,1199,'OP_BeginItemCreationMsg',219),(3696,1198,1199,'OP_StopItemCreationMsg',220),(3697,1198,1199,'OP_ShowItemCreationProcessUIMsg',221),(3698,1198,1199,'OP_UpdateItemCreationProcessUIMsg',222),(3699,1198,1199,'OP_DisplayTSEventReactionMsg',223),(3700,1198,1199,'OP_ShowRecipeBookMsg',224),(3701,1198,1199,'OP_KnowledgebaseRequestMsg',225),(3702,1198,1199,'OP_KnowledgebaseResponseMsg',226),(3703,1198,1199,'OP_CSTicketHeaderRequestMsg',227),(3704,1198,1199,'OP_CSTicketInfoMsg',228),(3705,1198,1199,'OP_CSTicketCommentRequestMsg',229),(3706,1198,1199,'OP_CSTicketCommentResponseMsg',230),(3707,1198,1199,'OP_CSTicketCreateMsg',231),(3708,1198,1199,'OP_CSTicketAddCommentMsg',232),(3709,1198,1199,'OP_CSTicketDeleteMsg',233),(3710,1198,1199,'OP_CSTicketChangeNotificationMsg',234),(3711,1198,1199,'OP_WorldDataUpdateMsg',235),(3712,1198,1199,'OP_KnownLanguagesMsg',236),(3713,1198,1199,'OP_LsRequestClientCrashLogMsg',237),(3714,1198,1199,'OP_LsClientBaselogReplyMsg',238),(3715,1198,1199,'OP_LsClientCrashlogReplyMsg',239),(3716,1198,1199,'OP_LsClientAlertlogReplyMsg',240),(3717,1198,1199,'OP_LsClientVerifylogReplyMsg',241),(3718,1198,1199,'OP_ClientTeleportToLocationMsg',242),(3719,1198,1199,'OP_UpdateClientPredFlagsMsg',243),(3720,1198,1199,'OP_ChangeServerControlFlagMsg',244),(3721,1198,1199,'OP_CSToolsRequestMsg',245),(3722,1198,1199,'OP_CSToolsResponseMsg',246),(3723,1198,1199,'OP_AddSocialStructureStandingMsg',247),(3724,1198,1199,'OP_CreateBoatTransportsMsg',248),(3725,1198,1199,'OP_PositionBoatTransportMsg',249),(3726,1198,1199,'OP_MigrateBoatTransportMsg',250),(3727,1198,1199,'OP_MigrateBoatTransportReplyMsg',251),(3728,1198,1199,'OP_DisplayDebugNLLPointsMsg',252),(3729,1198,1199,'OP_ExamineInfoRequestMsg',253),(3730,1198,1199,'OP_QuickbarInitMsg',254),(3731,1198,1199,'OP_QuickbarUpdateMsg',255),(3732,1198,1199,'OP_MacroInitMsg',256),(3733,1198,1199,'OP_MacroUpdateMsg',257),(3734,1198,1199,'OP_QuestionnaireMsg',258),(3735,1198,1199,'OP_LevelChangedMsg',259),(3736,1198,1199,'OP_SpellGainedMsg',260),(3737,1198,1199,'OP_EncounterBrokenMsg',261),(3738,1198,1199,'OP_OnscreenMsgMsg',262),(3739,1198,1199,'OP_DisplayWarningMsg',263),(3740,1198,1199,'OP_ModifyGuildMsg',264),(3741,1198,1199,'OP_GuildEventMsg',265),(3742,1198,1199,'OP_GuildEventAddMsg',266),(3743,1198,1199,'OP_GuildEventActionMsg',267),(3744,1198,1199,'OP_GuildEventListMsg',268),(3745,1198,1199,'OP_RequestGuildEventDetailsMsg',269),(3746,1198,1199,'OP_GuildEventDetailsMsg',270),(3747,1198,1199,'OP_RequestGuildInfoMsg',271),(3748,1198,1199,'OP_GuildBankActionMsg',272),(3749,1198,1199,'OP_GuildBankActionResponseMsg',273),(3750,1198,1199,'OP_GuildBankItemDetailsRequestMsg',274),(3751,1198,1199,'OP_GuildBankItemDetailsResponseMs',275),(3752,1198,1199,'OP_GuildBankUpdateMsg',276),(3753,1198,1199,'OP_GuildBankEventListMsg',277),(3754,1198,1199,'OP_RequestGuildBankEventDetailsMs',278),(3755,1198,1199,'OP_RewardPackMsg',279),(3756,1198,1199,'OP_RenameGuildMsg',280),(3757,1198,1199,'OP_ZoneToFriendRequestMsg',281),(3758,1198,1199,'OP_ZoneToFriendReplyMsg',282),(3759,1198,1199,'OP_ChatCreateChannelMsg',283),(3760,1198,1199,'OP_ChatJoinChannelMsg',284),(3761,1198,1199,'OP_ChatWhoChannelMsg',285),(3762,1198,1199,'OP_ChatLeaveChannelMsg',286),(3763,1198,1199,'OP_ChatTellChannelMsg',287),(3764,1198,1199,'OP_ChatTellUserMsg',288),(3765,1198,1199,'OP_ChatToggleFriendMsg',289),(3766,1198,1199,'OP_BrokerAddBag',290),(3767,1198,1199,'OP_BrokerRemoveBag',291),(3768,1198,1199,'OP_ChatToggleIgnoreMsg',292),(3769,1198,1199,'OP_ChatSendFriendsMsg',293),(3770,1198,1199,'OP_ChatSendIgnoresMsg',294),(3771,1198,1199,'OP_QuestReward',318),(3772,1198,1199,'OP_ChatFiltersMsg',333),(3773,1198,1199,'OP_MailGetMessageMsg',336),(3774,1198,1199,'OP_MailSendMessageMsg',337),(3775,1198,1199,'OP_MailDeleteMessageMsg',338),(3776,1198,1199,'OP_MailGetHeadersReplyMsg',339),(3777,1198,1199,'OP_MailGetMessageReplyMsg',340),(3778,1198,1199,'OP_MailSendMessageReplyMsg',341),(3779,1198,1199,'OP_MailCommitSendMessageMsg',342),(3780,1198,1199,'OP_MailSendSystemMessageMsg',343),(3781,1198,1199,'OP_MailRemoveAttachFromMailMsg',344),(3782,1198,1199,'OP_WaypointRequestMsg',346),(3783,1198,1199,'OP_WaypointReplyMsg',347),(3784,1198,1199,'OP_WaypointSelectMsg',348),(3785,1198,1199,'OP_WaypointUpdateMsg',349),(3786,1198,1199,'OP_CharNameChangedMsg',350),(3787,1198,1199,'OP_ShowZoneTeleporterDestinations',351),(3788,1198,1199,'OP_SelectZoneTeleporterDestinatio',352),(3789,1198,1199,'OP_ReloadLocalizedTxtMsg',353),(3790,1198,1199,'OP_RequestGuildMembershipMsg',354),(3791,1198,1199,'OP_GuildMembershipResponseMsg',355),(3792,1198,1199,'OP_LeaveGuildNotifyMsg',356),(3793,1198,1199,'OP_JoinGuildNotifyMsg',357),(3794,1198,1199,'OP_AvatarUpdateMsg',358),(3795,1198,1199,'OP_BioUpdateMsg',360),(3796,1198,1199,'OP_InspectPlayerMsg',361),(3797,1198,1199,'OP_WSServerLockMsg',362),(3798,1198,1199,'OP_LSServerLockMsg',363),(3799,1198,1199,'OP_WSServerHideMsg',364),(3800,1198,1199,'OP_CsCategoryRequestMsg',365),(3801,1198,1199,'OP_CsCategoryResponseMsg',366),(3802,1198,1199,'OP_KnowledgeWindowSlotMappingMsg',367),(3803,1198,1199,'OP_AFKUpdateMsg',368),(3804,1198,1199,'OP_AnonUpdateMsg',369),(3805,1198,1199,'OP_UpdateActivePublicZonesMsg',370),(3806,1198,1199,'OP_UnknownNpcMsg',371),(3807,1198,1199,'OP_PromoFlagsDetailsMsg',372),(3808,1198,1199,'OP_ConsignViewCreateMsg',373),(3809,1198,1199,'OP_ConsignViewGetPageMsg',374),(3810,1198,1199,'OP_ConsignViewReleaseMsg',375),(3811,1198,1199,'OP_ConsignRemoveItemsMsg',376),(3812,1198,1199,'OP_UpdateDebugRadiiMsg',377),(3813,1198,1199,'OP_ReportMsg',378),(3814,1198,1199,'OP_UpdateRaidMsg',379),(3815,1198,1199,'OP_ConsignViewSortMsg',381),(3816,1198,1199,'OP_TitleUpdateMsg',382),(3817,1198,1199,'OP_ClientFellMsg',383),(3818,1198,1199,'OP_ClientInDeathRegionMsg',384),(3819,1198,1199,'OP_CampClientMsg',385),(3820,1198,1199,'OP_CSToolAccessResponseMsg',386),(3821,1198,1199,'OP_TrackingUpdateMsg',387),(3822,1198,1199,'OP_BeginTrackingMsg',388),(3823,1198,1199,'OP_StopTrackingMsg',389),(3824,1198,1199,'OP_GetAvatarAccessRequestForCSToo',391),(3825,1198,1199,'OP_AdvancementRequestMsg',392),(3826,1198,1199,'OP_MapFogDataInitMsg',393),(3827,1198,1199,'OP_MapFogDataUpdateMsg',394),(3828,1198,1199,'OP_CloseGroupInviteWindowMsg',395),(3829,1198,1199,'OP_UpdateGroupMemberDataMsg',396),(3830,1198,1199,'OP_WorldPingMsg',397),(3831,1198,1199,'OP_MoveLogUpdateMsg',388),(3832,1198,1199,'OP_OfferQuestMsg',399),(3833,1198,1199,'OP_WorldShutdownUpdateMsg',401),(3834,1198,1199,'OP_DisplayMailScreenMsg',402),(3835,1198,1199,'OP_ClientIdleBeginMsg',403),(3836,1198,1199,'OP_ClientIdleEndMsg',404),(3837,1198,1199,'OP_PurchaseConsignmentLoreCheckRe',405),(3838,1198,1199,'OP_NotifyApprenticeStoppedMentori',406),(3839,1198,1199,'OP_CorruptedClientMsg',407),(3840,1198,1199,'OP_WorldDataChangeMsg',408),(3841,1198,1199,'OP_MailEventNotificationMsg',409),(3842,1198,1199,'OP_RestartZoneMsg',410),(3843,1198,1199,'OP_FlightPathsMsg',411),(3844,1198,1199,'OP_CharacterLinkdeadMsg',412),(3845,1198,1199,'OP_CharTransferStartRequestMsg',413),(3846,1198,1199,'OP_CharTransferStartReplyMsg',414),(3847,1198,1199,'OP_CharTransferRequestMsg',415),(3848,1198,1199,'OP_CharTransferReplyMsg',416),(3849,1198,1199,'OP_CharTransferRollbackRequestMsg',417),(3850,1198,1199,'OP_CharTransferCommitRequestMsg',418),(3851,1198,1199,'OP_CharTransferRollbackReplyMsg',419),(3852,1198,1199,'OP_CharTransferCommitReplyMsg',420),(3853,1198,1199,'OP_GetCharacterSerializedRequestM',421),(3854,1198,1199,'OP_GetCharacterSerializedReplyMsg',422),(3855,1198,1199,'OP_CreateCharFromCBBRequestMsg',423),(3856,1198,1199,'OP_CreateCharFromCBBReplyMsg',424),(3857,1198,1199,'OP_HousingDataChangedMsg',425),(3858,1198,1199,'OP_HousingRestoreMsg',426),(3859,1198,1199,'OP_AuctionItem',427),(3860,1198,1199,'OP_AuctionItemReply',428),(3861,1198,1199,'OP_AuctionCoin',429),(3862,1198,1199,'OP_AuctionCoinReply',430),(3863,1198,1199,'OP_AuctionCharacter',431),(3864,1198,1199,'OP_AuctionCharacterReply',432),(3865,1198,1199,'OP_AuctionCommitMsg',433),(3866,1198,1199,'OP_AuctionAbortMsg',434),(3867,1198,1199,'OP_CharTransferValidateRequestMsg',435),(3868,1198,1199,'OP_CharTransferValidateReplyMsg',436),(3869,1198,1199,'OP_RaceRestrictionMsg',437),(3870,1198,1199,'OP_SetInstanceDisplayNameMsg',438),(3871,1198,1199,'OP_GetAuctionAssetIDMsg',439),(3872,1198,1199,'OP_GetAuctionAssetIDReplyMsg',440),(3873,1198,1199,'OP_ResendWorldChannelsMsg',441),(3874,1198,1199,'OP_DisplayExchangeScreenMsg',442),(3875,1198,1199,'OP_ArenaGameTypesMsg',443),(3876,1198,1199,'OP_AuditAuctionEventMsg',444),(3877,1198,1199,'OP_InviteRequestMsg',445),(3878,1198,1199,'OP_InviteResponseMsg',446),(3879,1198,1199,'OP_InviteTargetResponseMsg',447),(3880,1198,1199,'OP_InspectPlayerRequestMsg',448),(3881,1198,1199,'OP_DispatchMsg',449),(3882,1198,1199,'OP_DisplayEventMsg',450),(3883,1198,1199,'OP_PrePossessionMsg',451),(3884,1198,1199,'OP_PostPossessionMsg',452),(3885,1198,1199,'OP_ArenaCreate',454),(3886,1198,1199,'OP_ArenaList',455),(3887,1198,1199,'OP_ArenaWindow',463),(3888,1198,1199,'OP_HouseItemsList',481),(3889,1198,1199,'OP_CurrentPet',483),(3890,1198,1199,'OP_AdventureList',486),(3891,1198,1199,'OP_CancelSpellCast',487),(3892,1198,1199,'OP_UpdateTitleCmd',492),(3893,1198,1199,'OP_AttackAllowed',498),(3894,1198,1199,'OP_AttackNotAllowed',499),(3895,1198,1199,'OP_BagOptions',500),(3896,1198,1199,'OP_LFGGroupSearch',502),(3897,1198,1199,'OP_CharacterHousingList',505),(3898,1198,1199,'OP_DressingRoom',508),(3899,1198,1199,'OP_PlayLon',509),(3900,1198,1199,'OP_SkillInfoRequest',512),(3901,1198,1199,'OP_SkillInfoResponse',513),(3902,1198,1199,'OP_LFGUpdateMsg',516),(3903,1198,1199,'OP_BadLanguageFilter',517),(3904,1198,1199,'OP_VoiceChatChannel',518),(3905,1198,1199,'OP_MapRequest',519),(3906,1198,1199,'OP_MarketFundsUpdate',524),(3907,1198,1199,'OP_UIEvent',525),(3908,1198,1199,'OP_MarketAddFundsRequest',526),(3909,1198,1199,'OP_MarketAddFundsReply',527),(3910,1198,1199,'OP_MarketPurchase',529),(3911,1198,1199,'OP_MarketPlacePrices',530),(3912,1198,1199,'OP_MarketPlaceItems',533),(3913,1198,1199,'OP_RecipeBook',534),(3914,1198,1199,'OP_CreateCharacterDungeon',543),(3915,1198,1199,'OP_DungeonMakerEnter',544),(3916,1198,1199,'OP_DungeonMakerItemRequest',546),(3917,1198,1199,'OP_CharacterCreatedDungeons',547),(3918,1198,1199,'OP_DungeonMakerToolboxList',548),(3919,1198,1199,'OP_DungeonMakerUnknown',549),(3920,1198,1199,'OP_DungeonMakerUnknown1',550),(3921,1198,1199,'OP_PlayerPollPopup',552),(3922,1198,1199,'OP_PlayerPollAnswer',553),(3923,1198,1199,'OP_MentorPopup',554),(3924,1198,1199,'OP_LoadWelcomeWindow',556),(3925,1198,1199,'OP_OpenCharCust',557),(3926,1198,1199,'OP_SubmitCharCust',558),(3927,1198,1199,'OP_QueAllBgSolo',560),(3928,1198,1199,'OP_ZoneBgInstanceList',562),(3929,1198,1199,'OP_WorldTravelAvail',566),(3930,1198,1199,'OP_GarbagePacket',569),(3931,1198,1199,'OP_LoadCalendarEvents',570),(3932,1198,1199,'OP_VideoUploaded',571),(3933,1198,1199,'OP_SavageBarInitMsg',572),(3934,1198,1199,'OP_PetOptionsResponse',573),(3935,1198,1199,'OP_DungeonMakerItemResponse',574),(3936,1198,1199,'OP_CharacterMounts',576),(3937,1198,1199,'OP_EqBetaCopyRequest',586),(3938,1198,1199,'OP_EqHearChatCmd',587),(3939,1198,1199,'OP_EqDisplayTextCmd',588),(3940,1198,1199,'OP_EqCreateGhostCmd',589),(3941,1198,1199,'OP_EqCreateWidgetCmd',590),(3942,1198,1199,'OP_EqCreateSignWidgetCmd',591),(3943,1198,1199,'OP_EqDestroyGhostCmd',592),(3944,1198,1199,'OP_EqUpdateGhostCmd',593),(3945,1198,1199,'OP_EqSetControlGhostCmd',594),(3946,1198,1199,'OP_EqSetPOVGhostCmd',595),(3947,1198,1199,'OP_EqHearCombatCmd',596),(3948,1198,1199,'OP_EqHearSpellCastCmd',597),(3949,1198,1199,'OP_EQHearProcCmd',598),(3950,1198,1199,'OP_EQHearResEffectCmd',599),(3951,1198,1199,'OP_EqHearSpellInterruptCmd',600),(3952,1198,1199,'OP_EqHearSpellFizzleCmd',601),(3953,1198,1199,'OP_EqHearConsiderCmd',602),(3954,1198,1199,'OP_EqUpdateSubClassesCmd',603),(3955,1198,1199,'OP_EqCreateListBoxCmd',604),(3956,1198,1199,'OP_EqSetDebugPathPointsCmd',605),(3957,1198,1199,'OP_EqCannedEmoteCmd',607),(3958,1198,1199,'OP_EqStateCmd',608),(3959,1198,1199,'OP_EqPlaySoundCmd',609),(3960,1198,1199,'OP_EqPlaySound3DCmd',610),(3961,1198,1199,'OP_EqPlayVoiceCmd',611),(3962,1198,1199,'OP_EqHearDrowningCmd',612),(3963,1198,1199,'OP_EqHearDeathCmd',613),(3964,1198,1199,'OP_EqGroupMemberRemovedCmd',614),(3965,1198,1199,'OP_EqHearChainEffectCmd',615),(3966,1198,1199,'OP_EqReceiveOfferCmd',616),(3967,1198,1199,'OP_EqInspectPCResultsCmd',617),(3968,1198,1199,'OP_EqDrawablePathGraphCmd',618),(3969,1198,1199,'OP_EqDialogOpenCmd',619),(3970,1198,1199,'OP_EqDialogCloseCmd',620),(3971,1198,1199,'OP_EqFactionUpdateCmd',621),(3972,1198,1199,'OP_EqCollectionUpdateCmd',622),(3973,1198,1199,'OP_EqCollectionFilterCmd',623),(3974,1198,1199,'OP_EqCollectionItemCmd',624),(3975,1198,1199,'OP_EqQuestJournalUpdateCmd',625),(3976,1198,1199,'OP_EqMentoring',626),(3977,1198,1199,'OP_EqQuestJournalReplyCmd',627),(3978,1198,1199,'OP_EqQuestGroupCmd',628),(3979,1198,1199,'OP_EqUpdateMerchantCmd',629),(3980,1198,1199,'OP_EqUpdateStoreCmd',630),(3981,1198,1199,'OP_EqUpdatePlayerTradeCmd',631),(3982,1198,1199,'OP_EqHelpPathCmd',632),(3983,1198,1199,'OP_EqHelpPathClearCmd',633),(3984,1198,1199,'OP_EqUpdateBankCmd',634),(3985,1198,1199,'OP_EqExamineInfoCmd',635),(3986,1198,1199,'OP_EqCloseWindowCmd',636),(3987,1198,1199,'OP_EqUpdateLootCmd',637),(3988,1198,1199,'OP_EqJunctionListCmd',638),(3989,1198,1199,'OP_EqShowDeathWindowCmd',639),(3990,1198,1199,'OP_EqDisplaySpellFailCmd',640),(3991,1198,1199,'OP_EqSpellCastStartCmd',641),(3992,1198,1199,'OP_EqSpellCastEndCmd',642),(3993,1198,1199,'OP_EqResurrectedCmd',643),(3994,1198,1199,'OP_EqChoiceWinCmd',644),(3995,1198,1199,'OP_EqSetDefaultVerbCmd',645),(3996,1198,1199,'OP_EqInstructionWindowCmd',646),(3997,1198,1199,'OP_EqInstructionWindowCloseCmd',647),(3998,1198,1199,'OP_EqInstructionWindowGoalCmd',648),(3999,1198,1199,'OP_EqInstructionWindowTaskCmd',649),(4000,1198,1199,'OP_EqEnableGameEventCmd',650),(4001,1198,1199,'OP_EqShowWindowCmd',651),(4002,1198,1199,'OP_EqEnableWindowCmd',652),(4003,1198,1199,'OP_EqFlashWindowCmd',653),(4004,1198,1199,'OP_EqHearPlayFlavorCmd',655),(4005,1198,1199,'OP_EqUpdateSignWidgetCmd',656),(4006,1198,1199,'OP_EqDebugPVDCmd',657),(4007,1198,1199,'OP_EqShowBookCmd',658),(4008,1198,1199,'OP_EqQuestionnaireCmd',659),(4009,1198,1199,'OP_EqGetProbsCmd',661),(4010,1198,1199,'OP_EqHearHealCmd',662),(4011,1198,1199,'OP_EqChatChannelUpdateCmd',663),(4012,1198,1199,'OP_EqWhoChannelQueryReplyCmd',664),(4013,1198,1199,'OP_EqAvailWorldChannelsCmd',665),(4014,1198,1199,'OP_EqUpdateTargetCmd',666),(4015,1198,1199,'OP_BrokerSellList',667),(4016,1198,1199,'OP_EqConsignmentItemsCmd',668),(4017,1198,1199,'OP_EqStartBrokerCmd',670),(4018,1198,1199,'OP_EqMapExplorationCmd',671),(4019,1198,1199,'OP_EqStoreLogCmd',672),(4020,1198,1199,'OP_EqSpellMoveToRangeAndRetryCmd',673),(4021,1198,1199,'OP_EqUpdatePlayerMailCmd',674),(4022,1198,1199,'OP_GuildStatusUpdate',677),(4023,1198,1199,'OP_EqArenaResultsCmd',678),(4024,1198,1199,'OP_EqGuildBankEventActionCmd',679),(4025,1198,1199,'OP_EqGuildBankExamineInfoCmd',680),(4026,1198,1199,'OP_EqHearSpellNoLandCmd',681),(4027,1198,1199,'OP_Lottery',682),(4028,1198,1199,'OP_GuildRecruitingMemberInfo',683),(4029,1198,1199,'OP_GuildRecruiting',684),(4030,1198,1199,'OP_GuildRecruitingDetails',685),(4031,1198,1199,'OP_GuildRecruitingImage',686),(4032,1198,1199,'OP_TradeskillList',704),(4033,1198,1199,'OP_CharRenamed',688),(4034,1198,1199,'OP_UseAdornment',698),(4035,1198,1199,'OP_ExpPurchWindow',704),(4036,1198,1199,'OP_PointOfInterest',708),(4037,1198,1199,'OP_PointOfInterest2',709),(4038,1198,1199,'OP_TraitsList',710),(4039,1198,1199,'OP_CustomizeHouseDisplay',713),(4040,1198,1199,'OP_VoiceChatServer',714),(4041,1198,1199,'OP_SupplyDepot',718),(4042,1198,1199,'OP_EQHearThreatCmd',719),(4043,1198,1199,'OP_RecipeList',720),(4044,1198,1199,'OP_Research',721),(4045,1198,1199,'OP_CharacterCurrency',722),(4046,1198,1199,'OP_CharacterAchievements',723),(4047,1198,1199,'OP_AchievementUpdateMsg',724),(4048,1198,1199,'OP_EQHearDispellCmd',725),(4049,1198,1199,'OP_JournalQuestStoryline',726),(4050,1198,1199,'OP_DungeonPlayAsAvatarList',727),(4051,1198,1199,'OP_DungeonPlayAsAvatarSelected',728),(4052,1198,1199,'OP_MercHireWindow',729),(4053,1198,1199,'OP_MercUnknown',730),(4054,1198,1199,'OP_Unknown',747),(4055,0,0,'OP_BrokerAddBag',9999),(4056,839,844,'OP_BrokerAddBag',9999),(4057,908,927,'OP_BrokerAddBag',9999),(4058,1008,1011,'OP_BrokerAddBag',9999),(4059,1045,1046,'OP_BrokerAddBag',9999),(4060,1096,1096,'OP_BrokerAddBag',9999),(4062,0,0,'OP_CharacterCurrency',654),(4063,839,844,'OP_CharacterCurrency',654),(4064,908,927,'OP_CharacterCurrency',654),(4065,1008,1011,'OP_CharacterCurrency',654),(4066,1045,1046,'OP_CharacterCurrency',673),(4067,1096,1096,'OP_CharacterCurrency',676),(4068,0,0,'OP_CharacterPet',9999),(4069,839,844,'OP_CharacterPet',9999),(4070,908,927,'OP_CharacterPet',9999),(4071,1008,1011,'OP_CharacterPet',9999),(4072,1045,1046,'OP_CharacterPet',9999),(4073,1096,1096,'OP_CharacterPet',9999),(4075,0,0,'OP_TradeskillList',9999),(4076,839,844,'OP_TradeskillList',9999),(4077,908,927,'OP_TradeskillList',9999),(4078,1008,1011,'OP_TradeskillList',9999),(4079,1045,1046,'OP_TradeskillList',9999),(4083,1204,1205,'OP_LoginRequestMsg',0),(4084,1204,1205,'OP_LoginByNumRequestMsg',1),(4085,1204,1205,'OP_WSLoginRequestMsg',2),(4086,1204,1205,'OP_ESLoginRequestMsg',3),(4087,1204,1205,'OP_LoginReplyMsg',4),(4088,1204,1205,'OP_WSStatusReplyMsg',5),(4089,1204,1205,'OP_WorldStatusChangeMsg',6),(4090,1204,1205,'OP_AllWSDescRequestMsg',7),(4091,1204,1205,'OP_WorldListMsg',8),(4092,1204,1205,'OP_AllCharactersDescRequestMsg',9),(4093,1204,1205,'OP_AllCharactersDescReplyMsg',10),(4094,1204,1205,'OP_CreateCharacterRequestMsg',11),(4095,1204,1205,'OP_CreateCharacterReplyMsg',12),(4096,1204,1205,'OP_WSCreateCharacterRequestMsg',13),(4097,1204,1205,'OP_WSCreateCharacterReplyMsg',14),(4098,1204,1205,'OP_ReskinCharacterRequestMsg',15),(4099,1204,1205,'OP_DeleteCharacterRequestMsg',16),(4100,1204,1205,'OP_DeleteCharacterReplyMsg',17),(4101,1204,1205,'OP_PlayCharacterRequestMsg',18),(4102,1204,1205,'OP_PlayCharacterReplyMsg',19),(4103,1204,1205,'OP_ExpectClientAsCharacterReplyMs',22),(4104,1204,1205,'OP_ServerPlayCharacterRequestMsg',23),(4105,1204,1205,'OP_ServerPlayCharacterReplyMsg',24),(4106,1204,1205,'OP_ESInitMsg',25),(4107,1204,1205,'OP_ESReadyForClientsMsg',26),(4108,1204,1205,'OP_CreateZoneInstanceMsg',29),(4109,1204,1205,'OP_ZoneInstanceCreateReplyMsg',30),(4110,1204,1205,'OP_ZoneInstanceDestroyedMsg',31),(4111,1204,1205,'OP_ExpectClientAsCharacterRequest',32),(4112,1204,1205,'OP_ZoneInfoMsg',33),(4113,1204,1205,'OP_DoneLoadingZoneResourcesMsg',34),(4114,1204,1205,'OP_DoneSendingInitialEntitiesMsg',35),(4115,1204,1205,'OP_DoneLoadingEntityResourcesMsg',36),(4116,1204,1205,'OP_PredictionUpdateMsg',37),(4117,1204,1205,'OP_UpdatePositionMsg',39),(4118,1204,1205,'OP_SetRemoteCmdsMsg',41),(4119,1204,1205,'OP_RemoteCmdMsg',42),(4120,1204,1205,'OP_GameWorldTimeMsg',43),(4121,1204,1205,'OP_MOTDMsg',44),(4122,1204,1205,'OP_ZoneMOTDMsg',45),(4123,1204,1205,'OP_AvatarCreatedMsg',46),(4124,1204,1205,'OP_AvatarDestroyedMsg',47),(4125,1204,1205,'OP_RequestCampMsg',50),(4126,1204,1205,'OP_CampStartedMsg',51),(4127,1204,1205,'OP_CampAbortedMsg',52),(4128,1204,1205,'OP_WhoQueryRequestMsg',53),(4129,1204,1205,'OP_WhoQueryReplyMsg',54),(4130,1204,1205,'OP_MonitorReplyMsg',55),(4131,1204,1205,'OP_MonitorCharacterListMsg',56),(4132,1204,1205,'OP_MonitorCharacterListRequestMsg',57),(4133,1204,1205,'OP_ClientCmdMsg',58),(4134,1204,1205,'OP_DispatchESMsg',59),(4135,1204,1205,'OP_DispatchClientCmdMsg',60),(4136,1204,1205,'OP_UpdateTargetMsg',61),(4137,1204,1205,'OP_UpdateTargetLocMsg',62),(4138,1204,1205,'OP_UpdateCharacterSheetMsg',63),(4139,1204,1205,'OP_CharacterPet',64),(4140,1204,1205,'OP_CharacterMerc',65),(4141,1204,1205,'OP_UpdateSpellBookMsg',66),(4142,1204,1205,'OP_UpdateInventoryMsg',68),(4143,1204,1205,'OP_AfterInvSpellUpdate',69),(4144,1204,1205,'OP_UpdateRecipeBookMsg',70),(4145,1204,1205,'OP_RequestRecipeDetailsMsg',71),(4146,1204,1205,'OP_RecipeDetailsMsg',72),(4147,1204,1205,'OP_UpdateSkillBookMsg',73),(4148,1204,1205,'OP_UpdateSkillsMsg',74),(4149,1204,1205,'OP_UpdateOpportunityMsg',75),(4150,1204,1205,'OP_ChangeZoneMsg',77),(4151,1204,1205,'OP_ClientTeleportRequestMsg',78),(4152,1204,1205,'OP_TeleportWithinZoneMsg',79),(4153,1204,1205,'OP_TeleportWithinZoneNoReloadMsg',80),(4154,1204,1205,'OP_MigrateClientToZoneRequestMsg',81),(4155,1204,1205,'OP_MigrateClientToZoneReplyMsg',82),(4156,1204,1205,'OP_ReadyToZoneMsg',84),(4157,1204,1205,'OP_RemoveClientFromGroupMsg',85),(4158,1204,1205,'OP_RemoveGroupFromGroupMsg',86),(4159,1204,1205,'OP_MakeGroupLeaderMsg',87),(4160,1204,1205,'OP_GroupCreatedMsg',88),(4161,1204,1205,'OP_GroupDestroyedMsg',89),(4162,1204,1205,'OP_GroupMemberAddedMsg',90),(4163,1204,1205,'OP_GroupMemberRemovedMsg',91),(4164,1204,1205,'OP_GroupRemovedFromGroupMsg',92),(4165,1204,1205,'OP_GroupLeaderChangedMsg',93),(4166,1204,1205,'OP_GroupResendOOZDataMsg',94),(4167,1204,1205,'OP_GroupSettingsChangedMsg',95),(4168,1204,1205,'OP_OutOfZoneMemberDataMsg',96),(4169,1204,1205,'OP_SendLatestRequestMsg',97),(4170,1204,1205,'OP_ClearDataMsg',98),(4171,1204,1205,'OP_SetSocialMsg',99),(4172,1204,1205,'OP_ESStatusMsg',100),(4173,1204,1205,'OP_ESZoneInstanceStatusMsg',101),(4174,1204,1205,'OP_ZonesStatusRequestMsg',102),(4175,1204,1205,'OP_ZonesStatusMsg',103),(4176,1204,1205,'OP_ESWeatherRequestMsg',104),(4177,1204,1205,'OP_ESWeatherRequestEndMsg',105),(4178,1204,1205,'OP_DialogSelectMsg',109),(4179,1204,1205,'OP_DialogCloseMsg',110),(4180,1204,1205,'OP_RemoveSpellEffectMsg',111),(4181,1204,1205,'OP_RemoveConcentrationMsg',112),(4182,1204,1205,'OP_QuestJournalOpenMsg',113),(4183,1204,1205,'OP_QuestJournalInspectMsg',114),(4184,1204,1205,'OP_QuestJournalSetVisibleMsg',115),(4185,1204,1205,'OP_QuestJournalWaypointMsg',116),(4186,1204,1205,'OP_CreateGuildRequestMsg',119),(4187,1204,1205,'OP_CreateGuildReplyMsg',120),(4188,1204,1205,'OP_GuildsayMsg',121),(4189,1204,1205,'OP_FellowshipExpMsg',122),(4190,1204,1205,'OP_DeleteGuildMsg',123),(4191,1204,1205,'OP_GuildUpdateMsg',124),(4192,1204,1205,'OP_ConsignmentCloseStoreMsg',125),(4193,1204,1205,'OP_ConsignItemRequestMsg',126),(4194,1204,1205,'OP_ConsignItemResponseMsg',127),(4195,1204,1205,'OP_PurchaseConsignmentRequestMsg',128),(4196,1204,1205,'OP_LikeOption',135),(4197,1204,1205,'OP_PublishHouse',138),(4198,1204,1205,'OP_PlayerMadeInstacnesScreen',139),(4199,1204,1205,'OP_PlayerMadeInstances',140),(4200,1204,1205,'OP_HouseDeletedRemotelyMsg',141),(4201,1204,1205,'OP_UpdateHouseDataMsg',142),(4202,1204,1205,'OP_UpdateHouseAccessDataMsg',143),(4203,1204,1205,'OP_PlayerHouseBaseScreenMsg',144),(4204,1204,1205,'OP_PlayerHousePurchaseScreenMsg',145),(4205,1204,1205,'OP_PlayerHouseAccessUpdateMsg',146),(4206,1204,1205,'OP_PlayerHouseDisplayStatusMsg',147),(4207,1204,1205,'OP_PlayerHouseCloseUIMsg',148),(4208,1204,1205,'OP_BuyPlayerHouseMsg',149),(4209,1204,1205,'OP_BuyPlayerHouseTintMsg',150),(4210,1204,1205,'OP_CollectAllHouseItemsMsg',151),(4211,1204,1205,'OP_RelinquishHouseMsg',152),(4212,1204,1205,'OP_EnterHouseMsg',153),(4213,1204,1205,'OP_ExitHouseMsg',154),(4214,1204,1205,'OP_HouseDefaultAccessSetMsg',155),(4215,1204,1205,'OP_HouseAccessSetMsg',156),(4216,1204,1205,'OP_HouseAccessRemoveMsg',157),(4217,1204,1205,'OP_PayHouseUpkeepMsg',158),(4218,1204,1205,'OP_MoveableObjectPlacementCriteri',159),(4219,1204,1205,'OP_EnterMoveObjectModeMsg',160),(4220,1204,1205,'OP_PositionMoveableObject',161),(4221,1204,1205,'OP_CancelMoveObjectModeMsg',162),(4222,1204,1205,'OP_ShaderCustomizationMsg',163),(4223,1204,1205,'OP_ReplaceableSubMeshesMsg',164),(4224,1204,1205,'OP_HouseCustomizationScreenMsg',165),(4225,1204,1205,'OP_CustomizationPurchaseRequestMs',166),(4226,1204,1205,'OP_CustomizationSetRequestMsg',167),(4227,1204,1205,'OP_CustomizationReplyMsg',168),(4228,1204,1205,'OP_TintWidgetsMsg',169),(4229,1204,1205,'OP_ExamineConsignmentRequestMsg',170),(4230,1204,1205,'OP_ExamineConsignmentResponseMsg',171),(4231,1204,1205,'OP_UISettingsResponseMsg',172),(4232,1204,1205,'OP_UIResetMsg',173),(4233,1204,1205,'OP_KeymapLoadMsg',174),(4234,1204,1205,'OP_KeymapNoneMsg',175),(4235,1204,1205,'OP_KeymapDataMsg',176),(4236,1204,1205,'OP_KeymapSaveMsg',177),(4237,1204,1205,'OP_DispatchSpellCmdMsg',178),(4238,1204,1205,'OP_EntityVerbsRequestMsg',179),(4239,1204,1205,'OP_EntityVerbsReplyMsg',180),(4240,1204,1205,'OP_EntityVerbsVerbMsg',181),(4241,1204,1205,'OP_ChatRelationshipUpdateMsg',183),(4242,1204,1205,'OP_LootItemsRequestMsg',184),(4243,1204,1205,'OP_StoppedLootingMsg',185),(4244,1204,1205,'OP_SitMsg',186),(4245,1204,1205,'OP_StandMsg',187),(4246,1204,1205,'OP_SatMsg',188),(4247,1204,1205,'OP_StoodMsg',189),(4248,1204,1205,'OP_ClearForTakeOffMsg',190),(4249,1204,1205,'OP_ReadyForTakeOffMsg',191),(4250,1204,1205,'OP_ShowIllusionsMsg',192),(4251,1204,1205,'OP_HideIllusionsMsg',193),(4252,1204,1205,'OP_ExamineItemRequestMsg',194),(4253,1204,1205,'OP_ReadBookPageMsg',195),(4254,1204,1205,'OP_DefaultGroupOptionsRequestMsg',196),(4255,1204,1205,'OP_DefaultGroupOptionsMsg',197),(4256,1204,1205,'OP_GroupOptionsMsg',198),(4257,1204,1205,'OP_DisplayGroupOptionsScreenMsg',199),(4258,1204,1205,'OP_PetOptions',200),(4259,1204,1205,'OP_DisplayInnVisitScreenMsg',201),(4260,1204,1205,'OP_DumpSchedulerMsg',202),(4261,1204,1205,'OP_LSCheckAcctLockMsg',203),(4262,1204,1205,'OP_WSAcctLockStatusMsg',204),(4263,1204,1205,'OP_RequestHelpRepathMsg',205),(4264,1204,1205,'OP_RequestTargetLocMsg',206),(4265,1204,1205,'OP_UpdateMotdMsg',207),(4266,1204,1205,'OP_DestUpdateReq',209),(4267,1204,1205,'OP_PerformPlayerKnockbackMsg',212),(4268,1204,1205,'OP_PerformCameraShakeMsg',213),(4269,1204,1205,'OP_PopulateSkillMapsMsg',214),(4270,1204,1205,'OP_CancelledFeignMsg',215),(4271,1204,1205,'OP_SysClient',217),(4272,1204,1205,'OP_ShowCreateFromRecipeUIMsg',218),(4273,1204,1205,'OP_CancelCreateFromRecipeMsg',219),(4274,1204,1205,'OP_BeginItemCreationMsg',220),(4275,1204,1205,'OP_StopItemCreationMsg',221),(4276,1204,1205,'OP_ShowItemCreationProcessUIMsg',222),(4277,1204,1205,'OP_UpdateItemCreationProcessUIMsg',223),(4278,1204,1205,'OP_DisplayTSEventReactionMsg',224),(4279,1204,1205,'OP_ShowRecipeBookMsg',225),(4280,1204,1205,'OP_KnowledgebaseRequestMsg',226),(4281,1204,1205,'OP_KnowledgebaseResponseMsg',227),(4282,1204,1205,'OP_CSTicketHeaderRequestMsg',228),(4283,1204,1205,'OP_CSTicketInfoMsg',229),(4284,1204,1205,'OP_CSTicketCommentRequestMsg',230),(4285,1204,1205,'OP_CSTicketCommentResponseMsg',231),(4286,1204,1205,'OP_CSTicketCreateMsg',232),(4287,1204,1205,'OP_CSTicketAddCommentMsg',233),(4288,1204,1205,'OP_CSTicketDeleteMsg',234),(4289,1204,1205,'OP_CSTicketChangeNotificationMsg',235),(4290,1204,1205,'OP_WorldDataUpdateMsg',236),(4291,1204,1205,'OP_KnownLanguagesMsg',237),(4292,1204,1205,'OP_LsRequestClientCrashLogMsg',238),(4293,1204,1205,'OP_LsClientBaselogReplyMsg',239),(4294,1204,1205,'OP_LsClientCrashlogReplyMsg',240),(4295,1204,1205,'OP_LsClientAlertlogReplyMsg',241),(4296,1204,1205,'OP_LsClientVerifylogReplyMsg',242),(4297,1204,1205,'OP_ClientTeleportToLocationMsg',243),(4298,1204,1205,'OP_UpdateClientPredFlagsMsg',244),(4299,1204,1205,'OP_ChangeServerControlFlagMsg',245),(4300,1204,1205,'OP_CSToolsRequestMsg',246),(4301,1204,1205,'OP_CSToolsResponseMsg',247),(4302,1204,1205,'OP_AddSocialStructureStandingMsg',248),(4303,1204,1205,'OP_CreateBoatTransportsMsg',249),(4304,1204,1205,'OP_PositionBoatTransportMsg',250),(4305,1204,1205,'OP_MigrateBoatTransportMsg',251),(4306,1204,1205,'OP_MigrateBoatTransportReplyMsg',252),(4307,1204,1205,'OP_DisplayDebugNLLPointsMsg',253),(4308,1204,1205,'OP_ExamineInfoRequestMsg',254),(4309,1204,1205,'OP_QuickbarInitMsg',255),(4310,1204,1205,'OP_QuickbarUpdateMsg',256),(4311,1204,1205,'OP_MacroInitMsg',257),(4312,1204,1205,'OP_MacroUpdateMsg',258),(4313,1204,1205,'OP_QuestionnaireMsg',259),(4314,1204,1205,'OP_LevelChangedMsg',260),(4315,1204,1205,'OP_SpellGainedMsg',261),(4316,1204,1205,'OP_EncounterBrokenMsg',262),(4317,1204,1205,'OP_OnscreenMsgMsg',263),(4318,1204,1205,'OP_DisplayWarningMsg',264),(4319,1204,1205,'OP_ModifyGuildMsg',265),(4320,1204,1205,'OP_GuildEventMsg',266),(4321,1204,1205,'OP_GuildEventAddMsg',267),(4322,1204,1205,'OP_GuildEventActionMsg',268),(4323,1204,1205,'OP_GuildEventListMsg',269),(4324,1204,1205,'OP_RequestGuildEventDetailsMsg',270),(4325,1204,1205,'OP_GuildEventDetailsMsg',271),(4326,1204,1205,'OP_RequestGuildInfoMsg',272),(4327,1204,1205,'OP_GuildBankActionMsg',273),(4328,1204,1205,'OP_GuildBankActionResponseMsg',274),(4329,1204,1205,'OP_GuildBankItemDetailsRequestMsg',275),(4330,1204,1205,'OP_GuildBankItemDetailsResponseMs',276),(4331,1204,1205,'OP_GuildBankUpdateMsg',277),(4332,1204,1205,'OP_GuildBankEventListMsg',278),(4333,1204,1205,'OP_RequestGuildBankEventDetailsMs',279),(4334,1204,1205,'OP_RewardPackMsg',280),(4335,1204,1205,'OP_RenameGuildMsg',281),(4336,1204,1205,'OP_ZoneToFriendRequestMsg',282),(4337,1204,1205,'OP_ZoneToFriendReplyMsg',283),(4338,1204,1205,'OP_ChatCreateChannelMsg',284),(4339,1204,1205,'OP_ChatJoinChannelMsg',285),(4340,1204,1205,'OP_ChatWhoChannelMsg',286),(4341,1204,1205,'OP_ChatLeaveChannelMsg',287),(4342,1204,1205,'OP_ChatTellChannelMsg',288),(4343,1204,1205,'OP_ChatTellUserMsg',289),(4344,1204,1205,'OP_ChatToggleFriendMsg',290),(4345,1204,1205,'OP_BrokerAddBag',291),(4346,1204,1205,'OP_BrokerRemoveBag',292),(4347,1204,1205,'OP_ChatToggleIgnoreMsg',293),(4348,1204,1205,'OP_ChatSendFriendsMsg',294),(4349,1204,1205,'OP_ChatSendIgnoresMsg',295),(4350,1204,1205,'OP_QuestReward',319),(4351,1204,1205,'OP_ChatFiltersMsg',334),(4352,1204,1205,'OP_MailGetMessageMsg',337),(4353,1204,1205,'OP_MailSendMessageMsg',338),(4354,1204,1205,'OP_MailDeleteMessageMsg',339),(4355,1204,1205,'OP_MailGetHeadersReplyMsg',340),(4356,1204,1205,'OP_MailGetMessageReplyMsg',341),(4357,1204,1205,'OP_MailSendMessageReplyMsg',342),(4358,1204,1205,'OP_MailCommitSendMessageMsg',343),(4359,1204,1205,'OP_MailSendSystemMessageMsg',344),(4360,1204,1205,'OP_MailRemoveAttachFromMailMsg',345),(4361,1204,1205,'OP_WaypointRequestMsg',347),(4362,1204,1205,'OP_WaypointReplyMsg',348),(4363,1204,1205,'OP_WaypointSelectMsg',349),(4364,1204,1205,'OP_WaypointUpdateMsg',350),(4365,1204,1205,'OP_CharNameChangedMsg',351),(4366,1204,1205,'OP_ShowZoneTeleporterDestinations',352),(4367,1204,1205,'OP_SelectZoneTeleporterDestinatio',353),(4368,1204,1205,'OP_ReloadLocalizedTxtMsg',354),(4369,1204,1205,'OP_RequestGuildMembershipMsg',355),(4370,1204,1205,'OP_GuildMembershipResponseMsg',356),(4371,1204,1205,'OP_LeaveGuildNotifyMsg',357),(4372,1204,1205,'OP_JoinGuildNotifyMsg',358),(4373,1204,1205,'OP_AvatarUpdateMsg',359),(4374,1204,1205,'OP_BioUpdateMsg',361),(4375,1204,1205,'OP_InspectPlayerMsg',362),(4376,1204,1205,'OP_WSServerLockMsg',363),(4377,1204,1205,'OP_LSServerLockMsg',364),(4378,1204,1205,'OP_WSServerHideMsg',365),(4379,1204,1205,'OP_CsCategoryRequestMsg',366),(4380,1204,1205,'OP_CsCategoryResponseMsg',367),(4381,1204,1205,'OP_KnowledgeWindowSlotMappingMsg',368),(4382,1204,1205,'OP_AFKUpdateMsg',369),(4383,1204,1205,'OP_AnonUpdateMsg',370),(4384,1204,1205,'OP_UpdateActivePublicZonesMsg',371),(4385,1204,1205,'OP_UnknownNpcMsg',372),(4386,1204,1205,'OP_PromoFlagsDetailsMsg',373),(4387,1204,1205,'OP_ConsignViewCreateMsg',374),(4388,1204,1205,'OP_ConsignViewGetPageMsg',375),(4389,1204,1205,'OP_ConsignViewReleaseMsg',376),(4390,1204,1205,'OP_ConsignRemoveItemsMsg',377),(4391,1204,1205,'OP_UpdateDebugRadiiMsg',378),(4392,1204,1205,'OP_ReportMsg',379),(4393,1204,1205,'OP_UpdateRaidMsg',380),(4394,1204,1205,'OP_ConsignViewSortMsg',382),(4395,1204,1205,'OP_TitleUpdateMsg',383),(4396,1204,1205,'OP_ClientFellMsg',384),(4397,1204,1205,'OP_ClientInDeathRegionMsg',385),(4398,1204,1205,'OP_CampClientMsg',386),(4399,1204,1205,'OP_CSToolAccessResponseMsg',387),(4400,1204,1205,'OP_TrackingUpdateMsg',388),(4401,1204,1205,'OP_BeginTrackingMsg',389),(4402,1204,1205,'OP_StopTrackingMsg',390),(4403,1204,1205,'OP_GetAvatarAccessRequestForCSToo',392),(4404,1204,1205,'OP_AdvancementRequestMsg',393),(4405,1204,1205,'OP_MapFogDataInitMsg',394),(4406,1204,1205,'OP_MapFogDataUpdateMsg',395),(4407,1204,1205,'OP_CloseGroupInviteWindowMsg',396),(4408,1204,1205,'OP_UpdateGroupMemberDataMsg',397),(4409,1204,1205,'OP_WorldPingMsg',398),(4410,1204,1205,'OP_MoveLogUpdateMsg',389),(4411,1204,1205,'OP_OfferQuestMsg',400),(4412,1204,1205,'OP_WorldShutdownUpdateMsg',402),(4413,1204,1205,'OP_DisplayMailScreenMsg',403),(4414,1204,1205,'OP_ClientIdleBeginMsg',404),(4415,1204,1205,'OP_ClientIdleEndMsg',405),(4416,1204,1205,'OP_PurchaseConsignmentLoreCheckRe',406),(4417,1204,1205,'OP_NotifyApprenticeStoppedMentori',407),(4418,1204,1205,'OP_CorruptedClientMsg',408),(4419,1204,1205,'OP_WorldDataChangeMsg',409),(4420,1204,1205,'OP_MailEventNotificationMsg',410),(4421,1204,1205,'OP_RestartZoneMsg',411),(4422,1204,1205,'OP_FlightPathsMsg',412),(4423,1204,1205,'OP_CharacterLinkdeadMsg',413),(4424,1204,1205,'OP_CharTransferStartRequestMsg',414),(4425,1204,1205,'OP_CharTransferStartReplyMsg',415),(4426,1204,1205,'OP_CharTransferRequestMsg',416),(4427,1204,1205,'OP_CharTransferReplyMsg',417),(4428,1204,1205,'OP_CharTransferRollbackRequestMsg',418),(4429,1204,1205,'OP_CharTransferCommitRequestMsg',419),(4430,1204,1205,'OP_CharTransferRollbackReplyMsg',420),(4431,1204,1205,'OP_CharTransferCommitReplyMsg',421),(4432,1204,1205,'OP_GetCharacterSerializedRequestM',422),(4433,1204,1205,'OP_GetCharacterSerializedReplyMsg',423),(4434,1204,1205,'OP_CreateCharFromCBBRequestMsg',424),(4435,1204,1205,'OP_CreateCharFromCBBReplyMsg',425),(4436,1204,1205,'OP_HousingDataChangedMsg',426),(4437,1204,1205,'OP_HousingRestoreMsg',427),(4438,1204,1205,'OP_AuctionItem',428),(4439,1204,1205,'OP_AuctionItemReply',429),(4440,1204,1205,'OP_AuctionCoin',430),(4441,1204,1205,'OP_AuctionCoinReply',431),(4442,1204,1205,'OP_AuctionCharacter',432),(4443,1204,1205,'OP_AuctionCharacterReply',433),(4444,1204,1205,'OP_AuctionCommitMsg',434),(4445,1204,1205,'OP_AuctionAbortMsg',435),(4446,1204,1205,'OP_CharTransferValidateRequestMsg',436),(4447,1204,1205,'OP_CharTransferValidateReplyMsg',437),(4448,1204,1205,'OP_RaceRestrictionMsg',438),(4449,1204,1205,'OP_SetInstanceDisplayNameMsg',439),(4450,1204,1205,'OP_GetAuctionAssetIDMsg',440),(4451,1204,1205,'OP_GetAuctionAssetIDReplyMsg',441),(4452,1204,1205,'OP_ResendWorldChannelsMsg',442),(4453,1204,1205,'OP_DisplayExchangeScreenMsg',443),(4454,1204,1205,'OP_ArenaGameTypesMsg',444),(4455,1204,1205,'OP_AuditAuctionEventMsg',445),(4456,1204,1205,'OP_InviteRequestMsg',446),(4457,1204,1205,'OP_InviteResponseMsg',447),(4458,1204,1205,'OP_InviteTargetResponseMsg',448),(4459,1204,1205,'OP_InspectPlayerRequestMsg',449),(4460,1204,1205,'OP_DispatchMsg',450),(4461,1204,1205,'OP_DisplayEventMsg',451),(4462,1204,1205,'OP_PrePossessionMsg',452),(4463,1204,1205,'OP_PostPossessionMsg',453),(4464,1204,1205,'OP_ArenaCreate',455),(4465,1204,1205,'OP_ArenaList',456),(4466,1204,1205,'OP_ArenaWindow',464),(4467,1204,1205,'OP_HouseItemsList',482),(4468,1204,1205,'OP_CurrentPet',484),(4469,1204,1205,'OP_AdventureList',487),(4470,1204,1205,'OP_CancelSpellCast',488),(4471,1204,1205,'OP_UpdateTitleCmd',493),(4472,1204,1205,'OP_AttackAllowed',499),(4473,1204,1205,'OP_AttackNotAllowed',500),(4474,1204,1205,'OP_BagOptions',501),(4475,1204,1205,'OP_LFGGroupSearch',503),(4476,1204,1205,'OP_CharacterHousingList',506),(4477,1204,1205,'OP_DressingRoom',509),(4478,1204,1205,'OP_PlayLon',510),(4479,1204,1205,'OP_SkillInfoRequest',513),(4480,1204,1205,'OP_SkillInfoResponse',514),(4481,1204,1205,'OP_LFGUpdateMsg',517),(4482,1204,1205,'OP_BadLanguageFilter',518),(4483,1204,1205,'OP_VoiceChatChannel',519),(4484,1204,1205,'OP_MapRequest',520),(4485,1204,1205,'OP_MarketFundsUpdate',525),(4486,1204,1205,'OP_UIEvent',526),(4487,1204,1205,'OP_MarketAddFundsRequest',527),(4488,1204,1205,'OP_MarketAddFundsReply',528),(4489,1204,1205,'OP_MarketPurchase',530),(4490,1204,1205,'OP_MarketPlacePrices',531),(4491,1204,1205,'OP_MarketPlaceItems',534),(4492,1204,1205,'OP_RecipeBook',535),(4493,1204,1205,'OP_CreateCharacterDungeon',544),(4494,1204,1205,'OP_DungeonMakerEnter',545),(4495,1204,1205,'OP_DungeonMakerItemRequest',547),(4496,1204,1205,'OP_CharacterCreatedDungeons',548),(4497,1204,1205,'OP_DungeonMakerToolboxList',549),(4498,1204,1205,'OP_DungeonMakerUnknown',550),(4499,1204,1205,'OP_DungeonMakerUnknown1',551),(4500,1204,1205,'OP_PlayerPollPopup',553),(4501,1204,1205,'OP_PlayerPollAnswer',554),(4502,1204,1205,'OP_MentorPopup',555),(4503,1204,1205,'OP_LoadWelcomeWindow',557),(4504,1204,1205,'OP_OpenCharCust',558),(4505,1204,1205,'OP_SubmitCharCust',559),(4506,1204,1205,'OP_QueAllBgSolo',561),(4507,1204,1205,'OP_ZoneBgInstanceList',563),(4508,1204,1205,'OP_WorldTravelAvail',567),(4509,1204,1205,'OP_GarbagePacket',570),(4510,1204,1205,'OP_LoadCalendarEvents',571),(4511,1204,1205,'OP_VideoUploaded',572),(4512,1204,1205,'OP_SavageBarInitMsg',573),(4513,1204,1205,'OP_PetOptionsResponse',574),(4514,1204,1205,'OP_DungeonMakerItemResponse',575),(4515,1204,1205,'OP_CharacterMounts',577),(4516,1204,1205,'OP_EqBetaCopyRequest',587),(4517,1204,1205,'OP_EqHearChatCmd',588),(4518,1204,1205,'OP_EqDisplayTextCmd',589),(4519,1204,1205,'OP_EqCreateGhostCmd',590),(4520,1204,1205,'OP_EqCreateWidgetCmd',591),(4521,1204,1205,'OP_EqCreateSignWidgetCmd',592),(4522,1204,1205,'OP_EqDestroyGhostCmd',593),(4523,1204,1205,'OP_EqUpdateGhostCmd',594),(4524,1204,1205,'OP_EqSetControlGhostCmd',595),(4525,1204,1205,'OP_EqSetPOVGhostCmd',596),(4526,1204,1205,'OP_EqHearCombatCmd',597),(4527,1204,1205,'OP_EqHearSpellCastCmd',598),(4528,1204,1205,'OP_EQHearProcCmd',599),(4529,1204,1205,'OP_EQHearResEffectCmd',600),(4530,1204,1205,'OP_EqHearSpellInterruptCmd',601),(4531,1204,1205,'OP_EqHearSpellFizzleCmd',602),(4532,1204,1205,'OP_EqHearConsiderCmd',603),(4533,1204,1205,'OP_EqUpdateSubClassesCmd',604),(4534,1204,1205,'OP_EqCreateListBoxCmd',605),(4535,1204,1205,'OP_EqSetDebugPathPointsCmd',606),(4536,1204,1205,'OP_EqCannedEmoteCmd',608),(4537,1204,1205,'OP_EqStateCmd',609),(4538,1204,1205,'OP_EqPlaySoundCmd',610),(4539,1204,1205,'OP_EqPlaySound3DCmd',611),(4540,1204,1205,'OP_EqPlayVoiceCmd',612),(4541,1204,1205,'OP_EqHearDrowningCmd',613),(4542,1204,1205,'OP_EqHearDeathCmd',614),(4543,1204,1205,'OP_EqGroupMemberRemovedCmd',615),(4544,1204,1205,'OP_EqHearChainEffectCmd',616),(4545,1204,1205,'OP_EqReceiveOfferCmd',617),(4546,1204,1205,'OP_EqInspectPCResultsCmd',618),(4547,1204,1205,'OP_EqDrawablePathGraphCmd',619),(4548,1204,1205,'OP_EqDialogOpenCmd',620),(4549,1204,1205,'OP_EqDialogCloseCmd',621),(4550,1204,1205,'OP_EqFactionUpdateCmd',622),(4551,1204,1205,'OP_EqCollectionUpdateCmd',623),(4552,1204,1205,'OP_EqCollectionFilterCmd',624),(4553,1204,1205,'OP_EqCollectionItemCmd',625),(4554,1204,1205,'OP_EqQuestJournalUpdateCmd',626),(4555,1204,1205,'OP_EqMentoring',627),(4556,1204,1205,'OP_EqQuestJournalReplyCmd',628),(4557,1204,1205,'OP_EqQuestGroupCmd',629),(4558,1204,1205,'OP_EqUpdateMerchantCmd',630),(4559,1204,1205,'OP_EqUpdateStoreCmd',631),(4560,1204,1205,'OP_EqUpdatePlayerTradeCmd',632),(4561,1204,1205,'OP_EqHelpPathCmd',633),(4562,1204,1205,'OP_EqHelpPathClearCmd',634),(4563,1204,1205,'OP_EqUpdateBankCmd',635),(4564,1204,1205,'OP_EqExamineInfoCmd',636),(4565,1204,1205,'OP_EqCloseWindowCmd',637),(4566,1204,1205,'OP_EqUpdateLootCmd',638),(4567,1204,1205,'OP_EqJunctionListCmd',639),(4568,1204,1205,'OP_EqShowDeathWindowCmd',640),(4569,1204,1205,'OP_EqDisplaySpellFailCmd',641),(4570,1204,1205,'OP_EqSpellCastStartCmd',642),(4571,1204,1205,'OP_EqSpellCastEndCmd',643),(4572,1204,1205,'OP_EqResurrectedCmd',644),(4573,1204,1205,'OP_EqChoiceWinCmd',645),(4574,1204,1205,'OP_EqSetDefaultVerbCmd',646),(4575,1204,1205,'OP_EqInstructionWindowCmd',647),(4576,1204,1205,'OP_EqInstructionWindowCloseCmd',648),(4577,1204,1205,'OP_EqInstructionWindowGoalCmd',649),(4578,1204,1205,'OP_EqInstructionWindowTaskCmd',650),(4579,1204,1205,'OP_EqEnableGameEventCmd',651),(4580,1204,1205,'OP_EqShowWindowCmd',652),(4581,1204,1205,'OP_EqEnableWindowCmd',653),(4582,1204,1205,'OP_EqFlashWindowCmd',654),(4583,1204,1205,'OP_EqHearPlayFlavorCmd',656),(4584,1204,1205,'OP_EqUpdateSignWidgetCmd',657),(4585,1204,1205,'OP_EqDebugPVDCmd',658),(4586,1204,1205,'OP_EqShowBookCmd',659),(4587,1204,1205,'OP_EqQuestionnaireCmd',660),(4588,1204,1205,'OP_EqGetProbsCmd',662),(4589,1204,1205,'OP_EqHearHealCmd',663),(4590,1204,1205,'OP_EqChatChannelUpdateCmd',664),(4591,1204,1205,'OP_EqWhoChannelQueryReplyCmd',665),(4592,1204,1205,'OP_EqAvailWorldChannelsCmd',666),(4593,1204,1205,'OP_EqUpdateTargetCmd',667),(4594,1204,1205,'OP_BrokerSellList',668),(4595,1204,1205,'OP_EqConsignmentItemsCmd',669),(4596,1204,1205,'OP_EqStartBrokerCmd',671),(4597,1204,1205,'OP_EqMapExplorationCmd',672),(4598,1204,1205,'OP_EqStoreLogCmd',673),(4599,1204,1205,'OP_EqSpellMoveToRangeAndRetryCmd',674),(4600,1204,1205,'OP_EqUpdatePlayerMailCmd',675),(4601,1204,1205,'OP_GuildStatusUpdate',678),(4602,1204,1205,'OP_EqArenaResultsCmd',679),(4603,1204,1205,'OP_EqGuildBankEventActionCmd',680),(4604,1204,1205,'OP_EqGuildBankExamineInfoCmd',681),(4605,1204,1205,'OP_EqHearSpellNoLandCmd',682),(4606,1204,1205,'OP_Lottery',683),(4607,1204,1205,'OP_GuildRecruitingMemberInfo',684),(4608,1204,1205,'OP_GuildRecruiting',685),(4609,1204,1205,'OP_GuildRecruitingDetails',686),(4610,1204,1205,'OP_GuildRecruitingImage',687),(4611,1204,1205,'OP_TradeskillList',705),(4612,1204,1205,'OP_CharRenamed',689),(4613,1204,1205,'OP_UseAdornment',699),(4614,1204,1205,'OP_ExpPurchWindow',705),(4615,1204,1205,'OP_PointOfInterest',709),(4616,1204,1205,'OP_PointOfInterest2',710),(4617,1204,1205,'OP_TraitsList',711),(4618,1204,1205,'OP_CustomizeHouseDisplay',714),(4619,1204,1205,'OP_VoiceChatServer',715),(4620,1204,1205,'OP_SupplyDepot',719),(4621,1204,1205,'OP_EQHearThreatCmd',720),(4622,1204,1205,'OP_RecipeList',721),(4623,1204,1205,'OP_Research',722),(4624,1204,1205,'OP_CharacterCurrency',723),(4625,1204,1205,'OP_CharacterAchievements',724),(4626,1204,1205,'OP_AchievementUpdateMsg',725),(4627,1204,1205,'OP_EQHearDispellCmd',726),(4628,1204,1205,'OP_JournalQuestStoryline',727),(4629,1204,1205,'OP_DungeonPlayAsAvatarList',728),(4630,1204,1205,'OP_DungeonPlayAsAvatarSelected',729),(4631,1204,1205,'OP_MercHireWindow',730),(4632,1204,1205,'OP_MercUnknown',731),(4633,1204,1205,'OP_Unknown',748),(4634,1208,1208,'OP_LoginRequestMsg',0),(4635,1208,1208,'OP_LoginByNumRequestMsg',1),(4636,1208,1208,'OP_WSLoginRequestMsg',2),(4637,1208,1208,'OP_ESLoginRequestMsg',3),(4638,1208,1208,'OP_LoginReplyMsg',4),(4639,1208,1208,'OP_WSStatusReplyMsg',5),(4640,1208,1208,'OP_WorldStatusChangeMsg',6),(4641,1208,1208,'OP_AllWSDescRequestMsg',7),(4642,1208,1208,'OP_WorldListMsg',8),(4643,1208,1208,'OP_AllCharactersDescRequestMsg',9),(4644,1208,1208,'OP_AllCharactersDescReplyMsg',10),(4645,1208,1208,'OP_CreateCharacterRequestMsg',11),(4646,1208,1208,'OP_CreateCharacterReplyMsg',12),(4647,1208,1208,'OP_WSCreateCharacterRequestMsg',13),(4648,1208,1208,'OP_WSCreateCharacterReplyMsg',14),(4649,1208,1208,'OP_ReskinCharacterRequestMsg',15),(4650,1208,1208,'OP_DeleteCharacterRequestMsg',16),(4651,1208,1208,'OP_DeleteCharacterReplyMsg',17),(4652,1208,1208,'OP_PlayCharacterRequestMsg',18),(4653,1208,1208,'OP_PlayCharacterReplyMsg',19),(4654,1208,1208,'OP_ExpectClientAsCharacterReplyMs',22),(4655,1208,1208,'OP_ServerPlayCharacterRequestMsg',23),(4656,1208,1208,'OP_ServerPlayCharacterReplyMsg',24),(4657,1208,1208,'OP_ESInitMsg',25),(4658,1208,1208,'OP_ESReadyForClientsMsg',26),(4659,1208,1208,'OP_CreateZoneInstanceMsg',29),(4660,1208,1208,'OP_ZoneInstanceCreateReplyMsg',30),(4661,1208,1208,'OP_ZoneInstanceDestroyedMsg',31),(4662,1208,1208,'OP_ExpectClientAsCharacterRequest',32),(4663,1208,1208,'OP_ZoneInfoMsg',33),(4664,1208,1208,'OP_DoneLoadingZoneResourcesMsg',34),(4665,1208,1208,'OP_DoneSendingInitialEntitiesMsg',35),(4666,1208,1208,'OP_DoneLoadingEntityResourcesMsg',36),(4667,1208,1208,'OP_PredictionUpdateMsg',37),(4668,1208,1208,'OP_UpdatePositionMsg',39),(4669,1208,1208,'OP_SetRemoteCmdsMsg',41),(4670,1208,1208,'OP_RemoteCmdMsg',42),(4671,1208,1208,'OP_GameWorldTimeMsg',43),(4672,1208,1208,'OP_MOTDMsg',44),(4673,1208,1208,'OP_ZoneMOTDMsg',45),(4674,1208,1208,'OP_AvatarCreatedMsg',46),(4675,1208,1208,'OP_AvatarDestroyedMsg',47),(4676,1208,1208,'OP_RequestCampMsg',50),(4677,1208,1208,'OP_CampStartedMsg',51),(4678,1208,1208,'OP_CampAbortedMsg',52),(4679,1208,1208,'OP_WhoQueryRequestMsg',53),(4680,1208,1208,'OP_WhoQueryReplyMsg',54),(4681,1208,1208,'OP_MonitorReplyMsg',55),(4682,1208,1208,'OP_MonitorCharacterListMsg',56),(4683,1208,1208,'OP_MonitorCharacterListRequestMsg',57),(4684,1208,1208,'OP_ClientCmdMsg',58),(4685,1208,1208,'OP_DispatchESMsg',59),(4686,1208,1208,'OP_DispatchClientCmdMsg',60),(4687,1208,1208,'OP_UpdateTargetMsg',61),(4688,1208,1208,'OP_UpdateTargetLocMsg',62),(4689,1208,1208,'OP_UpdateCharacterSheetMsg',63),(4690,1208,1208,'OP_CharacterPet',64),(4691,1208,1208,'OP_CharacterMerc',65),(4692,1208,1208,'OP_UpdateSpellBookMsg',66),(4693,1208,1208,'OP_UpdateInventoryMsg',68),(4694,1208,1208,'OP_AfterInvSpellUpdate',69),(4695,1208,1208,'OP_UpdateRecipeBookMsg',70),(4696,1208,1208,'OP_RequestRecipeDetailsMsg',71),(4697,1208,1208,'OP_RecipeDetailsMsg',72),(4698,1208,1208,'OP_UpdateSkillBookMsg',73),(4699,1208,1208,'OP_UpdateSkillsMsg',74),(4700,1208,1208,'OP_UpdateOpportunityMsg',75),(4701,1208,1208,'OP_ChangeZoneMsg',77),(4702,1208,1208,'OP_ClientTeleportRequestMsg',78),(4703,1208,1208,'OP_TeleportWithinZoneMsg',79),(4704,1208,1208,'OP_TeleportWithinZoneNoReloadMsg',80),(4705,1208,1208,'OP_MigrateClientToZoneRequestMsg',81),(4706,1208,1208,'OP_MigrateClientToZoneReplyMsg',82),(4707,1208,1208,'OP_ReadyToZoneMsg',84),(4708,1208,1208,'OP_RemoveClientFromGroupMsg',85),(4709,1208,1208,'OP_RemoveGroupFromGroupMsg',86),(4710,1208,1208,'OP_MakeGroupLeaderMsg',87),(4711,1208,1208,'OP_GroupCreatedMsg',88),(4712,1208,1208,'OP_GroupDestroyedMsg',89),(4713,1208,1208,'OP_GroupMemberAddedMsg',90),(4714,1208,1208,'OP_GroupMemberRemovedMsg',91),(4715,1208,1208,'OP_GroupRemovedFromGroupMsg',92),(4716,1208,1208,'OP_GroupLeaderChangedMsg',93),(4717,1208,1208,'OP_GroupResendOOZDataMsg',94),(4718,1208,1208,'OP_GroupSettingsChangedMsg',95),(4719,1208,1208,'OP_OutOfZoneMemberDataMsg',96),(4720,1208,1208,'OP_SendLatestRequestMsg',97),(4721,1208,1208,'OP_ClearDataMsg',98),(4722,1208,1208,'OP_SetSocialMsg',99),(4723,1208,1208,'OP_ESStatusMsg',100),(4724,1208,1208,'OP_ESZoneInstanceStatusMsg',101),(4725,1208,1208,'OP_ZonesStatusRequestMsg',102),(4726,1208,1208,'OP_ZonesStatusMsg',103),(4727,1208,1208,'OP_ESWeatherRequestMsg',104),(4728,1208,1208,'OP_ESWeatherRequestEndMsg',105),(4729,1208,1208,'OP_DialogSelectMsg',109),(4730,1208,1208,'OP_DialogCloseMsg',110),(4731,1208,1208,'OP_RemoveSpellEffectMsg',111),(4732,1208,1208,'OP_RemoveConcentrationMsg',112),(4733,1208,1208,'OP_QuestJournalOpenMsg',113),(4734,1208,1208,'OP_QuestJournalInspectMsg',114),(4735,1208,1208,'OP_QuestJournalSetVisibleMsg',115),(4736,1208,1208,'OP_QuestJournalWaypointMsg',116),(4737,1208,1208,'OP_CreateGuildRequestMsg',119),(4738,1208,1208,'OP_CreateGuildReplyMsg',120),(4739,1208,1208,'OP_GuildsayMsg',121),(4740,1208,1208,'OP_FellowshipExpMsg',122),(4741,1208,1208,'OP_DeleteGuildMsg',123),(4742,1208,1208,'OP_GuildUpdateMsg',124),(4743,1208,1208,'OP_ConsignmentCloseStoreMsg',125),(4744,1208,1208,'OP_ConsignItemRequestMsg',126),(4745,1208,1208,'OP_ConsignItemResponseMsg',127),(4746,1208,1208,'OP_PurchaseConsignmentRequestMsg',128),(4747,1208,1208,'OP_LikeOption',135),(4748,1208,1208,'OP_PublishHouse',138),(4749,1208,1208,'OP_PlayerMadeInstacnesScreen',139),(4750,1208,1208,'OP_PlayerMadeInstances',140),(4751,1208,1208,'OP_HouseDeletedRemotelyMsg',141),(4752,1208,1208,'OP_UpdateHouseDataMsg',142),(4753,1208,1208,'OP_UpdateHouseAccessDataMsg',143),(4754,1208,1208,'OP_PlayerHouseBaseScreenMsg',144),(4755,1208,1208,'OP_PlayerHousePurchaseScreenMsg',145),(4756,1208,1208,'OP_PlayerHouseAccessUpdateMsg',146),(4757,1208,1208,'OP_PlayerHouseDisplayStatusMsg',147),(4758,1208,1208,'OP_PlayerHouseCloseUIMsg',148),(4759,1208,1208,'OP_BuyPlayerHouseMsg',149),(4760,1208,1208,'OP_BuyPlayerHouseTintMsg',150),(4761,1208,1208,'OP_CollectAllHouseItemsMsg',151),(4762,1208,1208,'OP_RelinquishHouseMsg',152),(4763,1208,1208,'OP_EnterHouseMsg',153),(4764,1208,1208,'OP_ExitHouseMsg',154),(4765,1208,1208,'OP_HouseDefaultAccessSetMsg',155),(4766,1208,1208,'OP_HouseAccessSetMsg',156),(4767,1208,1208,'OP_HouseAccessRemoveMsg',157),(4768,1208,1208,'OP_PayHouseUpkeepMsg',158),(4769,1208,1208,'OP_MoveableObjectPlacementCriteri',159),(4770,1208,1208,'OP_EnterMoveObjectModeMsg',160),(4771,1208,1208,'OP_PositionMoveableObject',161),(4772,1208,1208,'OP_CancelMoveObjectModeMsg',162),(4773,1208,1208,'OP_ShaderCustomizationMsg',163),(4774,1208,1208,'OP_ReplaceableSubMeshesMsg',164),(4775,1208,1208,'OP_HouseCustomizationScreenMsg',165),(4776,1208,1208,'OP_CustomizationPurchaseRequestMs',166),(4777,1208,1208,'OP_CustomizationSetRequestMsg',167),(4778,1208,1208,'OP_CustomizationReplyMsg',168),(4779,1208,1208,'OP_TintWidgetsMsg',169),(4780,1208,1208,'OP_ExamineConsignmentRequestMsg',170),(4781,1208,1208,'OP_ExamineConsignmentResponseMsg',171),(4782,1208,1208,'OP_UISettingsResponseMsg',172),(4783,1208,1208,'OP_UIResetMsg',173),(4784,1208,1208,'OP_KeymapLoadMsg',174),(4785,1208,1208,'OP_KeymapNoneMsg',175),(4786,1208,1208,'OP_KeymapDataMsg',176),(4787,1208,1208,'OP_KeymapSaveMsg',177),(4788,1208,1208,'OP_DispatchSpellCmdMsg',178),(4789,1208,1208,'OP_EntityVerbsRequestMsg',179),(4790,1208,1208,'OP_EntityVerbsReplyMsg',180),(4791,1208,1208,'OP_EntityVerbsVerbMsg',181),(4792,1208,1208,'OP_ChatRelationshipUpdateMsg',183),(4793,1208,1208,'OP_LootItemsRequestMsg',184),(4794,1208,1208,'OP_StoppedLootingMsg',185),(4795,1208,1208,'OP_SitMsg',186),(4796,1208,1208,'OP_StandMsg',187),(4797,1208,1208,'OP_SatMsg',188),(4798,1208,1208,'OP_StoodMsg',189),(4799,1208,1208,'OP_ClearForTakeOffMsg',190),(4800,1208,1208,'OP_ReadyForTakeOffMsg',191),(4801,1208,1208,'OP_ShowIllusionsMsg',192),(4802,1208,1208,'OP_HideIllusionsMsg',193),(4803,1208,1208,'OP_ExamineItemRequestMsg',194),(4804,1208,1208,'OP_ReadBookPageMsg',195),(4805,1208,1208,'OP_DefaultGroupOptionsRequestMsg',196),(4806,1208,1208,'OP_DefaultGroupOptionsMsg',197),(4807,1208,1208,'OP_GroupOptionsMsg',198),(4808,1208,1208,'OP_DisplayGroupOptionsScreenMsg',199),(4809,1208,1208,'OP_PetOptions',200),(4810,1208,1208,'OP_DisplayInnVisitScreenMsg',201),(4811,1208,1208,'OP_DumpSchedulerMsg',202),(4812,1208,1208,'OP_LSCheckAcctLockMsg',203),(4813,1208,1208,'OP_WSAcctLockStatusMsg',204),(4814,1208,1208,'OP_RequestHelpRepathMsg',205),(4815,1208,1208,'OP_RequestTargetLocMsg',206),(4816,1208,1208,'OP_UpdateMotdMsg',207),(4817,1208,1208,'OP_DestUpdateReq',209),(4818,1208,1208,'OP_PerformPlayerKnockbackMsg',212),(4819,1208,1208,'OP_PerformCameraShakeMsg',213),(4820,1208,1208,'OP_PopulateSkillMapsMsg',214),(4821,1208,1208,'OP_CancelledFeignMsg',215),(4822,1208,1208,'OP_SysClient',217),(4823,1208,1208,'OP_ShowCreateFromRecipeUIMsg',218),(4824,1208,1208,'OP_CancelCreateFromRecipeMsg',219),(4825,1208,1208,'OP_BeginItemCreationMsg',220),(4826,1208,1208,'OP_StopItemCreationMsg',221),(4827,1208,1208,'OP_ShowItemCreationProcessUIMsg',222),(4828,1208,1208,'OP_UpdateItemCreationProcessUIMsg',223),(4829,1208,1208,'OP_DisplayTSEventReactionMsg',224),(4830,1208,1208,'OP_ShowRecipeBookMsg',225),(4831,1208,1208,'OP_KnowledgebaseRequestMsg',226),(4832,1208,1208,'OP_KnowledgebaseResponseMsg',227),(4833,1208,1208,'OP_CSTicketHeaderRequestMsg',228),(4834,1208,1208,'OP_CSTicketInfoMsg',229),(4835,1208,1208,'OP_CSTicketCommentRequestMsg',230),(4836,1208,1208,'OP_CSTicketCommentResponseMsg',231),(4837,1208,1208,'OP_CSTicketCreateMsg',232),(4838,1208,1208,'OP_CSTicketAddCommentMsg',233),(4839,1208,1208,'OP_CSTicketDeleteMsg',234),(4840,1208,1208,'OP_CSTicketChangeNotificationMsg',235),(4841,1208,1208,'OP_WorldDataUpdateMsg',236),(4842,1208,1208,'OP_KnownLanguagesMsg',237),(4843,1208,1208,'OP_LsRequestClientCrashLogMsg',238),(4844,1208,1208,'OP_LsClientBaselogReplyMsg',239),(4845,1208,1208,'OP_LsClientCrashlogReplyMsg',240),(4846,1208,1208,'OP_LsClientAlertlogReplyMsg',241),(4847,1208,1208,'OP_LsClientVerifylogReplyMsg',242),(4848,1208,1208,'OP_ClientTeleportToLocationMsg',243),(4849,1208,1208,'OP_UpdateClientPredFlagsMsg',244),(4850,1208,1208,'OP_ChangeServerControlFlagMsg',245),(4851,1208,1208,'OP_CSToolsRequestMsg',246),(4852,1208,1208,'OP_CSToolsResponseMsg',247),(4853,1208,1208,'OP_AddSocialStructureStandingMsg',248),(4854,1208,1208,'OP_CreateBoatTransportsMsg',249),(4855,1208,1208,'OP_PositionBoatTransportMsg',250),(4856,1208,1208,'OP_MigrateBoatTransportMsg',251),(4857,1208,1208,'OP_MigrateBoatTransportReplyMsg',252),(4858,1208,1208,'OP_DisplayDebugNLLPointsMsg',253),(4859,1208,1208,'OP_ExamineInfoRequestMsg',254),(4860,1208,1208,'OP_QuickbarInitMsg',255),(4861,1208,1208,'OP_QuickbarUpdateMsg',256),(4862,1208,1208,'OP_MacroInitMsg',257),(4863,1208,1208,'OP_MacroUpdateMsg',258),(4864,1208,1208,'OP_QuestionnaireMsg',259),(4865,1208,1208,'OP_LevelChangedMsg',260),(4866,1208,1208,'OP_SpellGainedMsg',261),(4867,1208,1208,'OP_EncounterBrokenMsg',262),(4868,1208,1208,'OP_OnscreenMsgMsg',263),(4869,1208,1208,'OP_DisplayWarningMsg',264),(4870,1208,1208,'OP_ModifyGuildMsg',265),(4871,1208,1208,'OP_GuildEventMsg',266),(4872,1208,1208,'OP_GuildEventAddMsg',267),(4873,1208,1208,'OP_GuildEventActionMsg',268),(4874,1208,1208,'OP_GuildEventListMsg',269),(4875,1208,1208,'OP_RequestGuildEventDetailsMsg',270),(4876,1208,1208,'OP_GuildEventDetailsMsg',271),(4877,1208,1208,'OP_RequestGuildInfoMsg',272),(4878,1208,1208,'OP_GuildBankActionMsg',273),(4879,1208,1208,'OP_GuildBankActionResponseMsg',274),(4880,1208,1208,'OP_GuildBankItemDetailsRequestMsg',275),(4881,1208,1208,'OP_GuildBankItemDetailsResponseMs',276),(4882,1208,1208,'OP_GuildBankUpdateMsg',277),(4883,1208,1208,'OP_GuildBankEventListMsg',278),(4884,1208,1208,'OP_RequestGuildBankEventDetailsMs',279),(4885,1208,1208,'OP_RewardPackMsg',280),(4886,1208,1208,'OP_RenameGuildMsg',281),(4887,1208,1208,'OP_ZoneToFriendRequestMsg',282),(4888,1208,1208,'OP_ZoneToFriendReplyMsg',283),(4889,1208,1208,'OP_ChatCreateChannelMsg',284),(4890,1208,1208,'OP_ChatJoinChannelMsg',285),(4891,1208,1208,'OP_ChatWhoChannelMsg',286),(4892,1208,1208,'OP_ChatLeaveChannelMsg',287),(4893,1208,1208,'OP_ChatTellChannelMsg',288),(4894,1208,1208,'OP_ChatTellUserMsg',289),(4895,1208,1208,'OP_ChatToggleFriendMsg',290),(4896,1208,1208,'OP_BrokerAddBag',291),(4897,1208,1208,'OP_BrokerRemoveBag',292),(4898,1208,1208,'OP_ChatToggleIgnoreMsg',293),(4899,1208,1208,'OP_ChatSendFriendsMsg',294),(4900,1208,1208,'OP_ChatSendIgnoresMsg',295),(4901,1208,1208,'OP_QuestReward',319),(4902,1208,1208,'OP_ChatFiltersMsg',334),(4903,1208,1208,'OP_MailGetMessageMsg',337),(4904,1208,1208,'OP_MailSendMessageMsg',338),(4905,1208,1208,'OP_MailDeleteMessageMsg',339),(4906,1208,1208,'OP_MailGetHeadersReplyMsg',340),(4907,1208,1208,'OP_MailGetMessageReplyMsg',341),(4908,1208,1208,'OP_MailSendMessageReplyMsg',342),(4909,1208,1208,'OP_MailCommitSendMessageMsg',343),(4910,1208,1208,'OP_MailSendSystemMessageMsg',344),(4911,1208,1208,'OP_MailRemoveAttachFromMailMsg',345),(4912,1208,1208,'OP_WaypointRequestMsg',347),(4913,1208,1208,'OP_WaypointReplyMsg',348),(4914,1208,1208,'OP_WaypointSelectMsg',349),(4915,1208,1208,'OP_WaypointUpdateMsg',350),(4916,1208,1208,'OP_CharNameChangedMsg',351),(4917,1208,1208,'OP_ShowZoneTeleporterDestinations',352),(4918,1208,1208,'OP_SelectZoneTeleporterDestinatio',353),(4919,1208,1208,'OP_ReloadLocalizedTxtMsg',354),(4920,1208,1208,'OP_RequestGuildMembershipMsg',355),(4921,1208,1208,'OP_GuildMembershipResponseMsg',356),(4922,1208,1208,'OP_LeaveGuildNotifyMsg',357),(4923,1208,1208,'OP_JoinGuildNotifyMsg',358),(4924,1208,1208,'OP_AvatarUpdateMsg',359),(4925,1208,1208,'OP_BioUpdateMsg',361),(4926,1208,1208,'OP_InspectPlayerMsg',362),(4927,1208,1208,'OP_WSServerLockMsg',363),(4928,1208,1208,'OP_LSServerLockMsg',364),(4929,1208,1208,'OP_WSServerHideMsg',365),(4930,1208,1208,'OP_CsCategoryRequestMsg',366),(4931,1208,1208,'OP_CsCategoryResponseMsg',367),(4932,1208,1208,'OP_KnowledgeWindowSlotMappingMsg',368),(4933,1208,1208,'OP_AFKUpdateMsg',369),(4934,1208,1208,'OP_AnonUpdateMsg',370),(4935,1208,1208,'OP_UpdateActivePublicZonesMsg',371),(4936,1208,1208,'OP_UnknownNpcMsg',372),(4937,1208,1208,'OP_PromoFlagsDetailsMsg',373),(4938,1208,1208,'OP_ConsignViewCreateMsg',374),(4939,1208,1208,'OP_ConsignViewGetPageMsg',375),(4940,1208,1208,'OP_ConsignViewReleaseMsg',376),(4941,1208,1208,'OP_ConsignRemoveItemsMsg',377),(4942,1208,1208,'OP_UpdateDebugRadiiMsg',378),(4943,1208,1208,'OP_ReportMsg',379),(4944,1208,1208,'OP_UpdateRaidMsg',380),(4945,1208,1208,'OP_ConsignViewSortMsg',382),(4946,1208,1208,'OP_TitleUpdateMsg',383),(4947,1208,1208,'OP_ClientFellMsg',384),(4948,1208,1208,'OP_ClientInDeathRegionMsg',385),(4949,1208,1208,'OP_CampClientMsg',386),(4950,1208,1208,'OP_CSToolAccessResponseMsg',387),(4951,1208,1208,'OP_TrackingUpdateMsg',388),(4952,1208,1208,'OP_BeginTrackingMsg',389),(4953,1208,1208,'OP_StopTrackingMsg',390),(4954,1208,1208,'OP_GetAvatarAccessRequestForCSToo',392),(4955,1208,1208,'OP_AdvancementRequestMsg',393),(4956,1208,1208,'OP_MapFogDataInitMsg',394),(4957,1208,1208,'OP_MapFogDataUpdateMsg',395),(4958,1208,1208,'OP_CloseGroupInviteWindowMsg',396),(4959,1208,1208,'OP_UpdateGroupMemberDataMsg',397),(4960,1208,1208,'OP_WorldPingMsg',398),(4961,1208,1208,'OP_MoveLogUpdateMsg',389),(4962,1208,1208,'OP_OfferQuestMsg',400),(4963,1208,1208,'OP_WorldShutdownUpdateMsg',402),(4964,1208,1208,'OP_DisplayMailScreenMsg',403),(4965,1208,1208,'OP_ClientIdleBeginMsg',404),(4966,1208,1208,'OP_ClientIdleEndMsg',405),(4967,1208,1208,'OP_PurchaseConsignmentLoreCheckRe',406),(4968,1208,1208,'OP_NotifyApprenticeStoppedMentori',407),(4969,1208,1208,'OP_CorruptedClientMsg',408),(4970,1208,1208,'OP_WorldDataChangeMsg',409),(4971,1208,1208,'OP_MailEventNotificationMsg',410),(4972,1208,1208,'OP_RestartZoneMsg',411),(4973,1208,1208,'OP_FlightPathsMsg',412),(4974,1208,1208,'OP_CharacterLinkdeadMsg',413),(4975,1208,1208,'OP_CharTransferStartRequestMsg',414),(4976,1208,1208,'OP_CharTransferStartReplyMsg',415),(4977,1208,1208,'OP_CharTransferRequestMsg',416),(4978,1208,1208,'OP_CharTransferReplyMsg',417),(4979,1208,1208,'OP_CharTransferRollbackRequestMsg',418),(4980,1208,1208,'OP_CharTransferCommitRequestMsg',419),(4981,1208,1208,'OP_CharTransferRollbackReplyMsg',420),(4982,1208,1208,'OP_CharTransferCommitReplyMsg',421),(4983,1208,1208,'OP_GetCharacterSerializedRequestM',422),(4984,1208,1208,'OP_GetCharacterSerializedReplyMsg',423),(4985,1208,1208,'OP_CreateCharFromCBBRequestMsg',424),(4986,1208,1208,'OP_CreateCharFromCBBReplyMsg',425),(4987,1208,1208,'OP_HousingDataChangedMsg',426),(4988,1208,1208,'OP_HousingRestoreMsg',427),(4989,1208,1208,'OP_AuctionItem',428),(4990,1208,1208,'OP_AuctionItemReply',429),(4991,1208,1208,'OP_AuctionCoin',430),(4992,1208,1208,'OP_AuctionCoinReply',431),(4993,1208,1208,'OP_AuctionCharacter',432),(4994,1208,1208,'OP_AuctionCharacterReply',433),(4995,1208,1208,'OP_AuctionCommitMsg',434),(4996,1208,1208,'OP_AuctionAbortMsg',435),(4997,1208,1208,'OP_CharTransferValidateRequestMsg',436),(4998,1208,1208,'OP_CharTransferValidateReplyMsg',437),(4999,1208,1208,'OP_RaceRestrictionMsg',438),(5000,1208,1208,'OP_SetInstanceDisplayNameMsg',439),(5001,1208,1208,'OP_GetAuctionAssetIDMsg',440),(5002,1208,1208,'OP_GetAuctionAssetIDReplyMsg',441),(5003,1208,1208,'OP_ResendWorldChannelsMsg',442),(5004,1208,1208,'OP_DisplayExchangeScreenMsg',443),(5005,1208,1208,'OP_ArenaGameTypesMsg',444),(5006,1208,1208,'OP_AuditAuctionEventMsg',445),(5007,1208,1208,'OP_InviteRequestMsg',446),(5008,1208,1208,'OP_InviteResponseMsg',447),(5009,1208,1208,'OP_InviteTargetResponseMsg',448),(5010,1208,1208,'OP_InspectPlayerRequestMsg',449),(5011,1208,1208,'OP_DispatchMsg',450),(5012,1208,1208,'OP_DisplayEventMsg',451),(5013,1208,1208,'OP_PrePossessionMsg',452),(5014,1208,1208,'OP_PostPossessionMsg',453),(5015,1208,1208,'OP_ArenaCreate',455),(5016,1208,1208,'OP_ArenaList',456),(5017,1208,1208,'OP_ArenaWindow',464),(5018,1208,1208,'OP_HouseItemsList',482),(5019,1208,1208,'OP_CurrentPet',484),(5020,1208,1208,'OP_AdventureList',487),(5021,1208,1208,'OP_CancelSpellCast',488),(5022,1208,1208,'OP_UpdateTitleCmd',493),(5023,1208,1208,'OP_AttackAllowed',499),(5024,1208,1208,'OP_AttackNotAllowed',500),(5025,1208,1208,'OP_BagOptions',501),(5026,1208,1208,'OP_LFGGroupSearch',503),(5027,1208,1208,'OP_CharacterHousingList',506),(5028,1208,1208,'OP_DressingRoom',509),(5029,1208,1208,'OP_PlayLon',510),(5030,1208,1208,'OP_SkillInfoRequest',513),(5031,1208,1208,'OP_SkillInfoResponse',514),(5032,1208,1208,'OP_LFGUpdateMsg',517),(5033,1208,1208,'OP_BadLanguageFilter',518),(5034,1208,1208,'OP_VoiceChatChannel',519),(5035,1208,1208,'OP_MapRequest',520),(5036,1208,1208,'OP_MarketFundsUpdate',525),(5037,1208,1208,'OP_UIEvent',526),(5038,1208,1208,'OP_MarketAddFundsRequest',527),(5039,1208,1208,'OP_MarketAddFundsReply',528),(5040,1208,1208,'OP_MarketPurchase',530),(5041,1208,1208,'OP_MarketPlacePrices',531),(5042,1208,1208,'OP_MarketPlaceItems',534),(5043,1208,1208,'OP_RecipeBook',535),(5044,1208,1208,'OP_CreateCharacterDungeon',544),(5045,1208,1208,'OP_DungeonMakerEnter',545),(5046,1208,1208,'OP_DungeonMakerItemRequest',547),(5047,1208,1208,'OP_CharacterCreatedDungeons',548),(5048,1208,1208,'OP_DungeonMakerToolboxList',549),(5049,1208,1208,'OP_DungeonMakerUnknown',550),(5050,1208,1208,'OP_DungeonMakerUnknown1',551),(5051,1208,1208,'OP_PlayerPollPopup',553),(5052,1208,1208,'OP_PlayerPollAnswer',554),(5053,1208,1208,'OP_MentorPopup',555),(5054,1208,1208,'OP_LoadWelcomeWindow',557),(5055,1208,1208,'OP_OpenCharCust',558),(5056,1208,1208,'OP_SubmitCharCust',559),(5057,1208,1208,'OP_QueAllBgSolo',561),(5058,1208,1208,'OP_ZoneBgInstanceList',563),(5059,1208,1208,'OP_WorldTravelAvail',567),(5060,1208,1208,'OP_GarbagePacket',571),(5061,1208,1208,'OP_LoadCalendarEvents',572),(5062,1208,1208,'OP_VideoUploaded',573),(5063,1208,1208,'OP_SavageBarInitMsg',574),(5064,1208,1208,'OP_PetOptionsResponse',575),(5065,1208,1208,'OP_DungeonMakerItemResponse',576),(5066,1208,1208,'OP_CharacterMounts',578),(5067,1208,1208,'OP_EqBetaCopyRequest',588),(5068,1208,1208,'OP_EqHearChatCmd',589),(5069,1208,1208,'OP_EqDisplayTextCmd',590),(5070,1208,1208,'OP_EqCreateGhostCmd',591),(5071,1208,1208,'OP_EqCreateWidgetCmd',592),(5072,1208,1208,'OP_EqCreateSignWidgetCmd',593),(5073,1208,1208,'OP_EqDestroyGhostCmd',594),(5074,1208,1208,'OP_EqUpdateGhostCmd',595),(5075,1208,1208,'OP_EqSetControlGhostCmd',596),(5076,1208,1208,'OP_EqSetPOVGhostCmd',597),(5077,1208,1208,'OP_EqHearCombatCmd',598),(5078,1208,1208,'OP_EqHearSpellCastCmd',599),(5079,1208,1208,'OP_EQHearProcCmd',600),(5080,1208,1208,'OP_EQHearResEffectCmd',601),(5081,1208,1208,'OP_EqHearSpellInterruptCmd',602),(5082,1208,1208,'OP_EqHearSpellFizzleCmd',603),(5083,1208,1208,'OP_EqHearConsiderCmd',604),(5084,1208,1208,'OP_EqUpdateSubClassesCmd',605),(5085,1208,1208,'OP_EqCreateListBoxCmd',606),(5086,1208,1208,'OP_EqSetDebugPathPointsCmd',607),(5087,1208,1208,'OP_EqCannedEmoteCmd',609),(5088,1208,1208,'OP_EqStateCmd',610),(5089,1208,1208,'OP_EqPlaySoundCmd',611),(5090,1208,1208,'OP_EqPlaySound3DCmd',612),(5091,1208,1208,'OP_EqPlayVoiceCmd',613),(5092,1208,1208,'OP_EqHearDrowningCmd',614),(5093,1208,1208,'OP_EqHearDeathCmd',615),(5094,1208,1208,'OP_EqGroupMemberRemovedCmd',616),(5095,1208,1208,'OP_EqHearChainEffectCmd',617),(5096,1208,1208,'OP_EqReceiveOfferCmd',618),(5097,1208,1208,'OP_EqInspectPCResultsCmd',619),(5098,1208,1208,'OP_EqDrawablePathGraphCmd',620),(5099,1208,1208,'OP_EqDialogOpenCmd',621),(5100,1208,1208,'OP_EqDialogCloseCmd',622),(5101,1208,1208,'OP_EqFactionUpdateCmd',623),(5102,1208,1208,'OP_EqCollectionUpdateCmd',624),(5103,1208,1208,'OP_EqCollectionFilterCmd',625),(5104,1208,1208,'OP_EqCollectionItemCmd',626),(5105,1208,1208,'OP_EqQuestJournalUpdateCmd',627),(5106,1208,1208,'OP_EqMentoring',628),(5107,1208,1208,'OP_EqQuestJournalReplyCmd',629),(5108,1208,1208,'OP_EqQuestGroupCmd',630),(5109,1208,1208,'OP_EqUpdateMerchantCmd',631),(5110,1208,1208,'OP_EqUpdateStoreCmd',632),(5111,1208,1208,'OP_EqUpdatePlayerTradeCmd',633),(5112,1208,1208,'OP_EqHelpPathCmd',634),(5113,1208,1208,'OP_EqHelpPathClearCmd',635),(5114,1208,1208,'OP_EqUpdateBankCmd',636),(5115,1208,1208,'OP_EqExamineInfoCmd',637),(5116,1208,1208,'OP_EqCloseWindowCmd',638),(5117,1208,1208,'OP_EqUpdateLootCmd',639),(5118,1208,1208,'OP_EqJunctionListCmd',640),(5119,1208,1208,'OP_EqShowDeathWindowCmd',641),(5120,1208,1208,'OP_EqDisplaySpellFailCmd',642),(5121,1208,1208,'OP_EqSpellCastStartCmd',643),(5122,1208,1208,'OP_EqSpellCastEndCmd',644),(5123,1208,1208,'OP_EqResurrectedCmd',645),(5124,1208,1208,'OP_EqChoiceWinCmd',646),(5125,1208,1208,'OP_EqSetDefaultVerbCmd',647),(5126,1208,1208,'OP_EqInstructionWindowCmd',648),(5127,1208,1208,'OP_EqInstructionWindowCloseCmd',649),(5128,1208,1208,'OP_EqInstructionWindowGoalCmd',650),(5129,1208,1208,'OP_EqInstructionWindowTaskCmd',651),(5130,1208,1208,'OP_EqEnableGameEventCmd',652),(5131,1208,1208,'OP_EqShowWindowCmd',653),(5132,1208,1208,'OP_EqEnableWindowCmd',654),(5133,1208,1208,'OP_EqFlashWindowCmd',655),(5134,1208,1208,'OP_EqHearPlayFlavorCmd',657),(5135,1208,1208,'OP_EqUpdateSignWidgetCmd',658),(5136,1208,1208,'OP_EqDebugPVDCmd',659),(5137,1208,1208,'OP_EqShowBookCmd',660),(5138,1208,1208,'OP_EqQuestionnaireCmd',661),(5139,1208,1208,'OP_EqGetProbsCmd',663),(5140,1208,1208,'OP_EqHearHealCmd',664),(5141,1208,1208,'OP_EqChatChannelUpdateCmd',665),(5142,1208,1208,'OP_EqWhoChannelQueryReplyCmd',666),(5143,1208,1208,'OP_EqAvailWorldChannelsCmd',667),(5144,1208,1208,'OP_EqUpdateTargetCmd',668),(5145,1208,1208,'OP_BrokerSellList',669),(5146,1208,1208,'OP_EqConsignmentItemsCmd',670),(5147,1208,1208,'OP_EqStartBrokerCmd',672),(5148,1208,1208,'OP_EqMapExplorationCmd',673),(5149,1208,1208,'OP_EqStoreLogCmd',674),(5150,1208,1208,'OP_EqSpellMoveToRangeAndRetryCmd',675),(5151,1208,1208,'OP_EqUpdatePlayerMailCmd',676),(5152,1208,1208,'OP_GuildStatusUpdate',679),(5153,1208,1208,'OP_EqArenaResultsCmd',680),(5154,1208,1208,'OP_EqGuildBankEventActionCmd',681),(5155,1208,1208,'OP_EqGuildBankExamineInfoCmd',682),(5156,1208,1208,'OP_EqHearSpellNoLandCmd',683),(5157,1208,1208,'OP_Lottery',684),(5158,1208,1208,'OP_GuildRecruitingMemberInfo',685),(5159,1208,1208,'OP_GuildRecruiting',686),(5160,1208,1208,'OP_GuildRecruitingDetails',687),(5161,1208,1208,'OP_GuildRecruitingImage',688),(5162,1208,1208,'OP_TradeskillList',706),(5163,1208,1208,'OP_CharRenamed',690),(5164,1208,1208,'OP_UseAdornment',700),(5165,1208,1208,'OP_ExpPurchWindow',706),(5166,1208,1208,'OP_PointOfInterest',710),(5167,1208,1208,'OP_PointOfInterest2',711),(5168,1208,1208,'OP_TraitsList',712),(5169,1208,1208,'OP_CustomizeHouseDisplay',715),(5170,1208,1208,'OP_VoiceChatServer',716),(5171,1208,1208,'OP_SupplyDepot',720),(5172,1208,1208,'OP_EQHearThreatCmd',721),(5173,1208,1208,'OP_RecipeList',722),(5174,1208,1208,'OP_Research',723),(5175,1208,1208,'OP_CharacterCurrency',724),(5176,1208,1208,'OP_CharacterAchievements',725),(5177,1208,1208,'OP_AchievementUpdateMsg',726),(5178,1208,1208,'OP_EQHearDispellCmd',727),(5179,1208,1208,'OP_JournalQuestStoryline',728),(5180,1208,1208,'OP_DungeonPlayAsAvatarList',729),(5181,1208,1208,'OP_DungeonPlayAsAvatarSelected',730),(5182,1208,1208,'OP_MercHireWindow',731),(5183,1208,1208,'OP_MercUnknown',732),(5184,1208,1208,'OP_Unknown',748),(5657,1096,1096,'OP_RecipeBook',999),(5658,1045,1046,'OP_RecipeBook',999),(5659,1008,1011,'OP_RecipeBook',999),(5660,908,927,'OP_RecipeBook',999),(5661,839,844,'OP_RecipeBook',999),(5662,0,0,'OP_RecipeBook',999),(5663,57000,57002,'OP_LoginRequestMsg',0),(5664,57000,57002,'OP_LoginByNumRequestMsg',1),(5665,57000,57002,'OP_WSLoginRequestMsg',2),(5666,57000,57002,'OP_ESLoginRequestMsg',3),(5667,57000,57002,'OP_LoginReplyMsg',4),(5668,57000,57002,'OP_WSStatusReplyMsg',5),(5669,57000,57002,'OP_WorldStatusChangeMsg',6),(5670,57000,57002,'OP_AllWSDescRequestMsg',7),(5671,57000,57002,'OP_WorldListMsg',8),(5672,57000,57002,'OP_AllCharactersDescRequestMsg',9),(5673,57000,57002,'OP_AllCharactersDescReplyMsg',10),(5674,57000,57002,'OP_CreateCharacterRequestMsg',11),(5675,57000,57002,'OP_CreateCharacterReplyMsg',12),(5676,57000,57002,'OP_WSCreateCharacterRequestMsg',13),(5677,57000,57002,'OP_WSCreateCharacterReplyMsg',14),(5678,57000,57002,'OP_ReskinCharacterRequestMsg',15),(5679,57000,57002,'OP_DeleteCharacterRequestMsg',16),(5680,57000,57002,'OP_DeleteCharacterReplyMsg',17),(5681,57000,57002,'OP_PlayCharacterRequestMsg',18),(5682,57000,57002,'OP_PlayCharacterReplyMsg',19),(5683,57000,57002,'OP_ExpectClientAsCharacterReplyMs',22),(5684,57000,57002,'OP_ServerPlayCharacterRequestMsg',23),(5685,57000,57002,'OP_ServerPlayCharacterReplyMsg',24),(5686,57000,57002,'OP_ESInitMsg',25),(5687,57000,57002,'OP_ESReadyForClientsMsg',26),(5688,57000,57002,'OP_CreateZoneInstanceMsg',29),(5689,57000,57002,'OP_ZoneInstanceCreateReplyMsg',30),(5690,57000,57002,'OP_ZoneInstanceDestroyedMsg',31),(5691,57000,57002,'OP_ExpectClientAsCharacterRequest',32),(5692,57000,57002,'OP_ZoneInfoMsg',33),(5693,57000,57002,'OP_DoneLoadingZoneResourcesMsg',34),(5694,57000,57002,'OP_DoneSendingInitialEntitiesMsg',35),(5695,57000,57002,'OP_DoneLoadingEntityResourcesMsg',36),(5696,57000,57002,'OP_PredictionUpdateMsg',37),(5697,57000,57002,'OP_UpdatePositionMsg',39),(5698,57000,57002,'OP_SetRemoteCmdsMsg',41),(5699,57000,57002,'OP_RemoteCmdMsg',42),(5700,57000,57002,'OP_GameWorldTimeMsg',43),(5701,57000,57002,'OP_MOTDMsg',44),(5702,57000,57002,'OP_ZoneMOTDMsg',45),(5703,57000,57002,'OP_AvatarCreatedMsg',46),(5704,57000,57002,'OP_AvatarDestroyedMsg',47),(5705,57000,57002,'OP_RequestCampMsg',50),(5706,57000,57002,'OP_CampStartedMsg',51),(5707,57000,57002,'OP_CampAbortedMsg',52),(5708,57000,57002,'OP_WhoQueryRequestMsg',53),(5709,57000,57002,'OP_WhoQueryReplyMsg',54),(5710,57000,57002,'OP_MonitorReplyMsg',55),(5711,57000,57002,'OP_MonitorCharacterListMsg',56),(5712,57000,57002,'OP_MonitorCharacterListRequestMsg',57),(5713,57000,57002,'OP_ClientCmdMsg',58),(5714,57000,57002,'OP_DispatchESMsg',59),(5715,57000,57002,'OP_DispatchClientCmdMsg',60),(5716,57000,57002,'OP_UpdateTargetMsg',61),(5717,57000,57002,'OP_UpdateTargetLocMsg',62),(5718,57000,57002,'OP_UpdateCharacterSheetMsg',63),(5719,57000,57002,'OP_CharacterPet',64),(5720,57000,57002,'OP_CharacterMerc',65),(5721,57000,57002,'OP_UpdateSpellBookMsg',66),(5722,57000,57002,'OP_UpdateInventoryMsg',68),(5723,57000,57002,'OP_AfterInvSpellUpdate',69),(5724,57000,57002,'OP_UpdateRecipeBookMsg',70),(5725,57000,57002,'OP_RequestRecipeDetailsMsg',71),(5726,57000,57002,'OP_RecipeDetailsMsg',72),(5727,57000,57002,'OP_UpdateSkillBookMsg',73),(5728,57000,57002,'OP_UpdateSkillsMsg',74),(5729,57000,57002,'OP_UpdateOpportunityMsg',75),(5730,57000,57002,'OP_ChangeZoneMsg',77),(5731,57000,57002,'OP_ClientTeleportRequestMsg',78),(5732,57000,57002,'OP_TeleportWithinZoneMsg',79),(5733,57000,57002,'OP_TeleportWithinZoneNoReloadMsg',80),(5734,57000,57002,'OP_MigrateClientToZoneRequestMsg',81),(5735,57000,57002,'OP_MigrateClientToZoneReplyMsg',82),(5736,57000,57002,'OP_ReadyToZoneMsg',84),(5737,57000,57002,'OP_RemoveClientFromGroupMsg',85),(5738,57000,57002,'OP_RemoveGroupFromGroupMsg',86),(5739,57000,57002,'OP_MakeGroupLeaderMsg',87),(5740,57000,57002,'OP_GroupCreatedMsg',88),(5741,57000,57002,'OP_GroupDestroyedMsg',89),(5742,57000,57002,'OP_GroupMemberAddedMsg',90),(5743,57000,57002,'OP_GroupMemberRemovedMsg',91),(5744,57000,57002,'OP_GroupRemovedFromGroupMsg',92),(5745,57000,57002,'OP_GroupLeaderChangedMsg',93),(5746,57000,57002,'OP_GroupResendOOZDataMsg',94),(5747,57000,57002,'OP_GroupSettingsChangedMsg',95),(5748,57000,57002,'OP_OutOfZoneMemberDataMsg',96),(5749,57000,57002,'OP_SendLatestRequestMsg',97),(5750,57000,57002,'OP_ClearDataMsg',98),(5751,57000,57002,'OP_SetSocialMsg',99),(5752,57000,57002,'OP_ESStatusMsg',100),(5753,57000,57002,'OP_ESZoneInstanceStatusMsg',101),(5754,57000,57002,'OP_ZonesStatusRequestMsg',102),(5755,57000,57002,'OP_ZonesStatusMsg',103),(5756,57000,57002,'OP_ESWeatherRequestMsg',104),(5757,57000,57002,'OP_ESWeatherRequestEndMsg',105),(5758,57000,57002,'OP_DialogSelectMsg',109),(5759,57000,57002,'OP_DialogCloseMsg',110),(5760,57000,57002,'OP_RemoveSpellEffectMsg',111),(5761,57000,57002,'OP_RemoveConcentrationMsg',112),(5762,57000,57002,'OP_QuestJournalOpenMsg',113),(5763,57000,57002,'OP_QuestJournalInspectMsg',114),(5764,57000,57002,'OP_QuestJournalSetVisibleMsg',115),(5765,57000,57002,'OP_QuestJournalWaypointMsg',116),(5766,57000,57002,'OP_CreateGuildRequestMsg',119),(5767,57000,57002,'OP_CreateGuildReplyMsg',120),(5768,57000,57002,'OP_GuildsayMsg',121),(5769,57000,57002,'OP_FellowshipExpMsg',122),(5770,57000,57002,'OP_DeleteGuildMsg',123),(5771,57000,57002,'OP_GuildUpdateMsg',124),(5772,57000,57002,'OP_ConsignmentCloseStoreMsg',125),(5773,57000,57002,'OP_ConsignItemRequestMsg',126),(5774,57000,57002,'OP_ConsignItemResponseMsg',127),(5775,57000,57002,'OP_PurchaseConsignmentRequestMsg',128),(5776,57000,57002,'OP_LikeOption',135),(5777,57000,57002,'OP_PublishHouse',138),(5778,57000,57002,'OP_PlayerMadeInstacnesScreen',139),(5779,57000,57002,'OP_PlayerMadeInstances',140),(5780,57000,57002,'OP_HouseDeletedRemotelyMsg',141),(5781,57000,57002,'OP_UpdateHouseDataMsg',142),(5782,57000,57002,'OP_UpdateHouseAccessDataMsg',143),(5783,57000,57002,'OP_PlayerHouseBaseScreenMsg',144),(5784,57000,57002,'OP_PlayerHousePurchaseScreenMsg',145),(5785,57000,57002,'OP_PlayerHouseAccessUpdateMsg',146),(5786,57000,57002,'OP_PlayerHouseDisplayStatusMsg',147),(5787,57000,57002,'OP_PlayerHouseCloseUIMsg',148),(5788,57000,57002,'OP_BuyPlayerHouseMsg',149),(5789,57000,57002,'OP_BuyPlayerHouseTintMsg',150),(5790,57000,57002,'OP_CollectAllHouseItemsMsg',151),(5791,57000,57002,'OP_RelinquishHouseMsg',152),(5792,57000,57002,'OP_EnterHouseMsg',153),(5793,57000,57002,'OP_ExitHouseMsg',154),(5794,57000,57002,'OP_HouseDefaultAccessSetMsg',155),(5795,57000,57002,'OP_HouseAccessSetMsg',156),(5796,57000,57002,'OP_HouseAccessRemoveMsg',157),(5797,57000,57002,'OP_PayHouseUpkeepMsg',158),(5798,57000,57002,'OP_MoveableObjectPlacementCriteri',159),(5799,57000,57002,'OP_EnterMoveObjectModeMsg',160),(5800,57000,57002,'OP_PositionMoveableObject',161),(5801,57000,57002,'OP_CancelMoveObjectModeMsg',162),(5802,57000,57002,'OP_ShaderCustomizationMsg',163),(5803,57000,57002,'OP_ReplaceableSubMeshesMsg',164),(5804,57000,57002,'OP_HouseCustomizationScreenMsg',165),(5805,57000,57002,'OP_CustomizationPurchaseRequestMs',166),(5806,57000,57002,'OP_CustomizationSetRequestMsg',167),(5807,57000,57002,'OP_CustomizationReplyMsg',168),(5808,57000,57002,'OP_TintWidgetsMsg',169),(5809,57000,57002,'OP_ExamineConsignmentRequestMsg',170),(5810,57000,57002,'OP_ExamineConsignmentResponseMsg',171),(5811,57000,57002,'OP_UISettingsResponseMsg',172),(5812,57000,57002,'OP_UIResetMsg',173),(5813,57000,57002,'OP_KeymapLoadMsg',174),(5814,57000,57002,'OP_KeymapNoneMsg',175),(5815,57000,57002,'OP_KeymapDataMsg',176),(5816,57000,57002,'OP_KeymapSaveMsg',177),(5817,57000,57002,'OP_DispatchSpellCmdMsg',178),(5818,57000,57002,'OP_EntityVerbsRequestMsg',179),(5819,57000,57002,'OP_EntityVerbsReplyMsg',180),(5820,57000,57002,'OP_EntityVerbsVerbMsg',181),(5821,57000,57002,'OP_ChatRelationshipUpdateMsg',183),(5822,57000,57002,'OP_LootItemsRequestMsg',184),(5823,57000,57002,'OP_StoppedLootingMsg',185),(5824,57000,57002,'OP_SitMsg',186),(5825,57000,57002,'OP_StandMsg',187),(5826,57000,57002,'OP_SatMsg',188),(5827,57000,57002,'OP_StoodMsg',189),(5828,57000,57002,'OP_ClearForTakeOffMsg',190),(5829,57000,57002,'OP_ReadyForTakeOffMsg',191),(5830,57000,57002,'OP_ShowIllusionsMsg',192),(5831,57000,57002,'OP_HideIllusionsMsg',193),(5832,57000,57002,'OP_ExamineItemRequestMsg',194),(5833,57000,57002,'OP_ReadBookPageMsg',195),(5834,57000,57002,'OP_DefaultGroupOptionsRequestMsg',196),(5835,57000,57002,'OP_DefaultGroupOptionsMsg',197),(5836,57000,57002,'OP_GroupOptionsMsg',198),(5837,57000,57002,'OP_DisplayGroupOptionsScreenMsg',199),(5838,57000,57002,'OP_PetOptions',200),(5839,57000,57002,'OP_DisplayInnVisitScreenMsg',201),(5840,57000,57002,'OP_DumpSchedulerMsg',202),(5841,57000,57002,'OP_LSCheckAcctLockMsg',203),(5842,57000,57002,'OP_WSAcctLockStatusMsg',204),(5843,57000,57002,'OP_RequestHelpRepathMsg',205),(5844,57000,57002,'OP_RequestTargetLocMsg',206),(5845,57000,57002,'OP_UpdateMotdMsg',207),(5846,57000,57002,'OP_DestUpdateReq',209),(5847,57000,57002,'OP_PerformPlayerKnockbackMsg',212),(5848,57000,57002,'OP_PerformCameraShakeMsg',213),(5849,57000,57002,'OP_PopulateSkillMapsMsg',214),(5850,57000,57002,'OP_CancelledFeignMsg',215),(5851,57000,57002,'OP_SysClient',217),(5852,57000,57002,'OP_ShowCreateFromRecipeUIMsg',218),(5853,57000,57002,'OP_CancelCreateFromRecipeMsg',219),(5854,57000,57002,'OP_BeginItemCreationMsg',220),(5855,57000,57002,'OP_StopItemCreationMsg',221),(5856,57000,57002,'OP_ShowItemCreationProcessUIMsg',222),(5857,57000,57002,'OP_UpdateItemCreationProcessUIMsg',223),(5858,57000,57002,'OP_DisplayTSEventReactionMsg',224),(5859,57000,57002,'OP_ShowRecipeBookMsg',225),(5860,57000,57002,'OP_KnowledgebaseRequestMsg',226),(5861,57000,57002,'OP_KnowledgebaseResponseMsg',227),(5862,57000,57002,'OP_CSTicketHeaderRequestMsg',228),(5863,57000,57002,'OP_CSTicketInfoMsg',229),(5864,57000,57002,'OP_CSTicketCommentRequestMsg',230),(5865,57000,57002,'OP_CSTicketCommentResponseMsg',231),(5866,57000,57002,'OP_CSTicketCreateMsg',232),(5867,57000,57002,'OP_CSTicketAddCommentMsg',233),(5868,57000,57002,'OP_CSTicketDeleteMsg',234),(5869,57000,57002,'OP_CSTicketChangeNotificationMsg',235),(5870,57000,57002,'OP_WorldDataUpdateMsg',236),(5871,57000,57002,'OP_KnownLanguagesMsg',237),(5872,57000,57002,'OP_LsRequestClientCrashLogMsg',238),(5873,57000,57002,'OP_LsClientBaselogReplyMsg',239),(5874,57000,57002,'OP_LsClientCrashlogReplyMsg',240),(5875,57000,57002,'OP_LsClientAlertlogReplyMsg',241),(5876,57000,57002,'OP_LsClientVerifylogReplyMsg',242),(5877,57000,57002,'OP_ClientTeleportToLocationMsg',243),(5878,57000,57002,'OP_UpdateClientPredFlagsMsg',244),(5879,57000,57002,'OP_ChangeServerControlFlagMsg',245),(5880,57000,57002,'OP_CSToolsRequestMsg',246),(5881,57000,57002,'OP_CSToolsResponseMsg',247),(5882,57000,57002,'OP_AddSocialStructureStandingMsg',248),(5883,57000,57002,'OP_CreateBoatTransportsMsg',249),(5884,57000,57002,'OP_PositionBoatTransportMsg',250),(5885,57000,57002,'OP_MigrateBoatTransportMsg',251),(5886,57000,57002,'OP_MigrateBoatTransportReplyMsg',252),(5887,57000,57002,'OP_DisplayDebugNLLPointsMsg',253),(5888,57000,57002,'OP_ExamineInfoRequestMsg',254),(5889,57000,57002,'OP_QuickbarInitMsg',255),(5890,57000,57002,'OP_QuickbarUpdateMsg',256),(5891,57000,57002,'OP_MacroInitMsg',257),(5892,57000,57002,'OP_MacroUpdateMsg',258),(5893,57000,57002,'OP_QuestionnaireMsg',259),(5894,57000,57002,'OP_LevelChangedMsg',260),(5895,57000,57002,'OP_SpellGainedMsg',261),(5896,57000,57002,'OP_EncounterBrokenMsg',262),(5897,57000,57002,'OP_OnscreenMsgMsg',263),(5898,57000,57002,'OP_DisplayWarningMsg',264),(5899,57000,57002,'OP_ModifyGuildMsg',265),(5900,57000,57002,'OP_GuildEventMsg',266),(5901,57000,57002,'OP_GuildEventAddMsg',267),(5902,57000,57002,'OP_GuildEventActionMsg',268),(5903,57000,57002,'OP_GuildEventListMsg',269),(5904,57000,57002,'OP_RequestGuildEventDetailsMsg',270),(5905,57000,57002,'OP_GuildEventDetailsMsg',271),(5906,57000,57002,'OP_RequestGuildInfoMsg',272),(5907,57000,57002,'OP_GuildBankActionMsg',273),(5908,57000,57002,'OP_GuildBankActionResponseMsg',274),(5909,57000,57002,'OP_GuildBankItemDetailsRequestMsg',275),(5910,57000,57002,'OP_GuildBankItemDetailsResponseMs',276),(5911,57000,57002,'OP_GuildBankUpdateMsg',277),(5912,57000,57002,'OP_GuildBankEventListMsg',278),(5913,57000,57002,'OP_RequestGuildBankEventDetailsMs',279),(5914,57000,57002,'OP_RewardPackMsg',280),(5915,57000,57002,'OP_RenameGuildMsg',281),(5916,57000,57002,'OP_ZoneToFriendRequestMsg',282),(5917,57000,57002,'OP_ZoneToFriendReplyMsg',283),(5918,57000,57002,'OP_ChatCreateChannelMsg',284),(5919,57000,57002,'OP_ChatJoinChannelMsg',285),(5920,57000,57002,'OP_ChatWhoChannelMsg',286),(5921,57000,57002,'OP_ChatLeaveChannelMsg',287),(5922,57000,57002,'OP_ChatTellChannelMsg',288),(5923,57000,57002,'OP_ChatTellUserMsg',289),(5924,57000,57002,'OP_ChatToggleFriendMsg',290),(5925,57000,57002,'OP_BrokerAddBag',291),(5926,57000,57002,'OP_BrokerRemoveBag',292),(5927,57000,57002,'OP_ChatToggleIgnoreMsg',293),(5928,57000,57002,'OP_ChatSendFriendsMsg',294),(5929,57000,57002,'OP_ChatSendIgnoresMsg',295),(5930,57000,57002,'OP_QuestReward',319),(5931,57000,57002,'OP_ChatFiltersMsg',334),(5932,57000,57002,'OP_MailGetMessageMsg',337),(5933,57000,57002,'OP_MailSendMessageMsg',338),(5934,57000,57002,'OP_MailDeleteMessageMsg',339),(5935,57000,57002,'OP_MailGetHeadersReplyMsg',340),(5936,57000,57002,'OP_MailGetMessageReplyMsg',341),(5937,57000,57002,'OP_MailSendMessageReplyMsg',342),(5938,57000,57002,'OP_MailCommitSendMessageMsg',343),(5939,57000,57002,'OP_MailSendSystemMessageMsg',344),(5940,57000,57002,'OP_MailRemoveAttachFromMailMsg',345),(5941,57000,57002,'OP_WaypointRequestMsg',347),(5942,57000,57002,'OP_WaypointReplyMsg',348),(5943,57000,57002,'OP_WaypointSelectMsg',349),(5944,57000,57002,'OP_WaypointUpdateMsg',350),(5945,57000,57002,'OP_CharNameChangedMsg',351),(5946,57000,57002,'OP_ShowZoneTeleporterDestinations',352),(5947,57000,57002,'OP_SelectZoneTeleporterDestinatio',353),(5948,57000,57002,'OP_ReloadLocalizedTxtMsg',354),(5949,57000,57002,'OP_RequestGuildMembershipMsg',355),(5950,57000,57002,'OP_GuildMembershipResponseMsg',356),(5951,57000,57002,'OP_LeaveGuildNotifyMsg',357),(5952,57000,57002,'OP_JoinGuildNotifyMsg',358),(5953,57000,57002,'OP_AvatarUpdateMsg',359),(5954,57000,57002,'OP_BioUpdateMsg',361),(5955,57000,57002,'OP_InspectPlayerMsg',362),(5956,57000,57002,'OP_WSServerLockMsg',363),(5957,57000,57002,'OP_LSServerLockMsg',364),(5958,57000,57002,'OP_WSServerHideMsg',365),(5959,57000,57002,'OP_CsCategoryRequestMsg',366),(5960,57000,57002,'OP_CsCategoryResponseMsg',367),(5961,57000,57002,'OP_KnowledgeWindowSlotMappingMsg',368),(5962,57000,57002,'OP_AFKUpdateMsg',369),(5963,57000,57002,'OP_AnonUpdateMsg',370),(5964,57000,57002,'OP_UpdateActivePublicZonesMsg',371),(5965,57000,57002,'OP_UnknownNpcMsg',372),(5966,57000,57002,'OP_PromoFlagsDetailsMsg',373),(5967,57000,57002,'OP_ConsignViewCreateMsg',374),(5968,57000,57002,'OP_ConsignViewGetPageMsg',375),(5969,57000,57002,'OP_ConsignViewReleaseMsg',376),(5970,57000,57002,'OP_ConsignRemoveItemsMsg',377),(5971,57000,57002,'OP_UpdateDebugRadiiMsg',378),(5972,57000,57002,'OP_ReportMsg',379),(5973,57000,57002,'OP_UpdateRaidMsg',380),(5974,57000,57002,'OP_ConsignViewSortMsg',382),(5975,57000,57002,'OP_TitleUpdateMsg',383),(5976,57000,57002,'OP_ClientFellMsg',384),(5977,57000,57002,'OP_ClientInDeathRegionMsg',385),(5978,57000,57002,'OP_CampClientMsg',386),(5979,57000,57002,'OP_CSToolAccessResponseMsg',387),(5980,57000,57002,'OP_TrackingUpdateMsg',388),(5981,57000,57002,'OP_BeginTrackingMsg',389),(5982,57000,57002,'OP_StopTrackingMsg',390),(5983,57000,57002,'OP_GetAvatarAccessRequestForCSToo',392),(5984,57000,57002,'OP_AdvancementRequestMsg',393),(5985,57000,57002,'OP_MapFogDataInitMsg',394),(5986,57000,57002,'OP_MapFogDataUpdateMsg',395),(5987,57000,57002,'OP_CloseGroupInviteWindowMsg',396),(5988,57000,57002,'OP_UpdateGroupMemberDataMsg',397),(5989,57000,57002,'OP_WorldPingMsg',398),(5990,57000,57002,'OP_MoveLogUpdateMsg',389),(5991,57000,57002,'OP_OfferQuestMsg',400),(5992,57000,57002,'OP_WorldShutdownUpdateMsg',402),(5993,57000,57002,'OP_DisplayMailScreenMsg',403),(5994,57000,57002,'OP_ClientIdleBeginMsg',404),(5995,57000,57002,'OP_ClientIdleEndMsg',405),(5996,57000,57002,'OP_PurchaseConsignmentLoreCheckRe',406),(5997,57000,57002,'OP_NotifyApprenticeStoppedMentori',407),(5998,57000,57002,'OP_CorruptedClientMsg',408),(5999,57000,57002,'OP_WorldDataChangeMsg',409),(6000,57000,57002,'OP_MailEventNotificationMsg',410),(6001,57000,57002,'OP_RestartZoneMsg',411),(6002,57000,57002,'OP_FlightPathsMsg',412),(6003,57000,57002,'OP_CharacterLinkdeadMsg',413),(6004,57000,57002,'OP_CharTransferStartRequestMsg',414),(6005,57000,57002,'OP_CharTransferStartReplyMsg',415),(6006,57000,57002,'OP_CharTransferRequestMsg',416),(6007,57000,57002,'OP_CharTransferReplyMsg',417),(6008,57000,57002,'OP_CharTransferRollbackRequestMsg',418),(6009,57000,57002,'OP_CharTransferCommitRequestMsg',419),(6010,57000,57002,'OP_CharTransferRollbackReplyMsg',420),(6011,57000,57002,'OP_CharTransferCommitReplyMsg',421),(6012,57000,57002,'OP_GetCharacterSerializedRequestM',422),(6013,57000,57002,'OP_GetCharacterSerializedReplyMsg',423),(6014,57000,57002,'OP_CreateCharFromCBBRequestMsg',424),(6015,57000,57002,'OP_CreateCharFromCBBReplyMsg',425),(6016,57000,57002,'OP_HousingDataChangedMsg',426),(6017,57000,57002,'OP_HousingRestoreMsg',427),(6018,57000,57002,'OP_AuctionItem',428),(6019,57000,57002,'OP_AuctionItemReply',429),(6020,57000,57002,'OP_AuctionCoin',430),(6021,57000,57002,'OP_AuctionCoinReply',431),(6022,57000,57002,'OP_AuctionCharacter',432),(6023,57000,57002,'OP_AuctionCharacterReply',433),(6024,57000,57002,'OP_AuctionCommitMsg',434),(6025,57000,57002,'OP_AuctionAbortMsg',435),(6026,57000,57002,'OP_CharTransferValidateRequestMsg',436),(6027,57000,57002,'OP_CharTransferValidateReplyMsg',437),(6028,57000,57002,'OP_RaceRestrictionMsg',438),(6029,57000,57002,'OP_SetInstanceDisplayNameMsg',439),(6030,57000,57002,'OP_GetAuctionAssetIDMsg',440),(6031,57000,57002,'OP_GetAuctionAssetIDReplyMsg',441),(6032,57000,57002,'OP_ResendWorldChannelsMsg',442),(6033,57000,57002,'OP_DisplayExchangeScreenMsg',443),(6034,57000,57002,'OP_ArenaGameTypesMsg',444),(6035,57000,57002,'OP_AuditAuctionEventMsg',445),(6036,57000,57002,'OP_InviteRequestMsg',446),(6037,57000,57002,'OP_InviteResponseMsg',447),(6038,57000,57002,'OP_InviteTargetResponseMsg',448),(6039,57000,57002,'OP_InspectPlayerRequestMsg',449),(6040,57000,57002,'OP_DispatchMsg',450),(6041,57000,57002,'OP_DisplayEventMsg',451),(6042,57000,57002,'OP_PrePossessionMsg',452),(6043,57000,57002,'OP_PostPossessionMsg',453),(6044,57000,57002,'OP_ArenaCreate',455),(6045,57000,57002,'OP_ArenaList',456),(6046,57000,57002,'OP_ArenaWindow',464),(6047,57000,57002,'OP_HouseItemsList',482),(6048,57000,57002,'OP_CurrentPet',484),(6049,57000,57002,'OP_AdventureList',487),(6050,57000,57002,'OP_CancelSpellCast',488),(6051,57000,57002,'OP_UpdateTitleCmd',493),(6052,57000,57002,'OP_AttackAllowed',499),(6053,57000,57002,'OP_AttackNotAllowed',500),(6054,57000,57002,'OP_BagOptions',501),(6055,57000,57002,'OP_LFGGroupSearch',503),(6056,57000,57002,'OP_CharacterHousingList',506),(6057,57000,57002,'OP_DressingRoom',509),(6058,57000,57002,'OP_PlayLon',510),(6059,57000,57002,'OP_SkillInfoRequest',513),(6060,57000,57002,'OP_SkillInfoResponse',514),(6061,57000,57002,'OP_LFGUpdateMsg',517),(6062,57000,57002,'OP_BadLanguageFilter',518),(6063,57000,57002,'OP_VoiceChatChannel',519),(6064,57000,57002,'OP_MapRequest',520),(6065,57000,57002,'OP_MarketFundsUpdate',525),(6066,57000,57002,'OP_UIEvent',526),(6067,57000,57002,'OP_MarketAddFundsRequest',527),(6068,57000,57002,'OP_MarketAddFundsReply',528),(6069,57000,57002,'OP_MarketPurchase',530),(6070,57000,57002,'OP_MarketPlacePrices',531),(6071,57000,57002,'OP_MarketPlaceItems',534),(6072,57000,57002,'OP_RecipeBook',535),(6073,57000,57002,'OP_CreateCharacterDungeon',544),(6074,57000,57002,'OP_DungeonMakerEnter',545),(6075,57000,57002,'OP_DungeonMakerItemRequest',547),(6076,57000,57002,'OP_CharacterCreatedDungeons',548),(6077,57000,57002,'OP_DungeonMakerToolboxList',549),(6078,57000,57002,'OP_DungeonMakerUnknown',550),(6079,57000,57002,'OP_DungeonMakerUnknown1',551),(6080,57000,57002,'OP_PlayerPollPopup',553),(6081,57000,57002,'OP_PlayerPollAnswer',554),(6082,57000,57002,'OP_MentorPopup',555),(6083,57000,57002,'OP_LoadWelcomeWindow',557),(6084,57000,57002,'OP_OpenCharCust',558),(6085,57000,57002,'OP_SubmitCharCust',559),(6086,57000,57002,'OP_QueAllBgSolo',561),(6087,57000,57002,'OP_ZoneBgInstanceList',563),(6088,57000,57002,'OP_WorldTravelAvail',567),(6089,57000,57002,'OP_GarbagePacket',571),(6090,57000,57002,'OP_LoadCalendarEvents',572),(6091,57000,57002,'OP_VideoUploaded',573),(6092,57000,57002,'OP_SavageBarInitMsg',574),(6093,57000,57002,'OP_PetOptionsResponse',575),(6094,57000,57002,'OP_DungeonMakerItemResponse',576),(6095,57000,57002,'OP_CharacterMounts',578),(6096,57000,57002,'OP_EqBetaCopyRequest',588),(6097,57000,57002,'OP_EqHearChatCmd',589),(6098,57000,57002,'OP_EqDisplayTextCmd',590),(6099,57000,57002,'OP_EqCreateGhostCmd',591),(6100,57000,57002,'OP_EqCreateWidgetCmd',592),(6101,57000,57002,'OP_EqCreateSignWidgetCmd',593),(6102,57000,57002,'OP_EqDestroyGhostCmd',594),(6103,57000,57002,'OP_EqUpdateGhostCmd',595),(6104,57000,57002,'OP_EqSetControlGhostCmd',596),(6105,57000,57002,'OP_EqSetPOVGhostCmd',597),(6106,57000,57002,'OP_EqHearCombatCmd',598),(6107,57000,57002,'OP_EqHearSpellCastCmd',599),(6108,57000,57002,'OP_EQHearProcCmd',600),(6109,57000,57002,'OP_EQHearResEffectCmd',601),(6110,57000,57002,'OP_EqHearSpellInterruptCmd',602),(6111,57000,57002,'OP_EqHearSpellFizzleCmd',603),(6112,57000,57002,'OP_EqHearConsiderCmd',604),(6113,57000,57002,'OP_EqUpdateSubClassesCmd',605),(6114,57000,57002,'OP_EqCreateListBoxCmd',606),(6115,57000,57002,'OP_EqSetDebugPathPointsCmd',607),(6116,57000,57002,'OP_EqCannedEmoteCmd',609),(6117,57000,57002,'OP_EqStateCmd',610),(6118,57000,57002,'OP_EqPlaySoundCmd',611),(6119,57000,57002,'OP_EqPlaySound3DCmd',612),(6120,57000,57002,'OP_EqPlayVoiceCmd',613),(6121,57000,57002,'OP_EqHearDrowningCmd',614),(6122,57000,57002,'OP_EqHearDeathCmd',615),(6123,57000,57002,'OP_EqGroupMemberRemovedCmd',616),(6124,57000,57002,'OP_EqHearChainEffectCmd',617),(6125,57000,57002,'OP_EqReceiveOfferCmd',618),(6126,57000,57002,'OP_EqInspectPCResultsCmd',619),(6127,57000,57002,'OP_EqDrawablePathGraphCmd',620),(6128,57000,57002,'OP_EqDialogOpenCmd',621),(6129,57000,57002,'OP_EqDialogCloseCmd',622),(6130,57000,57002,'OP_EqFactionUpdateCmd',623),(6131,57000,57002,'OP_EqCollectionUpdateCmd',624),(6132,57000,57002,'OP_EqCollectionFilterCmd',625),(6133,57000,57002,'OP_EqCollectionItemCmd',626),(6134,57000,57002,'OP_EqQuestJournalUpdateCmd',627),(6135,57000,57002,'OP_EqMentoring',628),(6136,57000,57002,'OP_EqQuestJournalReplyCmd',629),(6137,57000,57002,'OP_EqQuestGroupCmd',630),(6138,57000,57002,'OP_EqUpdateMerchantCmd',631),(6139,57000,57002,'OP_EqUpdateStoreCmd',632),(6140,57000,57002,'OP_EqUpdatePlayerTradeCmd',633),(6141,57000,57002,'OP_EqHelpPathCmd',634),(6142,57000,57002,'OP_EqHelpPathClearCmd',635),(6143,57000,57002,'OP_EqUpdateBankCmd',636),(6144,57000,57002,'OP_EqExamineInfoCmd',637),(6145,57000,57002,'OP_EqCloseWindowCmd',638),(6146,57000,57002,'OP_EqUpdateLootCmd',639),(6147,57000,57002,'OP_EqJunctionListCmd',640),(6148,57000,57002,'OP_EqShowDeathWindowCmd',641),(6149,57000,57002,'OP_EqDisplaySpellFailCmd',642),(6150,57000,57002,'OP_EqSpellCastStartCmd',643),(6151,57000,57002,'OP_EqSpellCastEndCmd',644),(6152,57000,57002,'OP_EqResurrectedCmd',645),(6153,57000,57002,'OP_EqChoiceWinCmd',646),(6154,57000,57002,'OP_EqSetDefaultVerbCmd',647),(6155,57000,57002,'OP_EqInstructionWindowCmd',648),(6156,57000,57002,'OP_EqInstructionWindowCloseCmd',649),(6157,57000,57002,'OP_EqInstructionWindowGoalCmd',650),(6158,57000,57002,'OP_EqInstructionWindowTaskCmd',651),(6159,57000,57002,'OP_EqEnableGameEventCmd',652),(6160,57000,57002,'OP_EqShowWindowCmd',653),(6161,57000,57002,'OP_EqEnableWindowCmd',654),(6162,57000,57002,'OP_EqFlashWindowCmd',655),(6163,57000,57002,'OP_EqHearPlayFlavorCmd',657),(6164,57000,57002,'OP_EqUpdateSignWidgetCmd',658),(6165,57000,57002,'OP_EqDebugPVDCmd',659),(6166,57000,57002,'OP_EqShowBookCmd',660),(6167,57000,57002,'OP_EqQuestionnaireCmd',661),(6168,57000,57002,'OP_EqGetProbsCmd',663),(6169,57000,57002,'OP_EqHearHealCmd',664),(6170,57000,57002,'OP_EqChatChannelUpdateCmd',665),(6171,57000,57002,'OP_EqWhoChannelQueryReplyCmd',666),(6172,57000,57002,'OP_EqAvailWorldChannelsCmd',667),(6173,57000,57002,'OP_EqUpdateTargetCmd',668),(6174,57000,57002,'OP_BrokerSellList',669),(6175,57000,57002,'OP_EqConsignmentItemsCmd',670),(6176,57000,57002,'OP_EqStartBrokerCmd',672),(6177,57000,57002,'OP_EqMapExplorationCmd',673),(6178,57000,57002,'OP_EqStoreLogCmd',674),(6179,57000,57002,'OP_EqSpellMoveToRangeAndRetryCmd',675),(6180,57000,57002,'OP_EqUpdatePlayerMailCmd',676),(6181,57000,57002,'OP_GuildStatusUpdate',679),(6182,57000,57002,'OP_EqArenaResultsCmd',680),(6183,57000,57002,'OP_EqGuildBankEventActionCmd',681),(6184,57000,57002,'OP_EqGuildBankExamineInfoCmd',682),(6185,57000,57002,'OP_EqHearSpellNoLandCmd',683),(6186,57000,57002,'OP_Lottery',684),(6187,57000,57002,'OP_GuildRecruitingMemberInfo',685),(6188,57000,57002,'OP_GuildRecruiting',686),(6189,57000,57002,'OP_GuildRecruitingDetails',687),(6190,57000,57002,'OP_GuildRecruitingImage',688),(6191,57000,57002,'OP_TradeskillList',706),(6192,57000,57002,'OP_CharRenamed',690),(6193,57000,57002,'OP_UseAdornment',700),(6194,57000,57002,'OP_ExpPurchWindow',706),(6195,57000,57002,'OP_PointOfInterest',710),(6196,57000,57002,'OP_PointOfInterest2',711),(6197,57000,57002,'OP_TraitsList',712),(6198,57000,57002,'OP_CustomizeHouseDisplay',715),(6199,57000,57002,'OP_VoiceChatServer',716),(6200,57000,57002,'OP_SupplyDepot',720),(6201,57000,57002,'OP_EQHearThreatCmd',721),(6202,57000,57002,'OP_RecipeList',722),(6203,57000,57002,'OP_Research',723),(6204,57000,57002,'OP_CharacterCurrency',724),(6205,57000,57002,'OP_CharacterAchievements',725),(6206,57000,57002,'OP_AchievementUpdateMsg',726),(6207,57000,57002,'OP_EQHearDispellCmd',727),(6208,57000,57002,'OP_JournalQuestStoryline',728),(6209,57000,57002,'OP_DungeonPlayAsAvatarList',729),(6210,57000,57002,'OP_DungeonPlayAsAvatarSelected',730),(6211,57000,57002,'OP_MercHireWindow',731),(6212,57000,57002,'OP_MercUnknown',732),(6213,57000,57002,'OP_Unknown',748),(6686,57003,57016,'OP_LoginRequestMsg',0),(6687,57003,57016,'OP_LoginByNumRequestMsg',1),(6688,57003,57016,'OP_WSLoginRequestMsg',2),(6689,57003,57016,'OP_ESLoginRequestMsg',3),(6690,57003,57016,'OP_LoginReplyMsg',4),(6691,57003,57016,'OP_WSStatusReplyMsg',5),(6692,57003,57016,'OP_WorldStatusChangeMsg',6),(6693,57003,57016,'OP_AllWSDescRequestMsg',7),(6694,57003,57016,'OP_WorldListMsg',8),(6695,57003,57016,'OP_AllCharactersDescRequestMsg',9),(6696,57003,57016,'OP_AllCharactersDescReplyMsg',10),(6697,57003,57016,'OP_CreateCharacterRequestMsg',11),(6698,57003,57016,'OP_CreateCharacterReplyMsg',12),(6699,57003,57016,'OP_WSCreateCharacterRequestMsg',13),(6700,57003,57016,'OP_WSCreateCharacterReplyMsg',14),(6701,57003,57016,'OP_ReskinCharacterRequestMsg',15),(6702,57003,57016,'OP_DeleteCharacterRequestMsg',16),(6703,57003,57016,'OP_DeleteCharacterReplyMsg',17),(6704,57003,57016,'OP_PlayCharacterRequestMsg',18),(6705,57003,57016,'OP_PlayCharacterReplyMsg',19),(6706,57003,57016,'OP_ExpectClientAsCharacterReplyMs',22),(6707,57003,57016,'OP_ServerPlayCharacterRequestMsg',23),(6708,57003,57016,'OP_ServerPlayCharacterReplyMsg',24),(6709,57003,57016,'OP_ESInitMsg',25),(6710,57003,57016,'OP_ESReadyForClientsMsg',26),(6711,57003,57016,'OP_CreateZoneInstanceMsg',29),(6712,57003,57016,'OP_ZoneInstanceCreateReplyMsg',30),(6713,57003,57016,'OP_ZoneInstanceDestroyedMsg',31),(6714,57003,57016,'OP_ExpectClientAsCharacterRequest',32),(6715,57003,57016,'OP_ZoneInfoMsg',33),(6716,57003,57016,'OP_DoneLoadingZoneResourcesMsg',34),(6717,57003,57016,'OP_DoneSendingInitialEntitiesMsg',35),(6718,57003,57016,'OP_DoneLoadingEntityResourcesMsg',36),(6719,57003,57016,'OP_PredictionUpdateMsg',37),(6720,57003,57016,'OP_UpdatePositionMsg',39),(6721,57003,57016,'OP_SetRemoteCmdsMsg',41),(6722,57003,57016,'OP_RemoteCmdMsg',42),(6723,57003,57016,'OP_GameWorldTimeMsg',43),(6724,57003,57016,'OP_MOTDMsg',44),(6725,57003,57016,'OP_ZoneMOTDMsg',45),(6726,57003,57016,'OP_AvatarCreatedMsg',46),(6727,57003,57016,'OP_AvatarDestroyedMsg',47),(6728,57003,57016,'OP_RequestCampMsg',50),(6729,57003,57016,'OP_CampStartedMsg',51),(6730,57003,57016,'OP_CampAbortedMsg',52),(6731,57003,57016,'OP_WhoQueryRequestMsg',53),(6732,57003,57016,'OP_WhoQueryReplyMsg',54),(6733,57003,57016,'OP_MonitorReplyMsg',55),(6734,57003,57016,'OP_MonitorCharacterListMsg',56),(6735,57003,57016,'OP_MonitorCharacterListRequestMsg',57),(6736,57003,57016,'OP_ClientCmdMsg',58),(6737,57003,57016,'OP_DispatchESMsg',59),(6738,57003,57016,'OP_DispatchClientCmdMsg',60),(6739,57003,57016,'OP_UpdateTargetMsg',61),(6740,57003,57016,'OP_UpdateTargetLocMsg',62),(6741,57003,57016,'OP_UpdateCharacterSheetMsg',63),(6742,57003,57016,'OP_CharacterPet',64),(6743,57003,57016,'OP_CharacterMerc',65),(6744,57003,57016,'OP_UpdateSpellBookMsg',66),(6745,57003,57016,'OP_UpdateInventoryMsg',68),(6746,57003,57016,'OP_AfterInvSpellUpdate',69),(6747,57003,57016,'OP_UpdateRecipeBookMsg',70),(6748,57003,57016,'OP_RequestRecipeDetailsMsg',71),(6749,57003,57016,'OP_RecipeDetailsMsg',72),(6750,57003,57016,'OP_UpdateSkillBookMsg',73),(6751,57003,57016,'OP_UpdateSkillsMsg',74),(6752,57003,57016,'OP_UpdateOpportunityMsg',75),(6753,57003,57016,'OP_ChangeZoneMsg',77),(6754,57003,57016,'OP_ClientTeleportRequestMsg',78),(6755,57003,57016,'OP_TeleportWithinZoneMsg',79),(6756,57003,57016,'OP_TeleportWithinZoneNoReloadMsg',80),(6757,57003,57016,'OP_MigrateClientToZoneRequestMsg',81),(6758,57003,57016,'OP_MigrateClientToZoneReplyMsg',82),(6759,57003,57016,'OP_ReadyToZoneMsg',84),(6760,57003,57016,'OP_RemoveClientFromGroupMsg',85),(6761,57003,57016,'OP_RemoveGroupFromGroupMsg',86),(6762,57003,57016,'OP_MakeGroupLeaderMsg',87),(6763,57003,57016,'OP_GroupCreatedMsg',88),(6764,57003,57016,'OP_GroupDestroyedMsg',89),(6765,57003,57016,'OP_GroupMemberAddedMsg',90),(6766,57003,57016,'OP_GroupMemberRemovedMsg',91),(6767,57003,57016,'OP_GroupRemovedFromGroupMsg',92),(6768,57003,57016,'OP_GroupLeaderChangedMsg',93),(6769,57003,57016,'OP_GroupResendOOZDataMsg',94),(6770,57003,57016,'OP_GroupSettingsChangedMsg',95),(6771,57003,57016,'OP_OutOfZoneMemberDataMsg',96),(6772,57003,57016,'OP_SendLatestRequestMsg',97),(6773,57003,57016,'OP_ClearDataMsg',98),(6774,57003,57016,'OP_SetSocialMsg',99),(6775,57003,57016,'OP_ESStatusMsg',100),(6776,57003,57016,'OP_ESZoneInstanceStatusMsg',101),(6777,57003,57016,'OP_ZonesStatusRequestMsg',102),(6778,57003,57016,'OP_ZonesStatusMsg',103),(6779,57003,57016,'OP_ESWeatherRequestMsg',104),(6780,57003,57016,'OP_ESWeatherRequestEndMsg',105),(6781,57003,57016,'OP_DialogSelectMsg',109),(6782,57003,57016,'OP_DialogCloseMsg',110),(6783,57003,57016,'OP_RemoveSpellEffectMsg',111),(6784,57003,57016,'OP_RemoveConcentrationMsg',112),(6785,57003,57016,'OP_QuestJournalOpenMsg',113),(6786,57003,57016,'OP_QuestJournalInspectMsg',114),(6787,57003,57016,'OP_QuestJournalSetVisibleMsg',115),(6788,57003,57016,'OP_QuestJournalWaypointMsg',116),(6789,57003,57016,'OP_CreateGuildRequestMsg',119),(6790,57003,57016,'OP_CreateGuildReplyMsg',120),(6791,57003,57016,'OP_GuildsayMsg',121),(6792,57003,57016,'OP_FellowshipExpMsg',122),(6793,57003,57016,'OP_DeleteGuildMsg',123),(6794,57003,57016,'OP_GuildUpdateMsg',124),(6795,57003,57016,'OP_ConsignmentCloseStoreMsg',125),(6796,57003,57016,'OP_ConsignItemRequestMsg',126),(6797,57003,57016,'OP_ConsignItemResponseMsg',127),(6798,57003,57016,'OP_PurchaseConsignmentRequestMsg',128),(6799,57003,57016,'OP_LikeOption',135),(6800,57003,57016,'OP_PublishHouse',138),(6801,57003,57016,'OP_PlayerMadeInstacnesScreen',139),(6802,57003,57016,'OP_PlayerMadeInstances',140),(6803,57003,57016,'OP_HouseDeletedRemotelyMsg',142),(6804,57003,57016,'OP_UpdateHouseDataMsg',143),(6805,57003,57016,'OP_UpdateHouseAccessDataMsg',144),(6806,57003,57016,'OP_PlayerHouseBaseScreenMsg',145),(6807,57003,57016,'OP_PlayerHousePurchaseScreenMsg',146),(6808,57003,57016,'OP_PlayerHouseAccessUpdateMsg',147),(6809,57003,57016,'OP_PlayerHouseDisplayStatusMsg',148),(6810,57003,57016,'OP_PlayerHouseCloseUIMsg',149),(6811,57003,57016,'OP_BuyPlayerHouseMsg',150),(6812,57003,57016,'OP_BuyPlayerHouseTintMsg',151),(6813,57003,57016,'OP_CollectAllHouseItemsMsg',152),(6814,57003,57016,'OP_RelinquishHouseMsg',153),(6815,57003,57016,'OP_EnterHouseMsg',154),(6816,57003,57016,'OP_ExitHouseMsg',155),(6817,57003,57016,'OP_HouseDefaultAccessSetMsg',156),(6818,57003,57016,'OP_HouseAccessSetMsg',157),(6819,57003,57016,'OP_HouseAccessRemoveMsg',158),(6820,57003,57016,'OP_PayHouseUpkeepMsg',159),(6821,57003,57016,'OP_MoveableObjectPlacementCriteri',160),(6822,57003,57016,'OP_EnterMoveObjectModeMsg',161),(6823,57003,57016,'OP_PositionMoveableObject',162),(6824,57003,57016,'OP_CancelMoveObjectModeMsg',163),(6825,57003,57016,'OP_ShaderCustomizationMsg',164),(6826,57003,57016,'OP_ReplaceableSubMeshesMsg',165),(6827,57003,57016,'OP_HouseCustomizationScreenMsg',166),(6828,57003,57016,'OP_CustomizationPurchaseRequestMs',167),(6829,57003,57016,'OP_CustomizationSetRequestMsg',168),(6830,57003,57016,'OP_CustomizationReplyMsg',169),(6831,57003,57016,'OP_TintWidgetsMsg',170),(6832,57003,57016,'OP_ExamineConsignmentRequestMsg',171),(6833,57003,57016,'OP_ExamineConsignmentResponseMsg',172),(6834,57003,57016,'OP_UISettingsResponseMsg',173),(6835,57003,57016,'OP_UIResetMsg',174),(6836,57003,57016,'OP_KeymapLoadMsg',175),(6837,57003,57016,'OP_KeymapNoneMsg',176),(6838,57003,57016,'OP_KeymapDataMsg',177),(6839,57003,57016,'OP_KeymapSaveMsg',178),(6840,57003,57016,'OP_DispatchSpellCmdMsg',179),(6841,57003,57016,'OP_EntityVerbsRequestMsg',180),(6842,57003,57016,'OP_EntityVerbsReplyMsg',181),(6843,57003,57016,'OP_EntityVerbsVerbMsg',182),(6844,57003,57016,'OP_ChatRelationshipUpdateMsg',184),(6845,57003,57016,'OP_LootItemsRequestMsg',185),(6846,57003,57016,'OP_StoppedLootingMsg',186),(6847,57003,57016,'OP_SitMsg',187),(6848,57003,57016,'OP_StandMsg',188),(6849,57003,57016,'OP_SatMsg',189),(6850,57003,57016,'OP_StoodMsg',190),(6851,57003,57016,'OP_ClearForTakeOffMsg',191),(6852,57003,57016,'OP_ReadyForTakeOffMsg',192),(6853,57003,57016,'OP_ShowIllusionsMsg',193),(6854,57003,57016,'OP_HideIllusionsMsg',194),(6855,57003,57016,'OP_ExamineItemRequestMsg',195),(6856,57003,57016,'OP_ReadBookPageMsg',196),(6857,57003,57016,'OP_DefaultGroupOptionsRequestMsg',197),(6858,57003,57016,'OP_DefaultGroupOptionsMsg',198),(6859,57003,57016,'OP_GroupOptionsMsg',199),(6860,57003,57016,'OP_DisplayGroupOptionsScreenMsg',200),(6861,57003,57016,'OP_PetOptions',201),(6862,57003,57016,'OP_DisplayInnVisitScreenMsg',202),(6863,57003,57016,'OP_DumpSchedulerMsg',203),(6864,57003,57016,'OP_LSCheckAcctLockMsg',204),(6865,57003,57016,'OP_WSAcctLockStatusMsg',205),(6866,57003,57016,'OP_RequestHelpRepathMsg',206),(6867,57003,57016,'OP_RequestTargetLocMsg',207),(6868,57003,57016,'OP_UpdateMotdMsg',208),(6869,57003,57016,'OP_DestUpdateReq',210),(6870,57003,57016,'OP_PerformPlayerKnockbackMsg',213),(6871,57003,57016,'OP_PerformCameraShakeMsg',214),(6872,57003,57016,'OP_PopulateSkillMapsMsg',215),(6873,57003,57016,'OP_CancelledFeignMsg',216),(6874,57003,57016,'OP_SysClient',218),(6875,57003,57016,'OP_ShowCreateFromRecipeUIMsg',219),(6876,57003,57016,'OP_CancelCreateFromRecipeMsg',220),(6877,57003,57016,'OP_BeginItemCreationMsg',221),(6878,57003,57016,'OP_StopItemCreationMsg',222),(6879,57003,57016,'OP_ShowItemCreationProcessUIMsg',223),(6880,57003,57016,'OP_UpdateItemCreationProcessUIMsg',224),(6881,57003,57016,'OP_DisplayTSEventReactionMsg',225),(6882,57003,57016,'OP_ShowRecipeBookMsg',226),(6883,57003,57016,'OP_KnowledgebaseRequestMsg',227),(6884,57003,57016,'OP_KnowledgebaseResponseMsg',228),(6885,57003,57016,'OP_CSTicketHeaderRequestMsg',229),(6886,57003,57016,'OP_CSTicketInfoMsg',230),(6887,57003,57016,'OP_CSTicketCommentRequestMsg',231),(6888,57003,57016,'OP_CSTicketCommentResponseMsg',232),(6889,57003,57016,'OP_CSTicketCreateMsg',233),(6890,57003,57016,'OP_CSTicketAddCommentMsg',234),(6891,57003,57016,'OP_CSTicketDeleteMsg',235),(6892,57003,57016,'OP_CSTicketChangeNotificationMsg',236),(6893,57003,57016,'OP_WorldDataUpdateMsg',237),(6894,57003,57016,'OP_KnownLanguagesMsg',238),(6895,57003,57016,'OP_LsRequestClientCrashLogMsg',239),(6896,57003,57016,'OP_LsClientBaselogReplyMsg',240),(6897,57003,57016,'OP_LsClientCrashlogReplyMsg',241),(6898,57003,57016,'OP_LsClientAlertlogReplyMsg',242),(6899,57003,57016,'OP_LsClientVerifylogReplyMsg',243),(6900,57003,57016,'OP_ClientTeleportToLocationMsg',244),(6901,57003,57016,'OP_UpdateClientPredFlagsMsg',245),(6902,57003,57016,'OP_ChangeServerControlFlagMsg',246),(6903,57003,57016,'OP_CSToolsRequestMsg',247),(6904,57003,57016,'OP_CSToolsResponseMsg',248),(6905,57003,57016,'OP_AddSocialStructureStandingMsg',249),(6906,57003,57016,'OP_CreateBoatTransportsMsg',250),(6907,57003,57016,'OP_PositionBoatTransportMsg',251),(6908,57003,57016,'OP_MigrateBoatTransportMsg',252),(6909,57003,57016,'OP_MigrateBoatTransportReplyMsg',253),(6910,57003,57016,'OP_DisplayDebugNLLPointsMsg',254),(6911,57003,57016,'OP_ExamineInfoRequestMsg',255),(6912,57003,57016,'OP_QuickbarInitMsg',256),(6913,57003,57016,'OP_QuickbarUpdateMsg',257),(6914,57003,57016,'OP_MacroInitMsg',258),(6915,57003,57016,'OP_MacroUpdateMsg',259),(6916,57003,57016,'OP_QuestionnaireMsg',260),(6917,57003,57016,'OP_LevelChangedMsg',261),(6918,57003,57016,'OP_SpellGainedMsg',262),(6919,57003,57016,'OP_EncounterBrokenMsg',263),(6920,57003,57016,'OP_OnscreenMsgMsg',264),(6921,57003,57016,'OP_DisplayWarningMsg',265),(6922,57003,57016,'OP_ModifyGuildMsg',266),(6923,57003,57016,'OP_GuildEventMsg',267),(6924,57003,57016,'OP_GuildEventAddMsg',268),(6925,57003,57016,'OP_GuildEventActionMsg',269),(6926,57003,57016,'OP_GuildEventListMsg',270),(6927,57003,57016,'OP_RequestGuildEventDetailsMsg',271),(6928,57003,57016,'OP_GuildEventDetailsMsg',272),(6929,57003,57016,'OP_RequestGuildInfoMsg',273),(6930,57003,57016,'OP_GuildBankActionMsg',274),(6931,57003,57016,'OP_GuildBankActionResponseMsg',275),(6932,57003,57016,'OP_GuildBankItemDetailsRequestMsg',276),(6933,57003,57016,'OP_GuildBankItemDetailsResponseMs',277),(6934,57003,57016,'OP_GuildBankUpdateMsg',278),(6935,57003,57016,'OP_GuildBankEventListMsg',279),(6936,57003,57016,'OP_RequestGuildBankEventDetailsMs',280),(6937,57003,57016,'OP_RewardPackMsg',281),(6938,57003,57016,'OP_RenameGuildMsg',282),(6939,57003,57016,'OP_ZoneToFriendRequestMsg',283),(6940,57003,57016,'OP_ZoneToFriendReplyMsg',284),(6941,57003,57016,'OP_ChatCreateChannelMsg',285),(6942,57003,57016,'OP_ChatJoinChannelMsg',286),(6943,57003,57016,'OP_ChatWhoChannelMsg',287),(6944,57003,57016,'OP_ChatLeaveChannelMsg',288),(6945,57003,57016,'OP_ChatTellChannelMsg',289),(6946,57003,57016,'OP_ChatTellUserMsg',290),(6947,57003,57016,'OP_ChatToggleFriendMsg',291),(6948,57003,57016,'OP_BrokerAddBag',292),(6949,57003,57016,'OP_BrokerRemoveBag',293),(6950,57003,57016,'OP_ChatToggleIgnoreMsg',294),(6951,57003,57016,'OP_ChatSendFriendsMsg',295),(6952,57003,57016,'OP_ChatSendIgnoresMsg',296),(6953,57003,57016,'OP_QuestReward',320),(6954,57003,57016,'OP_ChatFiltersMsg',335),(6955,57003,57016,'OP_MailGetMessageMsg',338),(6956,57003,57016,'OP_MailSendMessageMsg',339),(6957,57003,57016,'OP_MailDeleteMessageMsg',340),(6958,57003,57016,'OP_MailGetHeadersReplyMsg',341),(6959,57003,57016,'OP_MailGetMessageReplyMsg',342),(6960,57003,57016,'OP_MailSendMessageReplyMsg',343),(6961,57003,57016,'OP_MailCommitSendMessageMsg',344),(6962,57003,57016,'OP_MailSendSystemMessageMsg',345),(6963,57003,57016,'OP_MailRemoveAttachFromMailMsg',346),(6964,57003,57016,'OP_WaypointRequestMsg',348),(6965,57003,57016,'OP_WaypointReplyMsg',349),(6966,57003,57016,'OP_WaypointSelectMsg',350),(6967,57003,57016,'OP_WaypointUpdateMsg',351),(6968,57003,57016,'OP_CharNameChangedMsg',352),(6969,57003,57016,'OP_ShowZoneTeleporterDestinations',353),(6970,57003,57016,'OP_SelectZoneTeleporterDestinatio',354),(6971,57003,57016,'OP_ReloadLocalizedTxtMsg',355),(6972,57003,57016,'OP_RequestGuildMembershipMsg',356),(6973,57003,57016,'OP_GuildMembershipResponseMsg',357),(6974,57003,57016,'OP_LeaveGuildNotifyMsg',358),(6975,57003,57016,'OP_JoinGuildNotifyMsg',359),(6976,57003,57016,'OP_AvatarUpdateMsg',360),(6977,57003,57016,'OP_BioUpdateMsg',362),(6978,57003,57016,'OP_InspectPlayerMsg',363),(6979,57003,57016,'OP_WSServerLockMsg',364),(6980,57003,57016,'OP_LSServerLockMsg',365),(6981,57003,57016,'OP_WSServerHideMsg',366),(6982,57003,57016,'OP_CsCategoryRequestMsg',367),(6983,57003,57016,'OP_CsCategoryResponseMsg',368),(6984,57003,57016,'OP_KnowledgeWindowSlotMappingMsg',369),(6985,57003,57016,'OP_AFKUpdateMsg',370),(6986,57003,57016,'OP_AnonUpdateMsg',371),(6987,57003,57016,'OP_UpdateActivePublicZonesMsg',372),(6988,57003,57016,'OP_UnknownNpcMsg',373),(6989,57003,57016,'OP_PromoFlagsDetailsMsg',374),(6990,57003,57016,'OP_ConsignViewCreateMsg',375),(6991,57003,57016,'OP_ConsignViewGetPageMsg',376),(6992,57003,57016,'OP_ConsignViewReleaseMsg',377),(6993,57003,57016,'OP_ConsignRemoveItemsMsg',378),(6994,57003,57016,'OP_UpdateDebugRadiiMsg',379),(6995,57003,57016,'OP_ReportMsg',380),(6996,57003,57016,'OP_UpdateRaidMsg',381),(6997,57003,57016,'OP_ConsignViewSortMsg',383),(6998,57003,57016,'OP_TitleUpdateMsg',384),(6999,57003,57016,'OP_ClientFellMsg',385),(7000,57003,57016,'OP_ClientInDeathRegionMsg',386),(7001,57003,57016,'OP_CampClientMsg',387),(7002,57003,57016,'OP_CSToolAccessResponseMsg',388),(7003,57003,57016,'OP_TrackingUpdateMsg',389),(7004,57003,57016,'OP_BeginTrackingMsg',390),(7005,57003,57016,'OP_StopTrackingMsg',391),(7006,57003,57016,'OP_GetAvatarAccessRequestForCSToo',393),(7007,57003,57016,'OP_AdvancementRequestMsg',394),(7008,57003,57016,'OP_MapFogDataInitMsg',395),(7009,57003,57016,'OP_MapFogDataUpdateMsg',396),(7010,57003,57016,'OP_CloseGroupInviteWindowMsg',397),(7011,57003,57016,'OP_UpdateGroupMemberDataMsg',398),(7012,57003,57016,'OP_WorldPingMsg',399),(7013,57003,57016,'OP_MoveLogUpdateMsg',390),(7014,57003,57016,'OP_OfferQuestMsg',401),(7015,57003,57016,'OP_WorldShutdownUpdateMsg',403),(7016,57003,57016,'OP_DisplayMailScreenMsg',404),(7017,57003,57016,'OP_ClientIdleBeginMsg',405),(7018,57003,57016,'OP_ClientIdleEndMsg',406),(7019,57003,57016,'OP_PurchaseConsignmentLoreCheckRe',407),(7020,57003,57016,'OP_NotifyApprenticeStoppedMentori',408),(7021,57003,57016,'OP_CorruptedClientMsg',409),(7022,57003,57016,'OP_WorldDataChangeMsg',410),(7023,57003,57016,'OP_MailEventNotificationMsg',411),(7024,57003,57016,'OP_RestartZoneMsg',412),(7025,57003,57016,'OP_FlightPathsMsg',413),(7026,57003,57016,'OP_CharacterLinkdeadMsg',414),(7027,57003,57016,'OP_CharTransferStartRequestMsg',415),(7028,57003,57016,'OP_CharTransferStartReplyMsg',416),(7029,57003,57016,'OP_CharTransferRequestMsg',417),(7030,57003,57016,'OP_CharTransferReplyMsg',418),(7031,57003,57016,'OP_CharTransferRollbackRequestMsg',419),(7032,57003,57016,'OP_CharTransferCommitRequestMsg',420),(7033,57003,57016,'OP_CharTransferRollbackReplyMsg',421),(7034,57003,57016,'OP_CharTransferCommitReplyMsg',422),(7035,57003,57016,'OP_GetCharacterSerializedRequestM',423),(7036,57003,57016,'OP_GetCharacterSerializedReplyMsg',424),(7037,57003,57016,'OP_CreateCharFromCBBRequestMsg',425),(7038,57003,57016,'OP_CreateCharFromCBBReplyMsg',426),(7039,57003,57016,'OP_HousingDataChangedMsg',427),(7040,57003,57016,'OP_HousingRestoreMsg',428),(7041,57003,57016,'OP_AuctionItem',429),(7042,57003,57016,'OP_AuctionItemReply',430),(7043,57003,57016,'OP_AuctionCoin',431),(7044,57003,57016,'OP_AuctionCoinReply',432),(7045,57003,57016,'OP_AuctionCharacter',433),(7046,57003,57016,'OP_AuctionCharacterReply',434),(7047,57003,57016,'OP_AuctionCommitMsg',435),(7048,57003,57016,'OP_AuctionAbortMsg',436),(7049,57003,57016,'OP_CharTransferValidateRequestMsg',437),(7050,57003,57016,'OP_CharTransferValidateReplyMsg',438),(7051,57003,57016,'OP_RaceRestrictionMsg',439),(7052,57003,57016,'OP_SetInstanceDisplayNameMsg',440),(7053,57003,57016,'OP_GetAuctionAssetIDMsg',441),(7054,57003,57016,'OP_GetAuctionAssetIDReplyMsg',442),(7055,57003,57016,'OP_ResendWorldChannelsMsg',443),(7056,57003,57016,'OP_DisplayExchangeScreenMsg',444),(7057,57003,57016,'OP_ArenaGameTypesMsg',445),(7058,57003,57016,'OP_AuditAuctionEventMsg',446),(7059,57003,57016,'OP_InviteRequestMsg',447),(7060,57003,57016,'OP_InviteResponseMsg',448),(7061,57003,57016,'OP_InviteTargetResponseMsg',449),(7062,57003,57016,'OP_InspectPlayerRequestMsg',450),(7063,57003,57016,'OP_DispatchMsg',451),(7064,57003,57016,'OP_DisplayEventMsg',452),(7065,57003,57016,'OP_PrePossessionMsg',453),(7066,57003,57016,'OP_PostPossessionMsg',454),(7067,57003,57016,'OP_ArenaCreate',456),(7068,57003,57016,'OP_ArenaList',457),(7069,57003,57016,'OP_ArenaWindow',465),(7070,57003,57016,'OP_HouseItemsList',483),(7071,57003,57016,'OP_CurrentPet',485),(7072,57003,57016,'OP_AdventureList',488),(7073,57003,57016,'OP_CancelSpellCast',489),(7074,57003,57016,'OP_UpdateTitleCmd',494),(7075,57003,57016,'OP_AttackAllowed',500),(7076,57003,57016,'OP_AttackNotAllowed',501),(7077,57003,57016,'OP_BagOptions',502),(7078,57003,57016,'OP_LFGGroupSearch',504),(7079,57003,57016,'OP_CharacterHousingList',507),(7080,57003,57016,'OP_DressingRoom',510),(7081,57003,57016,'OP_PlayLon',511),(7082,57003,57016,'OP_SkillInfoRequest',514),(7083,57003,57016,'OP_SkillInfoResponse',515),(7084,57003,57016,'OP_LFGUpdateMsg',518),(7085,57003,57016,'OP_BadLanguageFilter',519),(7086,57003,57016,'OP_VoiceChatChannel',520),(7087,57003,57016,'OP_MapRequest',521),(7088,57003,57016,'OP_MarketFundsUpdate',526),(7089,57003,57016,'OP_UIEvent',527),(7090,57003,57016,'OP_MarketAddFundsRequest',528),(7091,57003,57016,'OP_MarketAddFundsReply',529),(7092,57003,57016,'OP_MarketPurchase',531),(7093,57003,57016,'OP_MarketPlacePrices',532),(7094,57003,57016,'OP_MarketPlaceItems',535),(7095,57003,57016,'OP_RecipeBook',536),(7096,57003,57016,'OP_CreateCharacterDungeon',545),(7097,57003,57016,'OP_DungeonMakerEnter',546),(7098,57003,57016,'OP_DungeonMakerItemRequest',548),(7099,57003,57016,'OP_CharacterCreatedDungeons',549),(7100,57003,57016,'OP_DungeonMakerToolboxList',550),(7101,57003,57016,'OP_DungeonMakerUnknown',551),(7102,57003,57016,'OP_DungeonMakerUnknown1',552),(7103,57003,57016,'OP_PlayerPollPopup',554),(7104,57003,57016,'OP_PlayerPollAnswer',555),(7105,57003,57016,'OP_MentorPopup',556),(7106,57003,57016,'OP_LoadWelcomeWindow',558),(7107,57003,57016,'OP_OpenCharCust',559),(7108,57003,57016,'OP_SubmitCharCust',560),(7109,57003,57016,'OP_QueAllBgSolo',562),(7110,57003,57016,'OP_ZoneBgInstanceList',564),(7111,57003,57016,'OP_WorldTravelAvail',568),(7112,57003,57016,'OP_GarbagePacket',572),(7113,57003,57016,'OP_LoadCalendarEvents',573),(7114,57003,57016,'OP_VideoUploaded',574),(7115,57003,57016,'OP_SavageBarInitMsg',575),(7116,57003,57016,'OP_PetOptionsResponse',576),(7117,57003,57016,'OP_DungeonMakerItemResponse',577),(7118,57003,57016,'OP_CharacterMounts',579),(7119,57003,57016,'OP_EqBetaCopyRequest',593),(7120,57003,57016,'OP_EqHearChatCmd',594),(7121,57003,57016,'OP_EqDisplayTextCmd',595),(7122,57003,57016,'OP_EqCreateGhostCmd',596),(7123,57003,57016,'OP_EqCreateWidgetCmd',597),(7124,57003,57016,'OP_EqCreateSignWidgetCmd',598),(7125,57003,57016,'OP_EqDestroyGhostCmd',599),(7126,57003,57016,'OP_EqUpdateGhostCmd',600),(7127,57003,57016,'OP_EqSetControlGhostCmd',601),(7128,57003,57016,'OP_EqSetPOVGhostCmd',602),(7129,57003,57016,'OP_EqHearCombatCmd',603),(7130,57003,57016,'OP_EqHearSpellCastCmd',604),(7131,57003,57016,'OP_EQHearProcCmd',605),(7132,57003,57016,'OP_EQHearResEffectCmd',606),(7133,57003,57016,'OP_EqHearSpellInterruptCmd',607),(7134,57003,57016,'OP_EqHearSpellFizzleCmd',608),(7135,57003,57016,'OP_EqHearConsiderCmd',609),(7136,57003,57016,'OP_EqUpdateSubClassesCmd',610),(7137,57003,57016,'OP_EqCreateListBoxCmd',611),(7138,57003,57016,'OP_EqSetDebugPathPointsCmd',612),(7139,57003,57016,'OP_EqCannedEmoteCmd',614),(7140,57003,57016,'OP_EqStateCmd',615),(7141,57003,57016,'OP_EqPlaySoundCmd',616),(7142,57003,57016,'OP_EqPlaySound3DCmd',617),(7143,57003,57016,'OP_EqPlayVoiceCmd',618),(7144,57003,57016,'OP_EqHearDrowningCmd',619),(7145,57003,57016,'OP_EqHearDeathCmd',620),(7146,57003,57016,'OP_EqGroupMemberRemovedCmd',621),(7147,57003,57016,'OP_EqHearChainEffectCmd',622),(7148,57003,57016,'OP_EqReceiveOfferCmd',623),(7149,57003,57016,'OP_EqInspectPCResultsCmd',624),(7150,57003,57016,'OP_EqDrawablePathGraphCmd',625),(7151,57003,57016,'OP_EqDialogOpenCmd',626),(7152,57003,57016,'OP_EqDialogCloseCmd',627),(7153,57003,57016,'OP_EqFactionUpdateCmd',628),(7154,57003,57016,'OP_EqCollectionUpdateCmd',629),(7155,57003,57016,'OP_EqCollectionFilterCmd',630),(7156,57003,57016,'OP_EqCollectionItemCmd',631),(7157,57003,57016,'OP_EqQuestJournalUpdateCmd',632),(7158,57003,57016,'OP_EqMentoring',633),(7159,57003,57016,'OP_EqQuestJournalReplyCmd',634),(7160,57003,57016,'OP_EqQuestGroupCmd',635),(7161,57003,57016,'OP_EqUpdateMerchantCmd',636),(7162,57003,57016,'OP_EqUpdateStoreCmd',637),(7163,57003,57016,'OP_EqUpdatePlayerTradeCmd',638),(7164,57003,57016,'OP_EqHelpPathCmd',639),(7165,57003,57016,'OP_EqHelpPathClearCmd',640),(7166,57003,57016,'OP_EqUpdateBankCmd',641),(7167,57003,57016,'OP_EqExamineInfoCmd',642),(7168,57003,57016,'OP_EqCloseWindowCmd',643),(7169,57003,57016,'OP_EqUpdateLootCmd',644),(7170,57003,57016,'OP_EqJunctionListCmd',645),(7171,57003,57016,'OP_EqShowDeathWindowCmd',646),(7172,57003,57016,'OP_EqDisplaySpellFailCmd',647),(7173,57003,57016,'OP_EqSpellCastStartCmd',648),(7174,57003,57016,'OP_EqSpellCastEndCmd',649),(7175,57003,57016,'OP_EqResurrectedCmd',650),(7176,57003,57016,'OP_EqChoiceWinCmd',651),(7177,57003,57016,'OP_EqSetDefaultVerbCmd',652),(7178,57003,57016,'OP_EqInstructionWindowCmd',653),(7179,57003,57016,'OP_EqInstructionWindowCloseCmd',654),(7180,57003,57016,'OP_EqInstructionWindowGoalCmd',655),(7181,57003,57016,'OP_EqInstructionWindowTaskCmd',656),(7182,57003,57016,'OP_EqEnableGameEventCmd',657),(7183,57003,57016,'OP_EqShowWindowCmd',658),(7184,57003,57016,'OP_EqEnableWindowCmd',659),(7185,57003,57016,'OP_EqFlashWindowCmd',660),(7186,57003,57016,'OP_EqHearPlayFlavorCmd',662),(7187,57003,57016,'OP_EqUpdateSignWidgetCmd',663),(7188,57003,57016,'OP_EqDebugPVDCmd',664),(7189,57003,57016,'OP_EqShowBookCmd',665),(7190,57003,57016,'OP_EqQuestionnaireCmd',666),(7191,57003,57016,'OP_EqGetProbsCmd',668),(7192,57003,57016,'OP_EqHearHealCmd',669),(7193,57003,57016,'OP_EqChatChannelUpdateCmd',670),(7194,57003,57016,'OP_EqWhoChannelQueryReplyCmd',671),(7195,57003,57016,'OP_EqAvailWorldChannelsCmd',672),(7196,57003,57016,'OP_EqUpdateTargetCmd',673),(7197,57003,57016,'OP_BrokerSellList',674),(7198,57003,57016,'OP_EqConsignmentItemsCmd',675),(7199,57003,57016,'OP_EqStartBrokerCmd',677),(7200,57003,57016,'OP_EqMapExplorationCmd',678),(7201,57003,57016,'OP_EqStoreLogCmd',679),(7202,57003,57016,'OP_EqSpellMoveToRangeAndRetryCmd',680),(7203,57003,57016,'OP_EqUpdatePlayerMailCmd',681),(7204,57003,57016,'OP_GuildStatusUpdate',684),(7205,57003,57016,'OP_EqArenaResultsCmd',685),(7206,57003,57016,'OP_EqGuildBankEventActionCmd',686),(7207,57003,57016,'OP_EqGuildBankExamineInfoCmd',687),(7208,57003,57016,'OP_EqHearSpellNoLandCmd',688),(7209,57003,57016,'OP_Lottery',689),(7210,57003,57016,'OP_GuildRecruitingMemberInfo',690),(7211,57003,57016,'OP_GuildRecruiting',691),(7212,57003,57016,'OP_GuildRecruitingDetails',692),(7213,57003,57016,'OP_GuildRecruitingImage',693),(7214,57003,57016,'OP_TradeskillList',711),(7215,57003,57016,'OP_CharRenamed',695),(7216,57003,57016,'OP_UseAdornment',705),(7217,57003,57016,'OP_ExpPurchWindow',711),(7218,57003,57016,'OP_PointOfInterest',715),(7219,57003,57016,'OP_PointOfInterest2',716),(7220,57003,57016,'OP_TraitsList',717),(7221,57003,57016,'OP_CustomizeHouseDisplay',720),(7222,57003,57016,'OP_VoiceChatServer',721),(7223,57003,57016,'OP_SupplyDepot',725),(7224,57003,57016,'OP_EQHearThreatCmd',726),(7225,57003,57016,'OP_RecipeList',727),(7226,57003,57016,'OP_Research',728),(7227,57003,57016,'OP_CharacterCurrency',729),(7228,57003,57016,'OP_CharacterAchievements',730),(7229,57003,57016,'OP_AchievementUpdateMsg',731),(7230,57003,57016,'OP_EQHearDispellCmd',732),(7231,57003,57016,'OP_JournalQuestStoryline',733),(7232,57003,57016,'OP_DungeonPlayAsAvatarList',734),(7233,57003,57016,'OP_DungeonPlayAsAvatarSelected',735),(7234,57003,57016,'OP_MercHireWindow',736),(7235,57003,57016,'OP_MercUnknown',737),(7236,57003,57016,'OP_Unknown',753),(7709,57003,57016,'OP_ClearForLandingMsg',491),(7710,57003,57016,'OP_Launchpad',570),(7711,57003,57016,'OP_ReceipelistUnknown',588),(7712,57032,57047,'OP_LoginRequestMsg',0),(7713,57032,57047,'OP_LoginByNumRequestMsg',1),(7714,57032,57047,'OP_WSLoginRequestMsg',2),(7715,57032,57047,'OP_ESLoginRequestMsg',3),(7716,57032,57047,'OP_LoginReplyMsg',4),(7717,57032,57047,'OP_WSStatusReplyMsg',5),(7718,57032,57047,'OP_WorldStatusChangeMsg',6),(7719,57032,57047,'OP_AllWSDescRequestMsg',7),(7720,57032,57047,'OP_WorldListMsg',8),(7721,57032,57047,'OP_AllCharactersDescRequestMsg',9),(7722,57032,57047,'OP_AllCharactersDescReplyMsg',10),(7723,57032,57047,'OP_CreateCharacterRequestMsg',11),(7724,57032,57047,'OP_CreateCharacterReplyMsg',12),(7725,57032,57047,'OP_WSCreateCharacterRequestMsg',13),(7726,57032,57047,'OP_WSCreateCharacterReplyMsg',14),(7727,57032,57047,'OP_ReskinCharacterRequestMsg',15),(7728,57032,57047,'OP_DeleteCharacterRequestMsg',16),(7729,57032,57047,'OP_DeleteCharacterReplyMsg',17),(7730,57032,57047,'OP_PlayCharacterRequestMsg',18),(7731,57032,57047,'OP_PlayCharacterReplyMsg',19),(7732,57032,57047,'OP_ExpectClientAsCharacterReplyMs',22),(7733,57032,57047,'OP_ServerPlayCharacterRequestMsg',23),(7734,57032,57047,'OP_ServerPlayCharacterReplyMsg',24),(7735,57032,57047,'OP_ESInitMsg',25),(7736,57032,57047,'OP_ESReadyForClientsMsg',26),(7737,57032,57047,'OP_CreateZoneInstanceMsg',29),(7738,57032,57047,'OP_ZoneInstanceCreateReplyMsg',30),(7739,57032,57047,'OP_ZoneInstanceDestroyedMsg',31),(7740,57032,57047,'OP_ExpectClientAsCharacterRequest',32),(7741,57032,57047,'OP_ZoneInfoMsg',33),(7742,57032,57047,'OP_DoneLoadingZoneResourcesMsg',34),(7743,57032,57047,'OP_DoneSendingInitialEntitiesMsg',35),(7744,57032,57047,'OP_DoneLoadingEntityResourcesMsg',36),(7745,57032,57047,'OP_PredictionUpdateMsg',37),(7746,57032,57047,'OP_UpdatePositionMsg',39),(7747,57032,57047,'OP_SetRemoteCmdsMsg',41),(7748,57032,57047,'OP_RemoteCmdMsg',42),(7749,57032,57047,'OP_GameWorldTimeMsg',43),(7750,57032,57047,'OP_MOTDMsg',44),(7751,57032,57047,'OP_ZoneMOTDMsg',45),(7752,57032,57047,'OP_AvatarCreatedMsg',46),(7753,57032,57047,'OP_AvatarDestroyedMsg',47),(7754,57032,57047,'OP_RequestCampMsg',50),(7755,57032,57047,'OP_CampStartedMsg',51),(7756,57032,57047,'OP_CampAbortedMsg',52),(7757,57032,57047,'OP_WhoQueryRequestMsg',53),(7758,57032,57047,'OP_WhoQueryReplyMsg',54),(7759,57032,57047,'OP_MonitorReplyMsg',55),(7760,57032,57047,'OP_MonitorCharacterListMsg',56),(7761,57032,57047,'OP_MonitorCharacterListRequestMsg',57),(7762,57032,57047,'OP_ClientCmdMsg',58),(7763,57032,57047,'OP_DispatchESMsg',59),(7764,57032,57047,'OP_DispatchClientCmdMsg',60),(7765,57032,57047,'OP_UpdateTargetMsg',61),(7766,57032,57047,'OP_UpdateTargetLocMsg',62),(7767,57032,57047,'OP_UpdateCharacterSheetMsg',63),(7768,57032,57047,'OP_CharacterPet',64),(7769,57032,57047,'OP_CharacterMerc',65),(7770,57032,57047,'OP_UpdateSpellBookMsg',66),(7771,57032,57047,'OP_UpdateInventoryMsg',68),(7772,57032,57047,'OP_AfterInvSpellUpdate',69),(7773,57032,57047,'OP_UpdateRecipeBookMsg',70),(7774,57032,57047,'OP_RequestRecipeDetailsMsg',71),(7775,57032,57047,'OP_RecipeDetailsMsg',72),(7776,57032,57047,'OP_UpdateSkillBookMsg',73),(7777,57032,57047,'OP_UpdateSkillsMsg',74),(7778,57032,57047,'OP_UpdateOpportunityMsg',75),(7779,57032,57047,'OP_ChangeZoneMsg',77),(7780,57032,57047,'OP_ClientTeleportRequestMsg',78),(7781,57032,57047,'OP_TeleportWithinZoneMsg',79),(7782,57032,57047,'OP_TeleportWithinZoneNoReloadMsg',80),(7783,57032,57047,'OP_MigrateClientToZoneRequestMsg',81),(7784,57032,57047,'OP_MigrateClientToZoneReplyMsg',82),(7785,57032,57047,'OP_ReadyToZoneMsg',84),(7786,57032,57047,'OP_RemoveClientFromGroupMsg',85),(7787,57032,57047,'OP_RemoveGroupFromGroupMsg',86),(7788,57032,57047,'OP_MakeGroupLeaderMsg',87),(7789,57032,57047,'OP_GroupCreatedMsg',88),(7790,57032,57047,'OP_GroupDestroyedMsg',89),(7791,57032,57047,'OP_GroupMemberAddedMsg',90),(7792,57032,57047,'OP_GroupMemberRemovedMsg',91),(7793,57032,57047,'OP_GroupRemovedFromGroupMsg',92),(7794,57032,57047,'OP_GroupLeaderChangedMsg',93),(7795,57032,57047,'OP_GroupResendOOZDataMsg',94),(7796,57032,57047,'OP_GroupSettingsChangedMsg',95),(7797,57032,57047,'OP_OutOfZoneMemberDataMsg',96),(7798,57032,57047,'OP_SendLatestRequestMsg',97),(7799,57032,57047,'OP_ClearDataMsg',98),(7800,57032,57047,'OP_SetSocialMsg',99),(7801,57032,57047,'OP_ESStatusMsg',100),(7802,57032,57047,'OP_ESZoneInstanceStatusMsg',101),(7803,57032,57047,'OP_ZonesStatusRequestMsg',102),(7804,57032,57047,'OP_ZonesStatusMsg',103),(7805,57032,57047,'OP_ESWeatherRequestMsg',104),(7806,57032,57047,'OP_ESWeatherRequestEndMsg',105),(7807,57032,57047,'OP_DialogSelectMsg',109),(7808,57032,57047,'OP_DialogCloseMsg',110),(7809,57032,57047,'OP_RemoveSpellEffectMsg',111),(7810,57032,57047,'OP_RemoveConcentrationMsg',112),(7811,57032,57047,'OP_QuestJournalOpenMsg',113),(7812,57032,57047,'OP_QuestJournalInspectMsg',114),(7813,57032,57047,'OP_QuestJournalSetVisibleMsg',115),(7814,57032,57047,'OP_QuestJournalWaypointMsg',116),(7815,57032,57047,'OP_CreateGuildRequestMsg',119),(7816,57032,57047,'OP_CreateGuildReplyMsg',120),(7817,57032,57047,'OP_GuildsayMsg',121),(7818,57032,57047,'OP_FellowshipExpMsg',122),(7819,57032,57047,'OP_DeleteGuildMsg',123),(7820,57032,57047,'OP_GuildUpdateMsg',124),(7821,57032,57047,'OP_ConsignmentCloseStoreMsg',125),(7822,57032,57047,'OP_ConsignItemRequestMsg',126),(7823,57032,57047,'OP_ConsignItemResponseMsg',127),(7824,57032,57047,'OP_PurchaseConsignmentRequestMsg',128),(7825,57032,57047,'OP_LikeOption',136),(7826,57032,57047,'OP_PublishHouse',138),(7827,57032,57047,'OP_PlayerMadeInstancesScreen',139),(7828,57032,57047,'OP_PlayerMadeInstances',140),(7829,57032,57047,'OP_HouseDeletedRemotelyMsg',142),(7830,57032,57047,'OP_UpdateHouseDataMsg',143),(7831,57032,57047,'OP_UpdateHouseAccessDataMsg',144),(7832,57032,57047,'OP_PlayerHouseBaseScreenMsg',145),(7833,57032,57047,'OP_PlayerHousePurchaseScreenMsg',146),(7834,57032,57047,'OP_PlayerHouseAccessUpdateMsg',147),(7835,57032,57047,'OP_PlayerHouseDisplayStatusMsg',148),(7836,57032,57047,'OP_PlayerHouseCloseUIMsg',149),(7837,57032,57047,'OP_BuyPlayerHouseMsg',150),(7838,57032,57047,'OP_BuyPlayerHouseTintMsg',151),(7839,57032,57047,'OP_CollectAllHouseItemsMsg',152),(7840,57032,57047,'OP_RelinquishHouseMsg',153),(7841,57032,57047,'OP_EnterHouseMsg',154),(7842,57032,57047,'OP_ExitHouseMsg',155),(7843,57032,57047,'OP_HouseDefaultAccessSetMsg',156),(7844,57032,57047,'OP_HouseAccessSetMsg',157),(7845,57032,57047,'OP_HouseAccessRemoveMsg',158),(7846,57032,57047,'OP_PayHouseUpkeepMsg',159),(7847,57032,57047,'OP_MoveableObjectPlacementCriteri',160),(7848,57032,57047,'OP_EnterMoveObjectModeMsg',161),(7849,57032,57047,'OP_PositionMoveableObject',162),(7850,57032,57047,'OP_CancelMoveObjectModeMsg',163),(7851,57032,57047,'OP_ShaderCustomizationMsg',164),(7852,57032,57047,'OP_ReplaceableSubMeshesMsg',165),(7853,57032,57047,'OP_HouseCustomizationScreenMsg',166),(7854,57032,57047,'OP_CustomizationPurchaseRequestMs',167),(7855,57032,57047,'OP_CustomizationSetRequestMsg',168),(7856,57032,57047,'OP_CustomizationReplyMsg',169),(7857,57032,57047,'OP_TintWidgetsMsg',170),(7858,57032,57047,'OP_ExamineConsignmentRequestMsg',171),(7859,57032,57047,'OP_ExamineConsignmentResponseMsg',172),(7860,57032,57047,'OP_UISettingsResponseMsg',173),(7861,57032,57047,'OP_UIResetMsg',174),(7862,57032,57047,'OP_KeymapLoadMsg',175),(7863,57032,57047,'OP_KeymapNoneMsg',176),(7864,57032,57047,'OP_KeymapDataMsg',177),(7865,57032,57047,'OP_KeymapSaveMsg',178),(7866,57032,57047,'OP_DispatchSpellCmdMsg',179),(7867,57032,57047,'OP_EntityVerbsRequestMsg',180),(7868,57032,57047,'OP_EntityVerbsReplyMsg',181),(7869,57032,57047,'OP_EntityVerbsVerbMsg',182),(7870,57032,57047,'OP_ChatRelationshipUpdateMsg',184),(7871,57032,57047,'OP_LootItemsRequestMsg',185),(7872,57032,57047,'OP_StoppedLootingMsg',186),(7873,57032,57047,'OP_SitMsg',187),(7874,57032,57047,'OP_StandMsg',188),(7875,57032,57047,'OP_SatMsg',189),(7876,57032,57047,'OP_StoodMsg',190),(7877,57032,57047,'OP_ClearForTakeOffMsg',191),(7878,57032,57047,'OP_ReadyForTakeOffMsg',192),(7879,57032,57047,'OP_ShowIllusionsMsg',193),(7880,57032,57047,'OP_HideIllusionsMsg',194),(7881,57032,57047,'OP_ExamineItemRequestMsg',195),(7882,57032,57047,'OP_ReadBookPageMsg',196),(7883,57032,57047,'OP_DefaultGroupOptionsRequestMsg',197),(7884,57032,57047,'OP_DefaultGroupOptionsMsg',198),(7885,57032,57047,'OP_GroupOptionsMsg',199),(7886,57032,57047,'OP_DisplayGroupOptionsScreenMsg',200),(7887,57032,57047,'OP_PetOptions',201),(7888,57032,57047,'OP_DisplayInnVisitScreenMsg',202),(7889,57032,57047,'OP_DumpSchedulerMsg',203),(7890,57032,57047,'OP_LSCheckAcctLockMsg',204),(7891,57032,57047,'OP_WSAcctLockStatusMsg',205),(7892,57032,57047,'OP_RequestHelpRepathMsg',206),(7893,57032,57047,'OP_RequestTargetLocMsg',207),(7894,57032,57047,'OP_UpdateMotdMsg',208),(7895,57032,57047,'OP_DestUpdateReq',210),(7896,57032,57047,'OP_PerformPlayerKnockbackMsg',213),(7897,57032,57047,'OP_PerformCameraShakeMsg',214),(7898,57032,57047,'OP_PopulateSkillMapsMsg',215),(7899,57032,57047,'OP_CancelledFeignMsg',216),(7900,57032,57047,'OP_SysClient',218),(7901,57032,57047,'OP_ShowCreateFromRecipeUIMsg',219),(7902,57032,57047,'OP_CancelCreateFromRecipeMsg',220),(7903,57032,57047,'OP_BeginItemCreationMsg',221),(7904,57032,57047,'OP_StopItemCreationMsg',222),(7905,57032,57047,'OP_ShowItemCreationProcessUIMsg',223),(7906,57032,57047,'OP_UpdateItemCreationProcessUIMsg',224),(7907,57032,57047,'OP_DisplayTSEventReactionMsg',225),(7908,57032,57047,'OP_ShowRecipeBookMsg',226),(7909,57032,57047,'OP_KnowledgebaseRequestMsg',227),(7910,57032,57047,'OP_KnowledgebaseResponseMsg',228),(7911,57032,57047,'OP_CSTicketHeaderRequestMsg',229),(7912,57032,57047,'OP_CSTicketInfoMsg',230),(7913,57032,57047,'OP_CSTicketCommentRequestMsg',231),(7914,57032,57047,'OP_CSTicketCommentResponseMsg',232),(7915,57032,57047,'OP_CSTicketCreateMsg',233),(7916,57032,57047,'OP_CSTicketAddCommentMsg',234),(7917,57032,57047,'OP_CSTicketDeleteMsg',235),(7918,57032,57047,'OP_CSTicketChangeNotificationMsg',236),(7919,57032,57047,'OP_WorldDataUpdateMsg',237),(7920,57032,57047,'OP_KnownLanguagesMsg',238),(7921,57032,57047,'OP_LsRequestClientCrashLogMsg',239),(7922,57032,57047,'OP_LsClientBaselogReplyMsg',240),(7923,57032,57047,'OP_LsClientCrashlogReplyMsg',241),(7924,57032,57047,'OP_LsClientAlertlogReplyMsg',242),(7925,57032,57047,'OP_LsClientVerifylogReplyMsg',243),(7926,57032,57047,'OP_ClientTeleportToLocationMsg',244),(7927,57032,57047,'OP_UpdateClientPredFlagsMsg',245),(7928,57032,57047,'OP_ChangeServerControlFlagMsg',246),(7929,57032,57047,'OP_CSToolsRequestMsg',247),(7930,57032,57047,'OP_CSToolsResponseMsg',248),(7931,57032,57047,'OP_AddSocialStructureStandingMsg',249),(7932,57032,57047,'OP_CreateBoatTransportsMsg',250),(7933,57032,57047,'OP_PositionBoatTransportMsg',251),(7934,57032,57047,'OP_MigrateBoatTransportMsg',252),(7935,57032,57047,'OP_MigrateBoatTransportReplyMsg',253),(7936,57032,57047,'OP_DisplayDebugNLLPointsMsg',254),(7937,57032,57047,'OP_ExamineInfoRequestMsg',255),(7938,57032,57047,'OP_QuickbarInitMsg',256),(7939,57032,57047,'OP_QuickbarUpdateMsg',257),(7940,57032,57047,'OP_MacroInitMsg',258),(7941,57032,57047,'OP_MacroUpdateMsg',259),(7942,57032,57047,'OP_QuestionnaireMsg',260),(7943,57032,57047,'OP_LevelChangedMsg',261),(7944,57032,57047,'OP_SpellGainedMsg',262),(7945,57032,57047,'OP_EncounterBrokenMsg',263),(7946,57032,57047,'OP_OnscreenMsgMsg',264),(7947,57032,57047,'OP_DisplayWarningMsg',265),(7948,57032,57047,'OP_ModifyGuildMsg',266),(7949,57032,57047,'OP_GuildEventMsg',267),(7950,57032,57047,'OP_GuildEventAddMsg',268),(7951,57032,57047,'OP_GuildEventActionMsg',269),(7952,57032,57047,'OP_GuildEventListMsg',270),(7953,57032,57047,'OP_RequestGuildEventDetailsMsg',271),(7954,57032,57047,'OP_GuildEventDetailsMsg',272),(7955,57032,57047,'OP_RequestGuildInfoMsg',273),(7956,57032,57047,'OP_GuildBankActionMsg',274),(7957,57032,57047,'OP_GuildBankActionResponseMsg',275),(7958,57032,57047,'OP_GuildBankItemDetailsRequestMsg',276),(7959,57032,57047,'OP_GuildBankItemDetailsResponseMs',277),(7960,57032,57047,'OP_GuildBankUpdateMsg',278),(7961,57032,57047,'OP_GuildBankEventListMsg',279),(7962,57032,57047,'OP_RequestGuildBankEventDetailsMs',280),(7963,57032,57047,'OP_RewardPackMsg',281),(7964,57032,57047,'OP_RenameGuildMsg',282),(7965,57032,57047,'OP_ZoneToFriendRequestMsg',283),(7966,57032,57047,'OP_ZoneToFriendReplyMsg',284),(7967,57032,57047,'OP_ChatCreateChannelMsg',285),(7968,57032,57047,'OP_ChatJoinChannelMsg',286),(7969,57032,57047,'OP_ChatWhoChannelMsg',287),(7970,57032,57047,'OP_ChatLeaveChannelMsg',288),(7971,57032,57047,'OP_ChatTellChannelMsg',289),(7972,57032,57047,'OP_ChatTellUserMsg',290),(7973,57032,57047,'OP_ChatToggleFriendMsg',291),(7974,57032,57047,'OP_BrokerAddBag',292),(7975,57032,57047,'OP_BrokerRemoveBag',293),(7976,57032,57047,'OP_ChatToggleIgnoreMsg',294),(7977,57032,57047,'OP_ChatSendFriendsMsg',295),(7978,57032,57047,'OP_ChatSendIgnoresMsg',296),(7979,57032,57047,'OP_QuestReward',320),(7980,57032,57047,'OP_ChatFiltersMsg',335),(7981,57032,57047,'OP_MailGetMessageMsg',338),(7982,57032,57047,'OP_MailSendMessageMsg',339),(7983,57032,57047,'OP_MailDeleteMessageMsg',340),(7984,57032,57047,'OP_MailGetHeadersReplyMsg',341),(7985,57032,57047,'OP_MailGetMessageReplyMsg',342),(7986,57032,57047,'OP_MailSendMessageReplyMsg',343),(7987,57032,57047,'OP_MailCommitSendMessageMsg',344),(7988,57032,57047,'OP_MailSendSystemMessageMsg',345),(7989,57032,57047,'OP_MailRemoveAttachFromMailMsg',346),(7990,57032,57047,'OP_WaypointRequestMsg',348),(7991,57032,57047,'OP_WaypointReplyMsg',349),(7992,57032,57047,'OP_WaypointSelectMsg',350),(7993,57032,57047,'OP_WaypointUpdateMsg',351),(7994,57032,57047,'OP_CharNameChangedMsg',352),(7995,57032,57047,'OP_ShowZoneTeleporterDestinations',353),(7996,57032,57047,'OP_SelectZoneTeleporterDestinatio',354),(7997,57032,57047,'OP_ReloadLocalizedTxtMsg',355),(7998,57032,57047,'OP_RequestGuildMembershipMsg',356),(7999,57032,57047,'OP_GuildMembershipResponseMsg',357),(8000,57032,57047,'OP_LeaveGuildNotifyMsg',358),(8001,57032,57047,'OP_JoinGuildNotifyMsg',359),(8002,57032,57047,'OP_AvatarUpdateMsg',360),(8003,57032,57047,'OP_BioUpdateMsg',362),(8004,57032,57047,'OP_InspectPlayerMsg',363),(8005,57032,57047,'OP_WSServerLockMsg',364),(8006,57032,57047,'OP_LSServerLockMsg',365),(8007,57032,57047,'OP_WSServerHideMsg',366),(8008,57032,57047,'OP_CsCategoryRequestMsg',367),(8009,57032,57047,'OP_CsCategoryResponseMsg',368),(8010,57032,57047,'OP_KnowledgeWindowSlotMappingMsg',369),(8011,57032,57047,'OP_AFKUpdateMsg',370),(8012,57032,57047,'OP_AnonUpdateMsg',371),(8013,57032,57047,'OP_UpdateActivePublicZonesMsg',372),(8014,57032,57047,'OP_UnknownNpcMsg',373),(8015,57032,57047,'OP_PromoFlagsDetailsMsg',374),(8016,57032,57047,'OP_ConsignViewCreateMsg',375),(8017,57032,57047,'OP_ConsignViewGetPageMsg',376),(8018,57032,57047,'OP_ConsignViewReleaseMsg',377),(8019,57032,57047,'OP_ConsignRemoveItemsMsg',378),(8020,57032,57047,'OP_UpdateDebugRadiiMsg',379),(8021,57032,57047,'OP_ReportMsg',380),(8022,57032,57047,'OP_UpdateRaidMsg',381),(8023,57032,57047,'OP_ConsignViewSortMsg',383),(8024,57032,57047,'OP_TitleUpdateMsg',384),(8025,57032,57047,'OP_ClientFellMsg',385),(8026,57032,57047,'OP_ClientInDeathRegionMsg',386),(8027,57032,57047,'OP_CampClientMsg',387),(8028,57032,57047,'OP_CSToolAccessResponseMsg',388),(8029,57032,57047,'OP_UpdateGroupMemberDataMsg',388),(8030,57032,57047,'OP_TrackingUpdateMsg',389),(8031,57032,57047,'OP_BeginTrackingMsg',390),(8032,57032,57047,'OP_StopTrackingMsg',391),(8033,57032,57047,'OP_GetAvatarAccessRequestForCSToo',393),(8034,57032,57047,'OP_AdvancementRequestMsg',394),(8035,57032,57047,'OP_MapFogDataInitMsg',395),(8036,57032,57047,'OP_MapFogDataUpdateMsg',396),(8037,57032,57047,'OP_CloseGroupInviteWindowMsg',397),(8038,57032,57047,'OP_WorldPingMsg',399),(8039,57032,57047,'OP_MoveLogUpdateMsg',400),(8040,57032,57047,'OP_OfferQuestMsg',401),(8041,57032,57047,'OP_WorldShutdownUpdateMsg',403),(8042,57032,57047,'OP_DisplayMailScreenMsg',404),(8043,57032,57047,'OP_ClientIdleBeginMsg',405),(8044,57032,57047,'OP_ClientIdleEndMsg',406),(8045,57032,57047,'OP_PurchaseConsignmentLoreCheckRe',407),(8046,57032,57047,'OP_NotifyApprenticeStoppedMentori',408),(8047,57032,57047,'OP_CorruptedClientMsg',409),(8048,57032,57047,'OP_WorldDataChangeMsg',410),(8049,57032,57047,'OP_MailEventNotificationMsg',411),(8050,57032,57047,'OP_RestartZoneMsg',412),(8051,57032,57047,'OP_FlightPathsMsg',413),(8052,57032,57047,'OP_CharacterLinkdeadMsg',414),(8053,57032,57047,'OP_CharTransferStartRequestMsg',415),(8054,57032,57047,'OP_CharTransferStartReplyMsg',416),(8055,57032,57047,'OP_CharTransferRequestMsg',417),(8056,57032,57047,'OP_CharTransferReplyMsg',418),(8057,57032,57047,'OP_CharTransferRollbackRequestMsg',419),(8058,57032,57047,'OP_CharTransferCommitRequestMsg',420),(8059,57032,57047,'OP_CharTransferRollbackReplyMsg',421),(8060,57032,57047,'OP_CharTransferCommitReplyMsg',422),(8061,57032,57047,'OP_GetCharacterSerializedRequestM',423),(8062,57032,57047,'OP_GetCharacterSerializedReplyMsg',424),(8063,57032,57047,'OP_CreateCharFromCBBRequestMsg',425),(8064,57032,57047,'OP_CreateCharFromCBBReplyMsg',426),(8065,57032,57047,'OP_HousingDataChangedMsg',427),(8066,57032,57047,'OP_HousingRestoreMsg',428),(8067,57032,57047,'OP_AuctionItem',429),(8068,57032,57047,'OP_AuctionItemReply',430),(8069,57032,57047,'OP_AuctionCoin',431),(8070,57032,57047,'OP_AuctionCoinReply',432),(8071,57032,57047,'OP_AuctionCharacter',433),(8072,57032,57047,'OP_AuctionCharacterReply',434),(8073,57032,57047,'OP_AuctionCommitMsg',435),(8074,57032,57047,'OP_AuctionAbortMsg',436),(8075,57032,57047,'OP_CharTransferValidateRequestMsg',437),(8076,57032,57047,'OP_CharTransferValidateReplyMsg',438),(8077,57032,57047,'OP_RaceRestrictionMsg',439),(8078,57032,57047,'OP_SetInstanceDisplayNameMsg',440),(8079,57032,57047,'OP_GetAuctionAssetIDMsg',441),(8080,57032,57047,'OP_GetAuctionAssetIDReplyMsg',442),(8081,57032,57047,'OP_ResendWorldChannelsMsg',443),(8082,57032,57047,'OP_DisplayExchangeScreenMsg',444),(8083,57032,57047,'OP_ArenaGameTypesMsg',445),(8084,57032,57047,'OP_AuditAuctionEventMsg',446),(8085,57032,57047,'OP_InviteRequestMsg',447),(8086,57032,57047,'OP_InviteResponseMsg',448),(8087,57032,57047,'OP_InviteTargetResponseMsg',449),(8088,57032,57047,'OP_InspectPlayerRequestMsg',450),(8089,57032,57047,'OP_DispatchMsg',451),(8090,57032,57047,'OP_DisplayEventMsg',452),(8091,57032,57047,'OP_PrePossessionMsg',453),(8092,57032,57047,'OP_PostPossessionMsg',454),(8093,57032,57047,'OP_ArenaCreate',456),(8094,57032,57047,'OP_ArenaList',457),(8095,57032,57047,'OP_ArenaWindow',465),(8096,57032,57047,'OP_HouseItemsList',483),(8097,57032,57047,'OP_CurrentPet',485),(8098,57032,57047,'OP_AdventureList',488),(8099,57032,57047,'OP_CancelSpellCast',489),(8100,57032,57047,'OP_ClearForLandingMsg',491),(8101,57032,57047,'OP_UpdateTitleCmd',494),(8102,57032,57047,'OP_AttackAllowed',500),(8103,57032,57047,'OP_AttackNotAllowed',501),(8104,57032,57047,'OP_BagOptions',502),(8105,57032,57047,'OP_LFGGroupSearch',504),(8106,57032,57047,'OP_CharacterHousingList',507),(8107,57032,57047,'OP_DressingRoom',510),(8108,57032,57047,'OP_PlayLon',511),(8109,57032,57047,'OP_SkillInfoRequest',514),(8110,57032,57047,'OP_SkillInfoResponse',515),(8111,57032,57047,'OP_LFGUpdateMsg',518),(8112,57032,57047,'OP_BadLanguageFilter',519),(8113,57032,57047,'OP_VoiceChatChannel',520),(8114,57032,57047,'OP_MapRequest',521),(8115,57032,57047,'OP_MarketFundsUpdate',526),(8116,57032,57047,'OP_UIEvent',527),(8117,57032,57047,'OP_MarketAddFundsRequest',528),(8118,57032,57047,'OP_MarketAddFundsReply',529),(8119,57032,57047,'OP_MarketPurchase',531),(8120,57032,57047,'OP_MarketPlacePrices',532),(8121,57032,57047,'OP_MarketPlaceItems',535),(8122,57032,57047,'OP_RecipeBook',536),(8123,57032,57047,'OP_CreateCharacterDungeon',545),(8124,57032,57047,'OP_DungeonMakerEnter',546),(8125,57032,57047,'OP_DungeonMakerItemRequest',548),(8126,57032,57047,'OP_CharacterCreatedDungeons',549),(8127,57032,57047,'OP_DungeonMakerToolboxList',550),(8128,57032,57047,'OP_DungeonMakerUnknown',551),(8129,57032,57047,'OP_DungeonMakerUnknown1',552),(8130,57032,57047,'OP_PlayerPollPopup',554),(8131,57032,57047,'OP_PlayerPollAnswer',555),(8132,57032,57047,'OP_MentorPopup',556),(8133,57032,57047,'OP_LoadWelcomeWindow',558),(8134,57032,57047,'OP_OpenCharCust',559),(8135,57032,57047,'OP_SubmitCharCust',560),(8136,57032,57047,'OP_QueAllBgSolo',562),(8137,57032,57047,'OP_ZoneBgInstanceList',564),(8138,57032,57047,'OP_WorldTravelAvail',568),(8139,57032,57047,'OP_Launchpad',570),(8140,57032,57047,'OP_GarbagePacket',572),(8141,57032,57047,'OP_LoadCalendarEvents',573),(8142,57032,57047,'OP_VideoUploaded',574),(8143,57032,57047,'OP_SavageBarInitMsg',575),(8144,57032,57047,'OP_PetOptionsResponse',576),(8145,57032,57047,'OP_DungeonMakerItemResponse',577),(8146,57032,57047,'OP_CharacterMounts',579),(8147,57032,57047,'OP_RecipeListUnknown',588),(8148,57032,57047,'OP_EqBetaCopyRequest',593),(8149,57032,57047,'OP_EqHearChatCmd',594),(8150,57032,57047,'OP_EqDisplayTextCmd',595),(8151,57032,57047,'OP_EqCreateGhostCmd',596),(8152,57032,57047,'OP_EqCreateWidgetCmd',597),(8153,57032,57047,'OP_EqCreateSignWidgetCmd',598),(8154,57032,57047,'OP_EqDestroyGhostCmd',599),(8155,57032,57047,'OP_EqUpdateGhostCmd',600),(8156,57032,57047,'OP_EqSetControlGhostCmd',601),(8157,57032,57047,'OP_EqSetPOVGhostCmd',602),(8158,57032,57047,'OP_EqHearCombatCmd',603),(8159,57032,57047,'OP_EqHearSpellCastCmd',604),(8160,57032,57047,'OP_EQHearProcCmd',605),(8161,57032,57047,'OP_EQHearResEffectCmd',606),(8162,57032,57047,'OP_EqHearSpellInterruptCmd',607),(8163,57032,57047,'OP_EqHearSpellFizzleCmd',608),(8164,57032,57047,'OP_EqHearConsiderCmd',609),(8165,57032,57047,'OP_EqUpdateSubClassesCmd',610),(8166,57032,57047,'OP_EqCreateListBoxCmd',611),(8167,57032,57047,'OP_EqSetDebugPathPointsCmd',612),(8168,57032,57047,'OP_EqCannedEmoteCmd',614),(8169,57032,57047,'OP_EqStateCmd',615),(8170,57032,57047,'OP_EqPlaySoundCmd',616),(8171,57032,57047,'OP_EqPlaySound3DCmd',617),(8172,57032,57047,'OP_EqPlayVoiceCmd',618),(8173,57032,57047,'OP_EqHearDrowningCmd',619),(8174,57032,57047,'OP_EqHearDeathCmd',620),(8175,57032,57047,'OP_EqGroupMemberRemovedCmd',621),(8176,57032,57047,'OP_EqHearChainEffectCmd',622),(8177,57032,57047,'OP_EqReceiveOfferCmd',623),(8178,57032,57047,'OP_EqInspectPCResultsCmd',624),(8179,57032,57047,'OP_EqDrawablePathGraphCmd',625),(8180,57032,57047,'OP_EqDialogOpenCmd',626),(8181,57032,57047,'OP_EqDialogCloseCmd',627),(8182,57032,57047,'OP_EqFactionUpdateCmd',628),(8183,57032,57047,'OP_EqCollectionUpdateCmd',629),(8184,57032,57047,'OP_EqCollectionFilterCmd',630),(8185,57032,57047,'OP_EqCollectionItemCmd',631),(8186,57032,57047,'OP_EqQuestJournalUpdateCmd',632),(8187,57032,57047,'OP_EqMentoring',633),(8188,57032,57047,'OP_EqQuestJournalReplyCmd',634),(8189,57032,57047,'OP_EqQuestGroupCmd',635),(8190,57032,57047,'OP_EqUpdateMerchantCmd',636),(8191,57032,57047,'OP_EqUpdateStoreCmd',637),(8192,57032,57047,'OP_EqUpdatePlayerTradeCmd',638),(8193,57032,57047,'OP_EqHelpPathCmd',639),(8194,57032,57047,'OP_EqHelpPathClearCmd',640),(8195,57032,57047,'OP_EqUpdateBankCmd',641),(8196,57032,57047,'OP_EqExamineInfoCmd',642),(8197,57032,57047,'OP_EqCloseWindowCmd',643),(8198,57032,57047,'OP_EqUpdateLootCmd',644),(8199,57032,57047,'OP_EqJunctionListCmd',645),(8200,57032,57047,'OP_EqShowDeathWindowCmd',646),(8201,57032,57047,'OP_EqDisplaySpellFailCmd',647),(8202,57032,57047,'OP_EqSpellCastStartCmd',648),(8203,57032,57047,'OP_EqSpellCastEndCmd',649),(8204,57032,57047,'OP_EqResurrectedCmd',650),(8205,57032,57047,'OP_EqChoiceWinCmd',651),(8206,57032,57047,'OP_EqSetDefaultVerbCmd',652),(8207,57032,57047,'OP_EqInstructionWindowCmd',653),(8208,57032,57047,'OP_EqInstructionWindowCloseCmd',654),(8209,57032,57047,'OP_EqInstructionWindowGoalCmd',655),(8210,57032,57047,'OP_EqInstructionWindowTaskCmd',656),(8211,57032,57047,'OP_EqEnableGameEventCmd',657),(8212,57032,57047,'OP_EqShowWindowCmd',658),(8213,57032,57047,'OP_EqEnableWindowCmd',659),(8214,57032,57047,'OP_EqFlashWindowCmd',660),(8215,57032,57047,'OP_EqHearPlayFlavorCmd',662),(8216,57032,57047,'OP_EqUpdateSignWidgetCmd',663),(8217,57032,57047,'OP_EqDebugPVDCmd',664),(8218,57032,57047,'OP_EqShowBookCmd',665),(8219,57032,57047,'OP_EqQuestionnaireCmd',666),(8220,57032,57047,'OP_EqGetProbsCmd',668),(8221,57032,57047,'OP_EqHearHealCmd',669),(8222,57032,57047,'OP_EqChatChannelUpdateCmd',670),(8223,57032,57047,'OP_EqWhoChannelQueryReplyCmd',671),(8224,57032,57047,'OP_EqAvailWorldChannelsCmd',672),(8225,57032,57047,'OP_EqUpdateTargetCmd',673),(8226,57032,57047,'OP_BrokerSellList',674),(8227,57032,57047,'OP_EqConsignmentItemsCmd',675),(8228,57032,57047,'OP_EqStartBrokerCmd',677),(8229,57032,57047,'OP_EqMapExplorationCmd',678),(8230,57032,57047,'OP_EqStoreLogCmd',679),(8231,57032,57047,'OP_EqSpellMoveToRangeAndRetryCmd',680),(8232,57032,57047,'OP_EqUpdatePlayerMailCmd',681),(8233,57032,57047,'OP_GuildStatusUpdate',684),(8234,57032,57047,'OP_EqArenaResultsCmd',685),(8235,57032,57047,'OP_EqGuildBankEventActionCmd',686),(8236,57032,57047,'OP_EqGuildBankExamineInfoCmd',687),(8237,57032,57047,'OP_EqHearSpellNoLandCmd',688),(8238,57032,57047,'OP_Lottery',689),(8239,57032,57047,'OP_GuildRecruitingMemberInfo',690),(8240,57032,57047,'OP_GuildRecruiting',691),(8241,57032,57047,'OP_GuildRecruitingDetails',692),(8242,57032,57047,'OP_GuildRecruitingImage',693),(8243,57032,57047,'OP_TradeskillList',694),(8244,57032,57047,'OP_CharRenamed',695),(8245,57032,57047,'OP_UseAdornment',705),(8246,57032,57047,'OP_ExpPurchWindow',711),(8247,57032,57047,'OP_PointOfInterest',715),(8248,57032,57047,'OP_PointOfInterest2',716),(8249,57032,57047,'OP_TraitsList',717),(8250,57032,57047,'OP_CustomizeHouseDisplay',720),(8251,57032,57047,'OP_VoiceChatServer',721),(8252,57032,57047,'OP_SupplyDepot',725),(8253,57032,57047,'OP_EQHearThreatCmd',726),(8254,57032,57047,'OP_RecipeList',727),(8255,57032,57047,'OP_Research',728),(8256,57032,57047,'OP_CharacterCurrency',729),(8257,57032,57047,'OP_CharacterAchievements',730),(8258,57032,57047,'OP_AchievementUpdateMsg',731),(8259,57032,57047,'OP_EQHearDispellCmd',732),(8260,57032,57047,'OP_JournalQuestStoryline',733),(8261,57032,57047,'OP_DungeonPlayAsAvatarList',734),(8262,57032,57047,'OP_DungeonPlayAsAvatarSelected',735),(8263,57032,57047,'OP_MercHireWindow',736),(8264,57032,57047,'OP_MercUnknown',737),(8265,57032,57047,'OP_Unknown',750),(8266,57048,57079,'OP_LoginRequestMsg',0),(8267,57048,57079,'OP_LoginByNumRequestMsg',1),(8268,57048,57079,'OP_WSLoginRequestMsg',2),(8269,57048,57079,'OP_ESLoginRequestMsg',3),(8270,57048,57079,'OP_LoginReplyMsg',4),(8271,57048,57079,'OP_WSStatusReplyMsg',5),(8272,57048,57079,'OP_WorldStatusChangeMsg',6),(8273,57048,57079,'OP_AllWSDescRequestMsg',7),(8274,57048,57079,'OP_WorldListMsg',8),(8275,57048,57079,'OP_AllCharactersDescRequestMsg',9),(8276,57048,57079,'OP_AllCharactersDescReplyMsg',10),(8277,57048,57079,'OP_CreateCharacterRequestMsg',11),(8278,57048,57079,'OP_CreateCharacterReplyMsg',12),(8279,57048,57079,'OP_WSCreateCharacterRequestMsg',13),(8280,57048,57079,'OP_WSCreateCharacterReplyMsg',14),(8281,57048,57079,'OP_ReskinCharacterRequestMsg',15),(8282,57048,57079,'OP_DeleteCharacterRequestMsg',16),(8283,57048,57079,'OP_DeleteCharacterReplyMsg',17),(8284,57048,57079,'OP_PlayCharacterRequestMsg',18),(8285,57048,57079,'OP_PlayCharacterReplyMsg',19),(8286,57048,57079,'OP_ExpectClientAsCharacterReplyMs',22),(8287,57048,57079,'OP_ServerPlayCharacterRequestMsg',23),(8288,57048,57079,'OP_ServerPlayCharacterReplyMsg',24),(8289,57048,57079,'OP_ESInitMsg',25),(8290,57048,57079,'OP_ESReadyForClientsMsg',26),(8291,57048,57079,'OP_CreateZoneInstanceMsg',29),(8292,57048,57079,'OP_ZoneInstanceCreateReplyMsg',30),(8293,57048,57079,'OP_ZoneInstanceDestroyedMsg',31),(8294,57048,57079,'OP_ExpectClientAsCharacterRequest',32),(8295,57048,57079,'OP_ZoneInfoMsg',33),(8296,57048,57079,'OP_DoneLoadingZoneResourcesMsg',34),(8297,57048,57079,'OP_DoneSendingInitialEntitiesMsg',35),(8298,57048,57079,'OP_DoneLoadingEntityResourcesMsg',36),(8299,57048,57079,'OP_PredictionUpdateMsg',37),(8300,57048,57079,'OP_UpdatePositionMsg',39),(8301,57048,57079,'OP_SetRemoteCmdsMsg',41),(8302,57048,57079,'OP_RemoteCmdMsg',42),(8303,57048,57079,'OP_GameWorldTimeMsg',43),(8304,57048,57079,'OP_MOTDMsg',44),(8305,57048,57079,'OP_ZoneMOTDMsg',45),(8306,57048,57079,'OP_AvatarCreatedMsg',46),(8307,57048,57079,'OP_AvatarDestroyedMsg',47),(8308,57048,57079,'OP_RequestCampMsg',50),(8309,57048,57079,'OP_CampStartedMsg',51),(8310,57048,57079,'OP_CampAbortedMsg',52),(8311,57048,57079,'OP_WhoQueryRequestMsg',53),(8312,57048,57079,'OP_WhoQueryReplyMsg',54),(8313,57048,57079,'OP_MonitorReplyMsg',55),(8314,57048,57079,'OP_MonitorCharacterListMsg',56),(8315,57048,57079,'OP_MonitorCharacterListRequestMsg',57),(8316,57048,57079,'OP_ClientCmdMsg',58),(8317,57048,57079,'OP_DispatchESMsg',59),(8318,57048,57079,'OP_DispatchClientCmdMsg',60),(8319,57048,57079,'OP_UpdateTargetMsg',61),(8320,57048,57079,'OP_UpdateTargetLocMsg',62),(8321,57048,57079,'OP_UpdateCharacterSheetMsg',63),(8322,57048,57079,'OP_CharacterPet',64),(8323,57048,57079,'OP_CharacterMerc',65),(8324,57048,57079,'OP_UpdateSpellBookMsg',66),(8325,57048,57079,'OP_UpdateInventoryMsg',68),(8326,57048,57079,'OP_AfterInvSpellUpdate',69),(8327,57048,57079,'OP_UpdateRecipeBookMsg',70),(8328,57048,57079,'OP_RequestRecipeDetailsMsg',71),(8329,57048,57079,'OP_RecipeDetailsMsg',72),(8330,57048,57079,'OP_UpdateSkillBookMsg',73),(8331,57048,57079,'OP_UpdateSkillsMsg',74),(8332,57048,57079,'OP_UpdateOpportunityMsg',75),(8333,57048,57079,'OP_ChangeZoneMsg',77),(8334,57048,57079,'OP_ClientTeleportRequestMsg',78),(8335,57048,57079,'OP_TeleportWithinZoneMsg',79),(8336,57048,57079,'OP_TeleportWithinZoneNoReloadMsg',80),(8337,57048,57079,'OP_MigrateClientToZoneRequestMsg',81),(8338,57048,57079,'OP_MigrateClientToZoneReplyMsg',82),(8339,57048,57079,'OP_ReadyToZoneMsg',84),(8340,57048,57079,'OP_RemoveClientFromGroupMsg',85),(8341,57048,57079,'OP_RemoveGroupFromGroupMsg',86),(8342,57048,57079,'OP_MakeGroupLeaderMsg',87),(8343,57048,57079,'OP_GroupCreatedMsg',88),(8344,57048,57079,'OP_GroupDestroyedMsg',89),(8345,57048,57079,'OP_GroupMemberAddedMsg',90),(8346,57048,57079,'OP_GroupMemberRemovedMsg',91),(8347,57048,57079,'OP_GroupRemovedFromGroupMsg',92),(8348,57048,57079,'OP_GroupLeaderChangedMsg',93),(8349,57048,57079,'OP_GroupResendOOZDataMsg',94),(8350,57048,57079,'OP_GroupSettingsChangedMsg',95),(8351,57048,57079,'OP_OutOfZoneMemberDataMsg',96),(8352,57048,57079,'OP_SendLatestRequestMsg',97),(8353,57048,57079,'OP_ClearDataMsg',98),(8354,57048,57079,'OP_SetSocialMsg',99),(8355,57048,57079,'OP_ESStatusMsg',100),(8356,57048,57079,'OP_ESZoneInstanceStatusMsg',101),(8357,57048,57079,'OP_ZonesStatusRequestMsg',102),(8358,57048,57079,'OP_ZonesStatusMsg',103),(8359,57048,57079,'OP_ESWeatherRequestMsg',104),(8360,57048,57079,'OP_ESWeatherRequestEndMsg',105),(8361,57048,57079,'OP_DialogSelectMsg',109),(8362,57048,57079,'OP_DialogCloseMsg',110),(8363,57048,57079,'OP_RemoveSpellEffectMsg',111),(8364,57048,57079,'OP_RemoveConcentrationMsg',112),(8365,57048,57079,'OP_QuestJournalOpenMsg',113),(8366,57048,57079,'OP_QuestJournalInspectMsg',114),(8367,57048,57079,'OP_QuestJournalSetVisibleMsg',115),(8368,57048,57079,'OP_QuestJournalWaypointMsg',116),(8369,57048,57079,'OP_CreateGuildRequestMsg',119),(8370,57048,57079,'OP_CreateGuildReplyMsg',120),(8371,57048,57079,'OP_GuildsayMsg',121),(8372,57048,57079,'OP_FellowshipExpMsg',122),(8373,57048,57079,'OP_DeleteGuildMsg',123),(8374,57048,57079,'OP_GuildUpdateMsg',124),(8375,57048,57079,'OP_ConsignmentCloseStoreMsg',125),(8376,57048,57079,'OP_ConsignItemRequestMsg',126),(8377,57048,57079,'OP_ConsignItemResponseMsg',127),(8378,57048,57079,'OP_PurchaseConsignmentRequestMsg',128),(8379,57048,57079,'OP_LikeOption',136),(8380,57048,57079,'OP_PublishHouse',138),(8381,57048,57079,'OP_PlayerMadeInstancesScreen',139),(8382,57048,57079,'OP_PlayerMadeInstances',140),(8383,57048,57079,'OP_HouseDeletedRemotelyMsg',142),(8384,57048,57079,'OP_UpdateHouseDataMsg',143),(8385,57048,57079,'OP_UpdateHouseAccessDataMsg',144),(8386,57048,57079,'OP_PlayerHouseBaseScreenMsg',145),(8387,57048,57079,'OP_PlayerHousePurchaseScreenMsg',146),(8388,57048,57079,'OP_PlayerHouseAccessUpdateMsg',147),(8389,57048,57079,'OP_PlayerHouseDisplayStatusMsg',148),(8390,57048,57079,'OP_PlayerHouseCloseUIMsg',149),(8391,57048,57079,'OP_BuyPlayerHouseMsg',150),(8392,57048,57079,'OP_BuyPlayerHouseTintMsg',151),(8393,57048,57079,'OP_CollectAllHouseItemsMsg',152),(8394,57048,57079,'OP_RelinquishHouseMsg',153),(8395,57048,57079,'OP_EnterHouseMsg',154),(8396,57048,57079,'OP_ExitHouseMsg',155),(8397,57048,57079,'OP_HouseDefaultAccessSetMsg',156),(8398,57048,57079,'OP_HouseAccessSetMsg',157),(8399,57048,57079,'OP_HouseAccessRemoveMsg',158),(8400,57048,57079,'OP_PayHouseUpkeepMsg',159),(8401,57048,57079,'OP_MoveableObjectPlacementCriteri',160),(8402,57048,57079,'OP_EnterMoveObjectModeMsg',161),(8403,57048,57079,'OP_PositionMoveableObject',162),(8404,57048,57079,'OP_CancelMoveObjectModeMsg',163),(8405,57048,57079,'OP_ShaderCustomizationMsg',164),(8406,57048,57079,'OP_ReplaceableSubMeshesMsg',165),(8407,57048,57079,'OP_HouseCustomizationScreenMsg',166),(8408,57048,57079,'OP_CustomizationPurchaseRequestMs',167),(8409,57048,57079,'OP_CustomizationSetRequestMsg',168),(8410,57048,57079,'OP_CustomizationReplyMsg',169),(8411,57048,57079,'OP_TintWidgetsMsg',170),(8412,57048,57079,'OP_ExamineConsignmentRequestMsg',171),(8413,57048,57079,'OP_ExamineConsignmentResponseMsg',172),(8414,57048,57079,'OP_UISettingsResponseMsg',173),(8415,57048,57079,'OP_UIResetMsg',174),(8416,57048,57079,'OP_KeymapLoadMsg',175),(8417,57048,57079,'OP_KeymapNoneMsg',176),(8418,57048,57079,'OP_KeymapDataMsg',177),(8419,57048,57079,'OP_KeymapSaveMsg',178),(8420,57048,57079,'OP_DispatchSpellCmdMsg',179),(8421,57048,57079,'OP_EntityVerbsRequestMsg',180),(8422,57048,57079,'OP_EntityVerbsReplyMsg',181),(8423,57048,57079,'OP_EntityVerbsVerbMsg',182),(8424,57048,57079,'OP_ChatRelationshipUpdateMsg',184),(8425,57048,57079,'OP_LootItemsRequestMsg',185),(8426,57048,57079,'OP_StoppedLootingMsg',186),(8427,57048,57079,'OP_SitMsg',187),(8428,57048,57079,'OP_StandMsg',188),(8429,57048,57079,'OP_SatMsg',189),(8430,57048,57079,'OP_StoodMsg',190),(8431,57048,57079,'OP_ClearForTakeOffMsg',191),(8432,57048,57079,'OP_ReadyForTakeOffMsg',192),(8433,57048,57079,'OP_ShowIllusionsMsg',193),(8434,57048,57079,'OP_HideIllusionsMsg',194),(8435,57048,57079,'OP_ExamineItemRequestMsg',195),(8436,57048,57079,'OP_ReadBookPageMsg',196),(8437,57048,57079,'OP_DefaultGroupOptionsRequestMsg',197),(8438,57048,57079,'OP_DefaultGroupOptionsMsg',198),(8439,57048,57079,'OP_GroupOptionsMsg',199),(8440,57048,57079,'OP_DisplayGroupOptionsScreenMsg',200),(8441,57048,57079,'OP_PetOptions',201),(8442,57048,57079,'OP_DisplayInnVisitScreenMsg',202),(8443,57048,57079,'OP_DumpSchedulerMsg',203),(8444,57048,57079,'OP_LSCheckAcctLockMsg',204),(8445,57048,57079,'OP_WSAcctLockStatusMsg',205),(8446,57048,57079,'OP_RequestHelpRepathMsg',206),(8447,57048,57079,'OP_RequestTargetLocMsg',207),(8448,57048,57079,'OP_UpdateMotdMsg',208),(8449,57048,57079,'OP_DestUpdateReq',210),(8450,57048,57079,'OP_PerformPlayerKnockbackMsg',213),(8451,57048,57079,'OP_PerformCameraShakeMsg',214),(8452,57048,57079,'OP_PopulateSkillMapsMsg',215),(8453,57048,57079,'OP_CancelledFeignMsg',216),(8454,57048,57079,'OP_SysClient',218),(8455,57048,57079,'OP_ShowCreateFromRecipeUIMsg',219),(8456,57048,57079,'OP_CancelCreateFromRecipeMsg',220),(8457,57048,57079,'OP_BeginItemCreationMsg',221),(8458,57048,57079,'OP_StopItemCreationMsg',222),(8459,57048,57079,'OP_ShowItemCreationProcessUIMsg',223),(8460,57048,57079,'OP_UpdateItemCreationProcessUIMsg',224),(8461,57048,57079,'OP_DisplayTSEventReactionMsg',225),(8462,57048,57079,'OP_ShowRecipeBookMsg',226),(8463,57048,57079,'OP_KnowledgebaseRequestMsg',227),(8464,57048,57079,'OP_KnowledgebaseResponseMsg',228),(8465,57048,57079,'OP_CSTicketHeaderRequestMsg',229),(8466,57048,57079,'OP_CSTicketInfoMsg',230),(8467,57048,57079,'OP_CSTicketCommentRequestMsg',231),(8468,57048,57079,'OP_CSTicketCommentResponseMsg',232),(8469,57048,57079,'OP_CSTicketCreateMsg',233),(8470,57048,57079,'OP_CSTicketAddCommentMsg',234),(8471,57048,57079,'OP_CSTicketDeleteMsg',235),(8472,57048,57079,'OP_CSTicketChangeNotificationMsg',236),(8473,57048,57079,'OP_WorldDataUpdateMsg',237),(8474,57048,57079,'OP_KnownLanguagesMsg',238),(8475,57048,57079,'OP_LsRequestClientCrashLogMsg',239),(8476,57048,57079,'OP_LsClientBaselogReplyMsg',240),(8477,57048,57079,'OP_LsClientCrashlogReplyMsg',241),(8478,57048,57079,'OP_LsClientAlertlogReplyMsg',242),(8479,57048,57079,'OP_LsClientVerifylogReplyMsg',243),(8480,57048,57079,'OP_ClientTeleportToLocationMsg',244),(8481,57048,57079,'OP_UpdateClientPredFlagsMsg',245),(8482,57048,57079,'OP_ChangeServerControlFlagMsg',246),(8483,57048,57079,'OP_CSToolsRequestMsg',247),(8484,57048,57079,'OP_CSToolsResponseMsg',248),(8485,57048,57079,'OP_AddSocialStructureStandingMsg',249),(8486,57048,57079,'OP_CreateBoatTransportsMsg',250),(8487,57048,57079,'OP_PositionBoatTransportMsg',251),(8488,57048,57079,'OP_MigrateBoatTransportMsg',252),(8489,57048,57079,'OP_MigrateBoatTransportReplyMsg',253),(8490,57048,57079,'OP_DisplayDebugNLLPointsMsg',254),(8491,57048,57079,'OP_ExamineInfoRequestMsg',255),(8492,57048,57079,'OP_QuickbarInitMsg',256),(8493,57048,57079,'OP_QuickbarUpdateMsg',257),(8494,57048,57079,'OP_MacroInitMsg',258),(8495,57048,57079,'OP_MacroUpdateMsg',259),(8496,57048,57079,'OP_QuestionnaireMsg',260),(8497,57048,57079,'OP_LevelChangedMsg',261),(8498,57048,57079,'OP_SpellGainedMsg',262),(8499,57048,57079,'OP_EncounterBrokenMsg',263),(8500,57048,57079,'OP_OnscreenMsgMsg',264),(8501,57048,57079,'OP_DisplayWarningMsg',265),(8502,57048,57079,'OP_ModifyGuildMsg',266),(8503,57048,57079,'OP_GuildEventMsg',267),(8504,57048,57079,'OP_GuildEventAddMsg',268),(8505,57048,57079,'OP_GuildEventActionMsg',269),(8506,57048,57079,'OP_GuildEventListMsg',270),(8507,57048,57079,'OP_RequestGuildEventDetailsMsg',271),(8508,57048,57079,'OP_GuildEventDetailsMsg',272),(8509,57048,57079,'OP_RequestGuildInfoMsg',273),(8510,57048,57079,'OP_GuildBankActionMsg',274),(8511,57048,57079,'OP_GuildBankActionResponseMsg',275),(8512,57048,57079,'OP_GuildBankItemDetailsRequestMsg',276),(8513,57048,57079,'OP_GuildBankItemDetailsResponseMs',277),(8514,57048,57079,'OP_GuildBankUpdateMsg',278),(8515,57048,57079,'OP_GuildBankEventListMsg',279),(8516,57048,57079,'OP_RequestGuildBankEventDetailsMs',280),(8517,57048,57079,'OP_RewardPackMsg',281),(8518,57048,57079,'OP_RenameGuildMsg',282),(8519,57048,57079,'OP_ZoneToFriendRequestMsg',283),(8520,57048,57079,'OP_ZoneToFriendReplyMsg',284),(8521,57048,57079,'OP_ChatCreateChannelMsg',285),(8522,57048,57079,'OP_ChatJoinChannelMsg',286),(8523,57048,57079,'OP_ChatWhoChannelMsg',287),(8524,57048,57079,'OP_ChatLeaveChannelMsg',288),(8525,57048,57079,'OP_ChatTellChannelMsg',289),(8526,57048,57079,'OP_ChatTellUserMsg',290),(8527,57048,57079,'OP_ChatToggleFriendMsg',291),(8528,57048,57079,'OP_BrokerAddBag',292),(8529,57048,57079,'OP_BrokerRemoveBag',293),(8530,57048,57079,'OP_ChatToggleIgnoreMsg',294),(8531,57048,57079,'OP_ChatSendFriendsMsg',295),(8532,57048,57079,'OP_ChatSendIgnoresMsg',296),(8533,57048,57079,'OP_QuestReward',320),(8534,57048,57079,'OP_ChatFiltersMsg',335),(8535,57048,57079,'OP_MailGetMessageMsg',338),(8536,57048,57079,'OP_MailSendMessageMsg',339),(8537,57048,57079,'OP_MailDeleteMessageMsg',340),(8538,57048,57079,'OP_MailGetHeadersReplyMsg',341),(8539,57048,57079,'OP_MailGetMessageReplyMsg',342),(8540,57048,57079,'OP_MailSendMessageReplyMsg',343),(8541,57048,57079,'OP_MailCommitSendMessageMsg',344),(8542,57048,57079,'OP_MailSendSystemMessageMsg',345),(8543,57048,57079,'OP_MailRemoveAttachFromMailMsg',346),(8544,57048,57079,'OP_WaypointRequestMsg',348),(8545,57048,57079,'OP_WaypointReplyMsg',349),(8546,57048,57079,'OP_WaypointSelectMsg',350),(8547,57048,57079,'OP_WaypointUpdateMsg',351),(8548,57048,57079,'OP_CharNameChangedMsg',352),(8549,57048,57079,'OP_ShowZoneTeleporterDestinations',353),(8550,57048,57079,'OP_SelectZoneTeleporterDestinatio',354),(8551,57048,57079,'OP_ReloadLocalizedTxtMsg',355),(8552,57048,57079,'OP_RequestGuildMembershipMsg',356),(8553,57048,57079,'OP_GuildMembershipResponseMsg',357),(8554,57048,57079,'OP_LeaveGuildNotifyMsg',358),(8555,57048,57079,'OP_JoinGuildNotifyMsg',359),(8556,57048,57079,'OP_AvatarUpdateMsg',360),(8557,57048,57079,'OP_BioUpdateMsg',362),(8558,57048,57079,'OP_InspectPlayerMsg',363),(8559,57048,57079,'OP_WSServerLockMsg',364),(8560,57048,57079,'OP_LSServerLockMsg',365),(8561,57048,57079,'OP_WSServerHideMsg',366),(8562,57048,57079,'OP_CsCategoryRequestMsg',367),(8563,57048,57079,'OP_CsCategoryResponseMsg',368),(8564,57048,57079,'OP_KnowledgeWindowSlotMappingMsg',369),(8565,57048,57079,'OP_AFKUpdateMsg',370),(8566,57048,57079,'OP_AnonUpdateMsg',371),(8567,57048,57079,'OP_UpdateActivePublicZonesMsg',372),(8568,57048,57079,'OP_UnknownNpcMsg',373),(8569,57048,57079,'OP_PromoFlagsDetailsMsg',374),(8570,57048,57079,'OP_ConsignViewCreateMsg',375),(8571,57048,57079,'OP_ConsignViewGetPageMsg',376),(8572,57048,57079,'OP_ConsignViewReleaseMsg',377),(8573,57048,57079,'OP_ConsignRemoveItemsMsg',378),(8574,57048,57079,'OP_UpdateDebugRadiiMsg',379),(8575,57048,57079,'OP_ReportMsg',380),(8576,57048,57079,'OP_UpdateRaidMsg',381),(8577,57048,57079,'OP_ConsignViewSortMsg',383),(8578,57048,57079,'OP_TitleUpdateMsg',384),(8579,57048,57079,'OP_ClientFellMsg',385),(8580,57048,57079,'OP_ClientInDeathRegionMsg',386),(8581,57048,57079,'OP_CampClientMsg',387),(8582,57048,57079,'OP_CSToolAccessResponseMsg',388),(8583,57048,57079,'OP_UpdateGroupMemberDataMsg',388),(8584,57048,57079,'OP_TrackingUpdateMsg',389),(8585,57048,57079,'OP_BeginTrackingMsg',390),(8586,57048,57079,'OP_StopTrackingMsg',391),(8587,57048,57079,'OP_GetAvatarAccessRequestForCSToo',393),(8588,57048,57079,'OP_AdvancementRequestMsg',394),(8589,57048,57079,'OP_MapFogDataInitMsg',395),(8590,57048,57079,'OP_MapFogDataUpdateMsg',396),(8591,57048,57079,'OP_CloseGroupInviteWindowMsg',397),(8592,57048,57079,'OP_WorldPingMsg',399),(8593,57048,57079,'OP_MoveLogUpdateMsg',400),(8594,57048,57079,'OP_OfferQuestMsg',401),(8595,57048,57079,'OP_WorldShutdownUpdateMsg',403),(8596,57048,57079,'OP_DisplayMailScreenMsg',404),(8597,57048,57079,'OP_ClientIdleBeginMsg',405),(8598,57048,57079,'OP_ClientIdleEndMsg',406),(8599,57048,57079,'OP_PurchaseConsignmentLoreCheckRe',407),(8600,57048,57079,'OP_NotifyApprenticeStoppedMentori',408),(8601,57048,57079,'OP_CorruptedClientMsg',409),(8602,57048,57079,'OP_WorldDataChangeMsg',410),(8603,57048,57079,'OP_MailEventNotificationMsg',411),(8604,57048,57079,'OP_RestartZoneMsg',412),(8605,57048,57079,'OP_FlightPathsMsg',413),(8606,57048,57079,'OP_CharacterLinkdeadMsg',414),(8607,57048,57079,'OP_CharTransferStartRequestMsg',415),(8608,57048,57079,'OP_CharTransferStartReplyMsg',416),(8609,57048,57079,'OP_CharTransferRequestMsg',417),(8610,57048,57079,'OP_CharTransferReplyMsg',418),(8611,57048,57079,'OP_CharTransferRollbackRequestMsg',419),(8612,57048,57079,'OP_CharTransferCommitRequestMsg',420),(8613,57048,57079,'OP_CharTransferRollbackReplyMsg',421),(8614,57048,57079,'OP_CharTransferCommitReplyMsg',422),(8615,57048,57079,'OP_GetCharacterSerializedRequestM',423),(8616,57048,57079,'OP_GetCharacterSerializedReplyMsg',424),(8617,57048,57079,'OP_CreateCharFromCBBRequestMsg',425),(8618,57048,57079,'OP_CreateCharFromCBBReplyMsg',426),(8619,57048,57079,'OP_HousingDataChangedMsg',427),(8620,57048,57079,'OP_HousingRestoreMsg',428),(8621,57048,57079,'OP_AuctionItem',429),(8622,57048,57079,'OP_AuctionItemReply',430),(8623,57048,57079,'OP_AuctionCoin',431),(8624,57048,57079,'OP_AuctionCoinReply',432),(8625,57048,57079,'OP_AuctionCharacter',433),(8626,57048,57079,'OP_AuctionCharacterReply',434),(8627,57048,57079,'OP_AuctionCommitMsg',435),(8628,57048,57079,'OP_AuctionAbortMsg',436),(8629,57048,57079,'OP_CharTransferValidateRequestMsg',437),(8630,57048,57079,'OP_CharTransferValidateReplyMsg',438),(8631,57048,57079,'OP_RaceRestrictionMsg',439),(8632,57048,57079,'OP_SetInstanceDisplayNameMsg',440),(8633,57048,57079,'OP_GetAuctionAssetIDMsg',441),(8634,57048,57079,'OP_GetAuctionAssetIDReplyMsg',442),(8635,57048,57079,'OP_ResendWorldChannelsMsg',443),(8636,57048,57079,'OP_DisplayExchangeScreenMsg',444),(8637,57048,57079,'OP_ArenaGameTypesMsg',445),(8638,57048,57079,'OP_AuditAuctionEventMsg',446),(8639,57048,57079,'OP_InviteRequestMsg',447),(8640,57048,57079,'OP_InviteResponseMsg',448),(8641,57048,57079,'OP_InviteTargetResponseMsg',449),(8642,57048,57079,'OP_InspectPlayerRequestMsg',450),(8643,57048,57079,'OP_DispatchMsg',451),(8644,57048,57079,'OP_DisplayEventMsg',452),(8645,57048,57079,'OP_PrePossessionMsg',453),(8646,57048,57079,'OP_PostPossessionMsg',454),(8647,57048,57079,'OP_ArenaCreate',456),(8648,57048,57079,'OP_ArenaList',457),(8649,57048,57079,'OP_ArenaWindow',465),(8650,57048,57079,'OP_HouseItemsList',484),(8651,57048,57079,'OP_CurrentPet',485),(8652,57048,57079,'OP_AdventureList',488),(8653,57048,57079,'OP_CancelSpellCast',489),(8654,57048,57079,'OP_ClearForLandingMsg',491),(8655,57048,57079,'OP_UpdateTitleCmd',494),(8656,57048,57079,'OP_AttackAllowed',500),(8657,57048,57079,'OP_AttackNotAllowed',501),(8658,57048,57079,'OP_BagOptions',502),(8659,57048,57079,'OP_LFGGroupSearch',504),(8660,57048,57079,'OP_CharacterHousingList',507),(8661,57048,57079,'OP_DressingRoom',510),(8662,57048,57079,'OP_PlayLon',511),(8663,57048,57079,'OP_SkillInfoRequest',514),(8664,57048,57079,'OP_SkillInfoResponse',515),(8665,57048,57079,'OP_LFGUpdateMsg',518),(8666,57048,57079,'OP_BadLanguageFilter',519),(8667,57048,57079,'OP_VoiceChatChannel',520),(8668,57048,57079,'OP_MapRequest',521),(8669,57048,57079,'OP_MarketFundsUpdate',526),(8670,57048,57079,'OP_UIEvent',527),(8671,57048,57079,'OP_MarketAddFundsRequest',528),(8672,57048,57079,'OP_MarketAddFundsReply',529),(8673,57048,57079,'OP_MarketPurchase',531),(8674,57048,57079,'OP_MarketPlacePrices',532),(8675,57048,57079,'OP_MarketPlaceItems',537),(8676,57048,57079,'OP_RecipeBook',538),(8677,57048,57079,'OP_CreateCharacterDungeon',547),(8678,57048,57079,'OP_DungeonMakerEnter',548),(8679,57048,57079,'OP_DungeonMakerItemRequest',550),(8680,57048,57079,'OP_CharacterCreatedDungeons',551),(8681,57048,57079,'OP_DungeonMakerToolboxList',552),(8682,57048,57079,'OP_DungeonMakerUnknown',553),(8683,57048,57079,'OP_DungeonMakerUnknown1',554),(8684,57048,57079,'OP_PlayerPollPopup',556),(8685,57048,57079,'OP_PlayerPollAnswer',557),(8686,57048,57079,'OP_MentorPopup',558),(8687,57048,57079,'OP_LoadWelcomeWindow',560),(8688,57048,57079,'OP_OpenCharCust',561),(8689,57048,57079,'OP_SubmitCharCust',562),(8690,57048,57079,'OP_QueAllBgSolo',564),(8691,57048,57079,'OP_ZoneBgInstanceList',566),(8692,57048,57079,'OP_WorldTravelAvail',570),(8693,57048,57079,'OP_Launchpad',572),(8694,57048,57079,'OP_GarbagePacket',574),(8695,57048,57079,'OP_LoadCalendarEvents',575),(8696,57048,57079,'OP_VideoUploaded',576),(8697,57048,57079,'OP_SavageBarInitMsg',577),(8698,57048,57079,'OP_PetOptionsResponse',578),(8699,57048,57079,'OP_DungeonMakerItemResponse',579),(8700,57048,57079,'OP_CharacterMounts',581),(8701,57048,57079,'OP_RecipeListUnknown',590),(8702,57048,57079,'OP_EqBetaCopyRequest',596),(8703,57048,57079,'OP_EqHearChatCmd',597),(8704,57048,57079,'OP_EqDisplayTextCmd',598),(8705,57048,57079,'OP_EqCreateGhostCmd',599),(8706,57048,57079,'OP_EqCreateWidgetCmd',600),(8707,57048,57079,'OP_EqCreateSignWidgetCmd',601),(8708,57048,57079,'OP_EqDestroyGhostCmd',602),(8709,57048,57079,'OP_EqUpdateGhostCmd',603),(8710,57048,57079,'OP_EqSetControlGhostCmd',604),(8711,57048,57079,'OP_EqSetPOVGhostCmd',605),(8712,57048,57079,'OP_EqHearCombatCmd',606),(8713,57048,57079,'OP_EqHearSpellCastCmd',607),(8714,57048,57079,'OP_EQHearProcCmd',608),(8715,57048,57079,'OP_EQHearResEffectCmd',609),(8716,57048,57079,'OP_EqHearSpellInterruptCmd',610),(8717,57048,57079,'OP_EqHearSpellFizzleCmd',611),(8718,57048,57079,'OP_EqHearConsiderCmd',612),(8719,57048,57079,'OP_EqUpdateSubClassesCmd',613),(8720,57048,57079,'OP_EqCreateListBoxCmd',614),(8721,57048,57079,'OP_EqSetDebugPathPointsCmd',615),(8722,57048,57079,'OP_EqCannedEmoteCmd',617),(8723,57048,57079,'OP_EqStateCmd',618),(8724,57048,57079,'OP_EqPlaySoundCmd',619),(8725,57048,57079,'OP_EqPlaySound3DCmd',620),(8726,57048,57079,'OP_EqPlayVoiceCmd',621),(8727,57048,57079,'OP_EqHearDrowningCmd',622),(8728,57048,57079,'OP_EqHearDeathCmd',623),(8729,57048,57079,'OP_EqGroupMemberRemovedCmd',624),(8730,57048,57079,'OP_EqHearChainEffectCmd',625),(8731,57048,57079,'OP_EqReceiveOfferCmd',626),(8732,57048,57079,'OP_EqInspectPCResultsCmd',627),(8733,57048,57079,'OP_EqDrawablePathGraphCmd',628),(8734,57048,57079,'OP_EqDialogOpenCmd',629),(8735,57048,57079,'OP_EqDialogCloseCmd',630),(8736,57048,57079,'OP_EqFactionUpdateCmd',631),(8737,57048,57079,'OP_EqCollectionUpdateCmd',632),(8738,57048,57079,'OP_EqCollectionFilterCmd',633),(8739,57048,57079,'OP_EqCollectionItemCmd',634),(8740,57048,57079,'OP_EqQuestJournalUpdateCmd',635),(8741,57048,57079,'OP_EqMentoring',636),(8742,57048,57079,'OP_EqQuestJournalReplyCmd',637),(8743,57048,57079,'OP_EqQuestGroupCmd',638),(8744,57048,57079,'OP_EqUpdateMerchantCmd',639),(8745,57048,57079,'OP_EqUpdateStoreCmd',640),(8746,57048,57079,'OP_EqUpdatePlayerTradeCmd',641),(8747,57048,57079,'OP_EqHelpPathCmd',642),(8748,57048,57079,'OP_EqHelpPathClearCmd',643),(8749,57048,57079,'OP_EqUpdateBankCmd',644),(8750,57048,57079,'OP_EqExamineInfoCmd',645),(8751,57048,57079,'OP_EqCloseWindowCmd',646),(8752,57048,57079,'OP_EqUpdateLootCmd',647),(8753,57048,57079,'OP_EqJunctionListCmd',648),(8754,57048,57079,'OP_EqShowDeathWindowCmd',649),(8755,57048,57079,'OP_EqDisplaySpellFailCmd',650),(8756,57048,57079,'OP_EqSpellCastStartCmd',651),(8757,57048,57079,'OP_EqSpellCastEndCmd',652),(8758,57048,57079,'OP_EqResurrectedCmd',653),(8759,57048,57079,'OP_EqChoiceWinCmd',654),(8760,57048,57079,'OP_EqSetDefaultVerbCmd',655),(8761,57048,57079,'OP_EqInstructionWindowCmd',656),(8762,57048,57079,'OP_EqInstructionWindowCloseCmd',657),(8763,57048,57079,'OP_EqInstructionWindowGoalCmd',658),(8764,57048,57079,'OP_EqInstructionWindowTaskCmd',659),(8765,57048,57079,'OP_EqEnableGameEventCmd',660),(8766,57048,57079,'OP_EqShowWindowCmd',661),(8767,57048,57079,'OP_EqEnableWindowCmd',662),(8768,57048,57079,'OP_EqFlashWindowCmd',663),(8769,57048,57079,'OP_EqHearPlayFlavorCmd',665),(8770,57048,57079,'OP_EqUpdateSignWidgetCmd',666),(8771,57048,57079,'OP_EqDebugPVDCmd',667),(8772,57048,57079,'OP_EqShowBookCmd',668),(8773,57048,57079,'OP_EqQuestionnaireCmd',669),(8774,57048,57079,'OP_EqGetProbsCmd',671),(8775,57048,57079,'OP_EqHearHealCmd',672),(8776,57048,57079,'OP_EqChatChannelUpdateCmd',673),(8777,57048,57079,'OP_EqWhoChannelQueryReplyCmd',674),(8778,57048,57079,'OP_EqAvailWorldChannelsCmd',675),(8779,57048,57079,'OP_EqUpdateTargetCmd',676),(8780,57048,57079,'OP_BrokerSellList',677),(8781,57048,57079,'OP_EqConsignmentItemsCmd',678),(8782,57048,57079,'OP_EqStartBrokerCmd',680),(8783,57048,57079,'OP_EqMapExplorationCmd',681),(8784,57048,57079,'OP_EqStoreLogCmd',682),(8785,57048,57079,'OP_EqSpellMoveToRangeAndRetryCmd',683),(8786,57048,57079,'OP_EqUpdatePlayerMailCmd',684),(8787,57048,57079,'OP_GuildStatusUpdate',687),(8788,57048,57079,'OP_EqArenaResultsCmd',688),(8789,57048,57079,'OP_EqGuildBankEventActionCmd',689),(8790,57048,57079,'OP_EqGuildBankExamineInfoCmd',690),(8791,57048,57079,'OP_EqHearSpellNoLandCmd',691),(8792,57048,57079,'OP_Lottery',692),(8793,57048,57079,'OP_GuildRecruitingMemberInfo',693),(8794,57048,57079,'OP_GuildRecruiting',694),(8795,57048,57079,'OP_GuildRecruitingDetails',695),(8796,57048,57079,'OP_GuildRecruitingImage',696),(8797,57048,57079,'OP_TradeskillList',697),(8798,57048,57079,'OP_CharRenamed',698),(8799,57048,57079,'OP_UseAdornment',708),(8800,57048,57079,'OP_ExpPurchWindow',714),(8801,57048,57079,'OP_PointOfInterest',718),(8802,57048,57079,'OP_PointOfInterest2',719),(8803,57048,57079,'OP_TraitsList',720),(8804,57048,57079,'OP_CustomizeHouseDisplay',723),(8805,57048,57079,'OP_VoiceChatServer',724),(8806,57048,57079,'OP_SupplyDepot',728),(8807,57048,57079,'OP_EQHearThreatCmd',729),(8808,57048,57079,'OP_RecipeList',730),(8809,57048,57079,'OP_Research',731),(8810,57048,57079,'OP_CharacterCurrency',732),(8811,57048,57079,'OP_CharacterAchievements',733),(8812,57048,57079,'OP_AchievementUpdateMsg',734),(8813,57048,57079,'OP_EQHearDispellCmd',735),(8814,57048,57079,'OP_JournalQuestStoryline',736),(8815,57048,57079,'OP_DungeonPlayAsAvatarList',737),(8816,57048,57079,'OP_DungeonPlayAsAvatarSelected',738),(8817,57048,57079,'OP_MercHireWindow',739),(8818,57048,57079,'OP_MercUnknown',740),(8819,57048,57079,'OP_Unknown',753),(9289,57048,57079,'OP_DailyObjectives',594),(9290,1193,1195,'OP_Weakness',575),(9291,1198,1199,'OP_Weakness',575),(9292,1204,1205,'OP_Weakness',576),(9293,1208,1208,'OP_Weakness',577),(9294,57000,57002,'OP_Weakness',577),(9295,57003,57016,'OP_Weakness',578),(9296,57032,57047,'OP_Weakness',578),(9297,57048,57079,'OP_Weakness',580);
/*!40000 ALTER TABLE `opcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parser_stats`
--

DROP TABLE IF EXISTS `parser_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parser_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `total_items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_spawns` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_spawns` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_spawns` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_spells` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_spells` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_spells` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_specials` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_specials` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_specials` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_achievements` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_achievements` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_achievements` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_advancements` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_advancements` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_advancements` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_abilities` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_abilities` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_abilities` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_traditions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_traditions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_traditions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_trainings` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_trainings` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_trainings` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_poi` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_poi` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_poi` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_locations` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_locations` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_locations` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_quests` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_quests` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_quests` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_factions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_factions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_factions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_collections` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_collections` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_collections` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_aa` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_aa` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_aa` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_titles` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_titles` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_titles` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_books` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_books` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_books` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_skills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_skills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_skills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_recipe_det` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_recipe_det` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_recipe_det` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_recipes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_recipes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_recipes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_recipes_list` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_recipes_list` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_recipes_list` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_commands` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unique_commands` smallint(5) unsigned NOT NULL DEFAULT '0',
  `new_commands` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parser_stats`
--

LOCK TABLES `parser_stats` WRITE;
/*!40000 ALTER TABLE `parser_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `parser_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_abilities`
--

DROP TABLE IF EXISTS `raw_abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_abilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ability_id` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ability_id` (`ability_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_abilities`
--

LOCK TABLES `raw_abilities` WRITE;
/*!40000 ALTER TABLE `raw_abilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_achievements`
--

DROP TABLE IF EXISTS `raw_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_achievements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `achievement_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `uncompleted_text` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `completed_text` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `category` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `expansion` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `point_value` int(10) unsigned NOT NULL DEFAULT '0',
  `qty_req` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_achievement` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unknown3a` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown3b` int(10) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`achievement_id`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_achievements`
--

LOCK TABLES `raw_achievements` WRITE;
/*!40000 ALTER TABLE `raw_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_achievements_requirements`
--

DROP TABLE IF EXISTS `raw_achievements_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_achievements_requirements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `achievement_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `qty_req` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_achievements_requirements`
--

LOCK TABLES `raw_achievements_requirements` WRITE;
/*!40000 ALTER TABLE `raw_achievements_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_achievements_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_achievements_rewards`
--

DROP TABLE IF EXISTS `raw_achievements_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_achievements_rewards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `achievement_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reward` varchar(250) COLLATE latin1_general_ci DEFAULT '"',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`achievement_id`,`reward`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_achievements_rewards`
--

LOCK TABLES `raw_achievements_rewards` WRITE;
/*!40000 ALTER TABLE `raw_achievements_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_achievements_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_adventure_list`
--

DROP TABLE IF EXISTS `raw_adventure_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_adventure_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unknown6` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown10` smallint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `description` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `icon` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `icon2` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `current_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown11` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class_name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `points_req` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subclass_name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `icon_col` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon_row` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `line_title` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `unknown20` int(10) unsigned NOT NULL DEFAULT '0',
  `global_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `aa_type` varchar(32) COLLATE latin1_general_ci DEFAULT NULL,
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AdventureListIDX` (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_adventure_list`
--

LOCK TABLES `raw_adventure_list` WRITE;
/*!40000 ALTER TABLE `raw_adventure_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_adventure_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_arena_challenges`
--

DROP TABLE IF EXISTS `raw_arena_challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_arena_challenges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `challenge_name` varchar(32) NOT NULL DEFAULT '',
  `challenge_value` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ArenaChallengeIDX` (`challenge_name`,`challenge_value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_arena_challenges`
--

LOCK TABLES `raw_arena_challenges` WRITE;
/*!40000 ALTER TABLE `raw_arena_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_arena_challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_arena_images`
--

DROP TABLE IF EXISTS `raw_arena_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_arena_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arena_zone_id` tinyint(3) NOT NULL DEFAULT '0',
  `image_path` varchar(250) NOT NULL DEFAULT '',
  `x` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `y` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `x2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `y2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ArenaImagesIDX` (`arena_zone_id`,`image_path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_arena_images`
--

LOCK TABLES `raw_arena_images` WRITE;
/*!40000 ALTER TABLE `raw_arena_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_arena_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_arena_levels`
--

DROP TABLE IF EXISTS `raw_arena_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_arena_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_name` varchar(32) NOT NULL DEFAULT '',
  `level_value` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ArenaLevelIDX` (`level_name`,`level_value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_arena_levels`
--

LOCK TABLES `raw_arena_levels` WRITE;
/*!40000 ALTER TABLE `raw_arena_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_arena_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_arena_timers`
--

DROP TABLE IF EXISTS `raw_arena_timers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_arena_timers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time_name` varchar(32) NOT NULL DEFAULT '',
  `time_value` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ArenaTimerIDX` (`time_type`,`time_name`,`time_value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_arena_timers`
--

LOCK TABLES `raw_arena_timers` WRITE;
/*!40000 ALTER TABLE `raw_arena_timers` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_arena_timers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_arena_types`
--

DROP TABLE IF EXISTS `raw_arena_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_arena_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unknown2a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown2b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown2c` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `unknown3a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown3b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ArenaTypesIDX` (`type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_arena_types`
--

LOCK TABLES `raw_arena_types` WRITE;
/*!40000 ALTER TABLE `raw_arena_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_arena_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_arena_zones`
--

DROP TABLE IF EXISTS `raw_arena_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_arena_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type1` varchar(32) NOT NULL DEFAULT '',
  `unknown4a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown4b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` varchar(64) NOT NULL DEFAULT '',
  `type2` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ArenaZonesIDX` (`type1`,`file`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_arena_zones`
--

LOCK TABLES `raw_arena_zones` WRITE;
/*!40000 ALTER TABLE `raw_arena_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_arena_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_book_images`
--

DROP TABLE IF EXISTS `raw_book_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_book_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL,
  `image_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `image_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_book_images`
--

LOCK TABLES `raw_book_images` WRITE;
/*!40000 ALTER TABLE `raw_book_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_book_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_book_pages`
--

DROP TABLE IF EXISTS `raw_book_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_book_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `page_text` varchar(1024) COLLATE latin1_general_ci DEFAULT NULL,
  `page_text_valign` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_text_halign` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_book_pages`
--

LOCK TABLES `raw_book_pages` WRITE;
/*!40000 ALTER TABLE `raw_book_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_book_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_books`
--

DROP TABLE IF EXISTS `raw_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_books` (
  `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `book_title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `unknown` smallint(5) unsigned NOT NULL DEFAULT '0',
  `book_type` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown4` int(10) NOT NULL DEFAULT '0',
  `unknown5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_books`
--

LOCK TABLES `raw_books` WRITE;
/*!40000 ALTER TABLE `raw_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_collection_items`
--

DROP TABLE IF EXISTS `raw_collection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_collection_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `collection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `item_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_crc` int(11) NOT NULL DEFAULT '0',
  `item_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `CollectionItemIDX` (`collection_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_collection_items`
--

LOCK TABLES `raw_collection_items` WRITE;
/*!40000 ALTER TABLE `raw_collection_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_collection_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_collections`
--

DROP TABLE IF EXISTS `raw_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_collections` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `collection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `collection_name` varchar(512) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `collection_category` varchar(512) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `collection_id` (`collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_collections`
--

LOCK TABLES `raw_collections` WRITE;
/*!40000 ALTER TABLE `raw_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_commands`
--

DROP TABLE IF EXISTS `raw_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_commands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned DEFAULT '1',
  `command` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `subcommand` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `handler` int(10) unsigned NOT NULL DEFAULT '0',
  `required_status` smallint(5) NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `CommandIDX` (`command`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_commands`
--

LOCK TABLES `raw_commands` WRITE;
/*!40000 ALTER TABLE `raw_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_conversations`
--

DROP TABLE IF EXISTS `raw_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_conversations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sound_file` varchar(512) COLLATE latin1_general_ci DEFAULT '',
  `spawn_name` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `chat_text` text COLLATE latin1_general_ci NOT NULL,
  `emote` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `key1` int(10) unsigned NOT NULL DEFAULT '0',
  `key2` int(10) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_name`,`sound_file`,`chat_text`(200))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_conversations`
--

LOCK TABLES `raw_conversations` WRITE;
/*!40000 ALTER TABLE `raw_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_dialog_choices`
--

DROP TABLE IF EXISTS `raw_dialog_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_dialog_choices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dialog_conversation_id` int(10) unsigned NOT NULL DEFAULT '0',
  `index` smallint(3) unsigned NOT NULL DEFAULT '0',
  `choice` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_dialog_choices`
--

LOCK TABLES `raw_dialog_choices` WRITE;
/*!40000 ALTER TABLE `raw_dialog_choices` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_dialog_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_dialogs`
--

DROP TABLE IF EXISTS `raw_dialogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_dialogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `conversation_id` int(10) unsigned NOT NULL DEFAULT '0',
  `npc_text` text COLLATE latin1_general_ci NOT NULL,
  `voice_file` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `key1` int(10) unsigned NOT NULL DEFAULT '0',
  `key2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(5) unsigned NOT NULL DEFAULT '0',
  `index` smallint(5) NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`conversation_id`,`spawn_id`,`sequence`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_dialogs`
--

LOCK TABLES `raw_dialogs` WRITE;
/*!40000 ALTER TABLE `raw_dialogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_dialogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_entity_commands`
--

DROP TABLE IF EXISTS `raw_entity_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_entity_commands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `max_distance` float unsigned NOT NULL DEFAULT '0',
  `error_text` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `command` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`name`,`command`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_entity_commands`
--

LOCK TABLES `raw_entity_commands` WRITE;
/*!40000 ALTER TABLE `raw_entity_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_entity_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_factions`
--

DROP TABLE IF EXISTS `raw_factions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_factions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faction_id` int(11) NOT NULL,
  `name` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `category` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `description` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `unknown` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `con` tinyint(3) NOT NULL DEFAULT '0',
  `percentage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value` mediumint(5) NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FactionIDX` (`faction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_factions`
--

LOCK TABLES `raw_factions` WRITE;
/*!40000 ALTER TABLE `raw_factions` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_factions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_appearances`
--

DROP TABLE IF EXISTS `raw_item_appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_appearances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_crc` int(10) NOT NULL DEFAULT '0',
  `equip_type` int(10) unsigned NOT NULL DEFAULT '0',
  `red` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `green` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `highlight_red` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `highlight_green` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `highlight_blue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_appearances`
--

LOCK TABLES `raw_item_appearances` WRITE;
/*!40000 ALTER TABLE `raw_item_appearances` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_appearances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_descriptions`
--

DROP TABLE IF EXISTS `raw_item_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_descriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_crc` int(10) NOT NULL DEFAULT '0',
  `unique_id` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flags2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_req1` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_req2` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`language_type`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_descriptions`
--

LOCK TABLES `raw_item_descriptions` WRITE;
/*!40000 ALTER TABLE `raw_item_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_armor`
--

DROP TABLE IF EXISTS `raw_item_details_armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_armor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `mitigation_low` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mitigation_high` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_armor`
--

LOCK TABLES `raw_item_details_armor` WRITE;
/*!40000 ALTER TABLE `raw_item_details_armor` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_bag`
--

DROP TABLE IF EXISTS `raw_item_details_bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_bag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `num_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight_reduction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown12` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_bag`
--

LOCK TABLES `raw_item_details_bag` WRITE;
/*!40000 ALTER TABLE `raw_item_details_bag` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_bag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_bauble`
--

DROP TABLE IF EXISTS `raw_item_details_bauble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_bauble` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL DEFAULT '0',
  `cast` smallint(5) unsigned NOT NULL DEFAULT '100',
  `recovery` smallint(5) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `recast` float unsigned NOT NULL DEFAULT '1',
  `display_cast_time` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `display_bauble_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `effect_radius` float NOT NULL DEFAULT '0',
  `max_aoe_targets` int(10) unsigned NOT NULL DEFAULT '0',
  `display_until_cancelled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_bauble`
--

LOCK TABLES `raw_item_details_bauble` WRITE;
/*!40000 ALTER TABLE `raw_item_details_bauble` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_bauble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_book`
--

DROP TABLE IF EXISTS `raw_item_details_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemLanguageIDX` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_book`
--

LOCK TABLES `raw_item_details_book` WRITE;
/*!40000 ALTER TABLE `raw_item_details_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_decorations`
--

DROP TABLE IF EXISTS `raw_item_details_decorations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_decorations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `decoration_name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_decorations`
--

LOCK TABLES `raw_item_details_decorations` WRITE;
/*!40000 ALTER TABLE `raw_item_details_decorations` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_decorations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_food`
--

DROP TABLE IF EXISTS `raw_item_details_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_food` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `duration` float NOT NULL DEFAULT '0',
  `satiation` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_food`
--

LOCK TABLES `raw_item_details_food` WRITE;
/*!40000 ALTER TABLE `raw_item_details_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_house`
--

DROP TABLE IF EXISTS `raw_item_details_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `status_rent_reduction` int(11) NOT NULL DEFAULT '0',
  `coin_rent_reduction` float unsigned NOT NULL DEFAULT '0',
  `house_unknown2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `house_only` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemLanguageIDX` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_house`
--

LOCK TABLES `raw_item_details_house` WRITE;
/*!40000 ALTER TABLE `raw_item_details_house` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_house_container`
--

DROP TABLE IF EXISTS `raw_item_details_house_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_house_container` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `num_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowed_types` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown12` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown13` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `broker_commission` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fence_commission` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_house_container`
--

LOCK TABLES `raw_item_details_house_container` WRITE;
/*!40000 ALTER TABLE `raw_item_details_house_container` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_house_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_itemset`
--

DROP TABLE IF EXISTS `raw_item_details_itemset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_itemset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemset_item_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_crc` int(10) NOT NULL DEFAULT '0',
  `item_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_unknown1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_unknown2` int(10) NOT NULL DEFAULT '0',
  `item_name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `language_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`itemset_item_id`,`item_id`,`language_type`),
  KEY `NewIndex2` (`item_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_itemset`
--

LOCK TABLES `raw_item_details_itemset` WRITE;
/*!40000 ALTER TABLE `raw_item_details_itemset` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_itemset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_marketplace`
--

DROP TABLE IF EXISTS `raw_item_details_marketplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_marketplace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `marketplace_item_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`marketplace_item_id`,`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_marketplace`
--

LOCK TABLES `raw_item_details_marketplace` WRITE;
/*!40000 ALTER TABLE `raw_item_details_marketplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_marketplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_pattern`
--

DROP TABLE IF EXISTS `raw_item_details_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_pattern` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pattern_item_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_crc` int(10) NOT NULL DEFAULT '0',
  `item_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `language_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_pattern`
--

LOCK TABLES `raw_item_details_pattern` WRITE;
/*!40000 ALTER TABLE `raw_item_details_pattern` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_range`
--

DROP TABLE IF EXISTS `raw_item_details_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_range` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `damage_low1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_high1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_low2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_high2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_low3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_high3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `range_low` smallint(5) unsigned NOT NULL DEFAULT '0',
  `range_high` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_rating` float unsigned NOT NULL DEFAULT '0',
  `damage_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_range`
--

LOCK TABLES `raw_item_details_range` WRITE;
/*!40000 ALTER TABLE `raw_item_details_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_recipe`
--

DROP TABLE IF EXISTS `raw_item_details_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_recipe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `uses` smallint(5) unsigned NOT NULL DEFAULT '1',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_recipe`
--

LOCK TABLES `raw_item_details_recipe` WRITE;
/*!40000 ALTER TABLE `raw_item_details_recipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_recipe_items`
--

DROP TABLE IF EXISTS `raw_item_details_recipe_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_recipe_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`name`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_recipe_items`
--

LOCK TABLES `raw_item_details_recipe_items` WRITE;
/*!40000 ALTER TABLE `raw_item_details_recipe_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_recipe_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_shield`
--

DROP TABLE IF EXISTS `raw_item_details_shield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_shield` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `mitigation_low` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mitigation_high` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_shield`
--

LOCK TABLES `raw_item_details_shield` WRITE;
/*!40000 ALTER TABLE `raw_item_details_shield` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_shield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_skill`
--

DROP TABLE IF EXISTS `raw_item_details_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_skill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemSpellTierIdx` (`item_id`,`spell_id`,`tier`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_skill`
--

LOCK TABLES `raw_item_details_skill` WRITE;
/*!40000 ALTER TABLE `raw_item_details_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_thrown`
--

DROP TABLE IF EXISTS `raw_item_details_thrown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_thrown` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `range` int(11) NOT NULL DEFAULT '0',
  `damage_modifier` int(11) NOT NULL DEFAULT '0',
  `hit_bonus` float NOT NULL DEFAULT '0',
  `damage_type` int(10) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_thrown`
--

LOCK TABLES `raw_item_details_thrown` WRITE;
/*!40000 ALTER TABLE `raw_item_details_thrown` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_thrown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_details_weapon`
--

DROP TABLE IF EXISTS `raw_item_details_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_details_weapon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `wield_style` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `damage_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `damage_low1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_high1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_low2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_high2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_low3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_high3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_rating` float NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_details_weapon`
--

LOCK TABLES `raw_item_details_weapon` WRITE;
/*!40000 ALTER TABLE `raw_item_details_weapon` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_details_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_effects`
--

DROP TABLE IF EXISTS `raw_item_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_effects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `effect` varchar(512) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `percentage` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `bullet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`effect`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_effects`
--

LOCK TABLES `raw_item_effects` WRITE;
/*!40000 ALTER TABLE `raw_item_effects` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_effects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_itemset_bonus_effects`
--

DROP TABLE IF EXISTS `raw_item_itemset_bonus_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_itemset_bonus_effects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) unsigned NOT NULL DEFAULT '0',
  `master_item_id` int(10) NOT NULL DEFAULT '0',
  `items_needed` tinyint(3) NOT NULL DEFAULT '0',
  `subbulletflag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` varchar(512) COLLATE latin1_general_ci DEFAULT '',
  `percentage` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `effect_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SetEffectsIDX` (`set_id`,`master_item_id`,`items_needed`,`subbulletflag`,`description`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_itemset_bonus_effects`
--

LOCK TABLES `raw_item_itemset_bonus_effects` WRITE;
/*!40000 ALTER TABLE `raw_item_itemset_bonus_effects` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_itemset_bonus_effects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_itemset_bonus_stats`
--

DROP TABLE IF EXISTS `raw_item_itemset_bonus_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_itemset_bonus_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) NOT NULL DEFAULT '0',
  `master_item_id` int(10) NOT NULL DEFAULT '0',
  `items_needed` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value` float NOT NULL DEFAULT '0',
  `name` varchar(512) COLLATE latin1_general_ci DEFAULT '',
  `unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stats_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SetStatsIDX` (`set_id`,`master_item_id`,`items_needed`,`type`,`subtype`,`value`,`stats_order`,`language_type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_itemset_bonus_stats`
--

LOCK TABLES `raw_item_itemset_bonus_stats` WRITE;
/*!40000 ALTER TABLE `raw_item_itemset_bonus_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_itemset_bonus_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_itemset_items`
--

DROP TABLE IF EXISTS `raw_item_itemset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_itemset_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) NOT NULL DEFAULT '0',
  `unknown1` tinyint(3) NOT NULL DEFAULT '0',
  `unknown2` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `master_item_id` int(10) NOT NULL DEFAULT '0',
  `item_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SetItemIDX` (`set_id`,`master_item_id`,`item_name`,`item_order`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_itemset_items`
--

LOCK TABLES `raw_item_itemset_items` WRITE;
/*!40000 ALTER TABLE `raw_item_itemset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_itemset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_itemsets`
--

DROP TABLE IF EXISTS `raw_item_itemsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_itemsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_name` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemSetIDX` (`set_name`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_itemsets`
--

LOCK TABLES `raw_item_itemsets` WRITE;
/*!40000 ALTER TABLE `raw_item_itemsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_itemsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_item_stats`
--

DROP TABLE IF EXISTS `raw_item_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_item_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value` float NOT NULL DEFAULT '0',
  `text` varchar(512) COLLATE latin1_general_ci DEFAULT '',
  `description` text COLLATE latin1_general_ci NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`subtype`,`type`,`text`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_item_stats`
--

LOCK TABLES `raw_item_stats` WRITE;
/*!40000 ALTER TABLE `raw_item_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_item_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_items`
--

DROP TABLE IF EXISTS `raw_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_crc` int(10) NOT NULL DEFAULT '0',
  `name` varchar(512) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `item_type` enum('Normal','Weapon','Ranged','Armor','Shield','Bag','Scroll','Recipe','Food','Bauble','House','Thrown','House Container','Adornment','Profile','Pattern Set','Item Set','Book','Decoration','Dungeon Maker','Marketplace') COLLATE latin1_general_ci NOT NULL DEFAULT 'Normal',
  `menu_type` smallint(5) unsigned NOT NULL DEFAULT '3',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `skill_id_req` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_id_req2` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_min` smallint(5) unsigned NOT NULL DEFAULT '0',
  `skill_max` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE latin1_general_ci NOT NULL,
  `show_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `attuned` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attuneable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `artifact` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lore` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `temporary` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `novalue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nozone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nodestroy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crafted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `good_only` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `evil_only` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stacklore` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lore_equip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags_16384` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags_32768` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags_65536` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ornate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `heirloom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `appearance_only` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unlocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `norepair` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags2_64` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags2_256` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slots` int(10) unsigned NOT NULL DEFAULT '0',
  `set_name` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `stack_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `collectable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adornment_slot1` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot2` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot3` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot4` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot5` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot6` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_description` text COLLATE latin1_general_ci,
  `offers_quest` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `part_of_quest` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `quest_unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `total_charges` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recommended_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adventure_default_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tradeskill_default_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adventure_classes` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tradeskill_classes` bigint(20) unsigned NOT NULL DEFAULT '0',
  `updated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_file` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  `processed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `populate_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemIDLanguageTypeIDX` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_items`
--

LOCK TABLES `raw_items` WRITE;
/*!40000 ALTER TABLE `raw_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_locations`
--

DROP TABLE IF EXISTS `raw_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poi_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `soe_zone_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `poi_name` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `LocationIDX` (`poi_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_locations`
--

LOCK TABLES `raw_locations` WRITE;
/*!40000 ALTER TABLE `raw_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_map_data`
--

DROP TABLE IF EXISTS `raw_map_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_map_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `map_id` int(10) unsigned NOT NULL DEFAULT '0',
  `zone_name` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `highest` float NOT NULL DEFAULT '0',
  `lowest` float NOT NULL DEFAULT '0',
  `explored_map_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `unexplored_map_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bounds1_x` float NOT NULL DEFAULT '0',
  `bounds1_z` float NOT NULL DEFAULT '0',
  `bounds2_x` float NOT NULL DEFAULT '0',
  `bounds2_z` float NOT NULL DEFAULT '0',
  `bounds3_x` float NOT NULL DEFAULT '0',
  `bounds3_z` float NOT NULL DEFAULT '0',
  `bounds4_x` float NOT NULL DEFAULT '0',
  `bounds4_z` float NOT NULL DEFAULT '0',
  `explored_key` bigint(20) unsigned NOT NULL DEFAULT '0',
  `unexplored_key` bigint(20) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MapIDX` (`map_id`,`zone_name`,`unexplored_map_name`,`explored_map_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_map_data`
--

LOCK TABLES `raw_map_data` WRITE;
/*!40000 ALTER TABLE `raw_map_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_map_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_merchant_inventory`
--

DROP TABLE IF EXISTS `raw_merchant_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_merchant_inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventory_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `unique_item_id` int(10) NOT NULL DEFAULT '0',
  `stack_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown4a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown4b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id2` int(10) NOT NULL DEFAULT '0',
  `stack_size2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status2` int(10) unsigned NOT NULL DEFAULT '0',
  `station_cash` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown7a` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown7b` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_tokens` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE latin1_general_ci,
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `InventoryIDX` (`inventory_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_merchant_inventory`
--

LOCK TABLES `raw_merchant_inventory` WRITE;
/*!40000 ALTER TABLE `raw_merchant_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_merchant_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_merchant_inventory_tokens`
--

DROP TABLE IF EXISTS `raw_merchant_inventory_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_merchant_inventory_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventory_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `token_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `token_quantity` smallint(5) unsigned NOT NULL DEFAULT '0',
  `token_id` int(10) NOT NULL DEFAULT '0',
  `token_id2` int(10) NOT NULL DEFAULT '0',
  `token_name` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `TokenIDX` (`inventory_item_id`,`token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_merchant_inventory_tokens`
--

LOCK TABLES `raw_merchant_inventory_tokens` WRITE;
/*!40000 ALTER TABLE `raw_merchant_inventory_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_merchant_inventory_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_merchants`
--

DROP TABLE IF EXISTS `raw_merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MerchantsIDX` (`spawn_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_merchants`
--

LOCK TABLES `raw_merchants` WRITE;
/*!40000 ALTER TABLE `raw_merchants` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_poi_locations`
--

DROP TABLE IF EXISTS `raw_poi_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_poi_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unknown` smallint(5) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `num_locations` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data_version` int(10) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `LocationIDX` (`x`,`y`,`z`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_poi_locations`
--

LOCK TABLES `raw_poi_locations` WRITE;
/*!40000 ALTER TABLE `raw_poi_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_poi_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_quest_reward_factions`
--

DROP TABLE IF EXISTS `raw_quest_reward_factions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_quest_reward_factions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `faction_name` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FactionQuestIDX` (`quest_id`,`faction_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_quest_reward_factions`
--

LOCK TABLES `raw_quest_reward_factions` WRITE;
/*!40000 ALTER TABLE `raw_quest_reward_factions` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_quest_reward_factions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_quest_reward_items`
--

DROP TABLE IF EXISTS `raw_quest_reward_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_quest_reward_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `selectable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemQuestIDX` (`item_id`,`quest_id`,`selectable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_quest_reward_items`
--

LOCK TABLES `raw_quest_reward_items` WRITE;
/*!40000 ALTER TABLE `raw_quest_reward_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_quest_reward_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_quest_taskgroup_tasks`
--

DROP TABLE IF EXISTS `raw_quest_taskgroup_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_quest_taskgroup_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskgroup_id` int(10) unsigned NOT NULL DEFAULT '0',
  `task` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TaskGroupTaskIDX` (`task`(200),`taskgroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_quest_taskgroup_tasks`
--

LOCK TABLES `raw_quest_taskgroup_tasks` WRITE;
/*!40000 ALTER TABLE `raw_quest_taskgroup_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_quest_taskgroup_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_quest_taskgroup_taskupdates`
--

DROP TABLE IF EXISTS `raw_quest_taskgroup_taskupdates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_quest_taskgroup_taskupdates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskgroup_id` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `update_target_name` varchar(64) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TaskGroupUpdateIDX` (`taskgroup_id`,`update_target_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_quest_taskgroup_taskupdates`
--

LOCK TABLES `raw_quest_taskgroup_taskupdates` WRITE;
/*!40000 ALTER TABLE `raw_quest_taskgroup_taskupdates` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_quest_taskgroup_taskupdates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_quest_taskgroups`
--

DROP TABLE IF EXISTS `raw_quest_taskgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_quest_taskgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `task_group` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `QuestTaskIDX` (`quest_id`,`task_group`(200))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_quest_taskgroups`
--

LOCK TABLES `raw_quest_taskgroups` WRITE;
/*!40000 ALTER TABLE `raw_quest_taskgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_quest_taskgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_quests`
--

DROP TABLE IF EXISTS `raw_quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_quests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quest_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `type` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `zone` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `repeatable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `year` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `encounter_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_coin` int(10) unsigned NOT NULL DEFAULT '0',
  `min_coin` int(10) unsigned NOT NULL DEFAULT '0',
  `status_points` int(10) unsigned NOT NULL DEFAULT '0',
  `text` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `exp_bonus` int(10) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `QuestIDX` (`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_quests`
--

LOCK TABLES `raw_quests` WRITE;
/*!40000 ALTER TABLE `raw_quests` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_recipe_build_comps`
--

DROP TABLE IF EXISTS `raw_recipe_build_comps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_recipe_build_comps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) unsigned NOT NULL DEFAULT '0',
  `comp_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `comp_qty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_recipe_build_comps`
--

LOCK TABLES `raw_recipe_build_comps` WRITE;
/*!40000 ALTER TABLE `raw_recipe_build_comps` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_recipe_build_comps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_recipe_details`
--

DROP TABLE IF EXISTS `raw_recipe_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_recipe_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(200) COLLATE latin1_general_ci NOT NULL,
  `description` char(255) COLLATE latin1_general_ci NOT NULL,
  `technique` int(10) unsigned NOT NULL DEFAULT '0',
  `knowledge` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipe_book` char(200) COLLATE latin1_general_ci NOT NULL,
  `device` char(40) COLLATE latin1_general_ci NOT NULL,
  `unknown1` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown4` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown5` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown6` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_id` (`recipe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_recipe_details`
--

LOCK TABLES `raw_recipe_details` WRITE;
/*!40000 ALTER TABLE `raw_recipe_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_recipe_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_recipe_list`
--

DROP TABLE IF EXISTS `raw_recipe_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_recipe_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `technique` int(10) unsigned NOT NULL DEFAULT '0',
  `knowledge` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `book` varchar(200) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `unknown1` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown4` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_id` (`recipe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_recipe_list`
--

LOCK TABLES `raw_recipe_list` WRITE;
/*!40000 ALTER TABLE `raw_recipe_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_recipe_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_recipes`
--

DROP TABLE IF EXISTS `raw_recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_recipes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skill_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `technique` int(10) unsigned NOT NULL DEFAULT '0',
  `knowledge` int(10) unsigned NOT NULL DEFAULT '0',
  `device` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `tradeskill_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `product_classes` bigint(20) unsigned NOT NULL DEFAULT '0',
  `product_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `product_qty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `product_item_id` int(10) NOT NULL DEFAULT '0',
  `byproduct_icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `byproduct_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `byproduct_qty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `byproduct_id` int(10) NOT NULL DEFAULT '0',
  `primary_comp` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `fuel_comp_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `fuel_comp_qty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipe_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `recipe_description` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT 'Description',
  `unknown5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown log file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_id` (`recipe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_recipes`
--

LOCK TABLES `raw_recipes` WRITE;
/*!40000 ALTER TABLE `raw_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_skills`
--

DROP TABLE IF EXISTS `raw_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `short_name` varchar(32) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `name` varchar(255) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `description` varchar(255) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `data_version` smallint(5) NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `skill_id` (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_skills`
--

LOCK TABLES `raw_skills` WRITE;
/*!40000 ALTER TABLE `raw_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_skills_current`
--

DROP TABLE IF EXISTS `raw_skills_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_skills_current` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `current_val` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `base_val` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `max_val` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `skill_delta` mediumint(7) NOT NULL DEFAULT '0',
  `skill_delta2` mediumint(7) NOT NULL DEFAULT '0',
  `display_min` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `display_max` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_skills_current`
--

LOCK TABLES `raw_skills_current` WRITE;
/*!40000 ALTER TABLE `raw_skills_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_skills_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_sounds`
--

DROP TABLE IF EXISTS `raw_sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_sounds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sound_file` varchar(512) COLLATE latin1_general_ci DEFAULT '',
  `zone_id` int(10) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `unknown1` float NOT NULL DEFAULT '0',
  `unknown2` float NOT NULL DEFAULT '0',
  `unknown3` float NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`sound_file`,`x`,`y`,`z`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_sounds`
--

LOCK TABLES `raw_sounds` WRITE;
/*!40000 ALTER TABLE `raw_sounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_sounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_appearance`
--

DROP TABLE IF EXISTS `raw_spawn_appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_appearance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `signed_value` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE latin1_general_ci DEFAULT '',
  `red` smallint(6) NOT NULL DEFAULT '0',
  `green` smallint(6) NOT NULL DEFAULT '0',
  `blue` smallint(6) NOT NULL DEFAULT '0',
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_appearance`
--

LOCK TABLES `raw_spawn_appearance` WRITE;
/*!40000 ALTER TABLE `raw_spawn_appearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_appearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_appearance_equip`
--

DROP TABLE IF EXISTS `raw_spawn_appearance_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_appearance_equip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slot_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `equip_type` int(10) unsigned NOT NULL DEFAULT '0',
  `red` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `green` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `highlight_red` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `highlight_green` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `highlight_blue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `EquipIDX` (`spawn_id`,`slot_id`,`data_version`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_appearance_equip`
--

LOCK TABLES `raw_spawn_appearance_equip` WRITE;
/*!40000 ALTER TABLE `raw_spawn_appearance_equip` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_appearance_equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_groups`
--

DROP TABLE IF EXISTS `raw_spawn_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`spawn_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_groups`
--

LOCK TABLES `raw_spawn_groups` WRITE;
/*!40000 ALTER TABLE `raw_spawn_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_info`
--

DROP TABLE IF EXISTS `raw_spawn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `guild` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `min_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` smallint(5) unsigned NOT NULL DEFAULT '0',
  `model_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soga_model_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `class_` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default_command` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `max_distance` float NOT NULL DEFAULT '0',
  `hair_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `facial_hair_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wing_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chest_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `legs_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soga_hair_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soga_facial_hair_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pos_collision_radius` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pos_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `max_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pos_size_multiplier` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pos_state` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pos_movement_mode` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health_percent` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `hide_hood` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `heroic_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spawn_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attackable_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activity_status` int(10) unsigned NOT NULL DEFAULT '0',
  `locked_no_loot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hand_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vis_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `visual_state` int(10) unsigned NOT NULL DEFAULT '0',
  `action_state` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mood_state` smallint(5) unsigned NOT NULL DEFAULT '0',
  `emote_state` smallint(5) unsigned NOT NULL DEFAULT '0',
  `widget_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `randomize` int(10) unsigned NOT NULL DEFAULT '0',
  `populate_spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_info`
--

LOCK TABLES `raw_spawn_info` WRITE;
/*!40000 ALTER TABLE `raw_spawn_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_mercs`
--

DROP TABLE IF EXISTS `raw_spawn_mercs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_mercs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mercenary_name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`mercenary_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_mercs`
--

LOCK TABLES `raw_spawn_mercs` WRITE;
/*!40000 ALTER TABLE `raw_spawn_mercs` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_mercs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_pets`
--

DROP TABLE IF EXISTS `raw_spawn_pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_pets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pet_name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`pet_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_pets`
--

LOCK TABLES `raw_spawn_pets` WRITE;
/*!40000 ALTER TABLE `raw_spawn_pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_signs`
--

DROP TABLE IF EXISTS `raw_spawn_signs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_signs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `unknown1a` float NOT NULL DEFAULT '0',
  `unknown1b` float NOT NULL DEFAULT '0',
  `unknown1c` float NOT NULL DEFAULT '0',
  `widget_id` int(10) unsigned NOT NULL DEFAULT '0',
  `widget_x` float NOT NULL DEFAULT '0',
  `widget_y` float NOT NULL DEFAULT '0',
  `widget_z` float NOT NULL DEFAULT '0',
  `description` text COLLATE latin1_general_ci NOT NULL,
  `sign_distance` float NOT NULL DEFAULT '0',
  `unknown3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` enum('Zone','Generic') COLLATE latin1_general_ci NOT NULL DEFAULT 'Generic',
  `include_heading` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `include_location` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_signs`
--

LOCK TABLES `raw_spawn_signs` WRITE;
/*!40000 ALTER TABLE `raw_spawn_signs` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_signs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_unknowns`
--

DROP TABLE IF EXISTS `raw_spawn_unknowns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_unknowns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`field`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_unknowns`
--

LOCK TABLES `raw_spawn_unknowns` WRITE;
/*!40000 ALTER TABLE `raw_spawn_unknowns` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_unknowns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawn_widgets`
--

DROP TABLE IF EXISTS `raw_spawn_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawn_widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown1` float NOT NULL DEFAULT '0',
  `unknown2` float NOT NULL DEFAULT '0',
  `unknown3` float NOT NULL DEFAULT '0',
  `widget_id` int(10) unsigned NOT NULL DEFAULT '0',
  `widget_x` float NOT NULL DEFAULT '0',
  `widget_y` float NOT NULL DEFAULT '0',
  `widget_z` float NOT NULL DEFAULT '0',
  `include_heading` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `include_location` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `type` enum('Generic','Door') COLLATE latin1_general_ci NOT NULL DEFAULT 'Generic',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawn_widgets`
--

LOCK TABLES `raw_spawn_widgets` WRITE;
/*!40000 ALTER TABLE `raw_spawn_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawn_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spawns`
--

DROP TABLE IF EXISTS `raw_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spawns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spawn_group_id` int(10) NOT NULL DEFAULT '0',
  `spawn_packet_type` varchar(32) COLLATE latin1_general_ci NOT NULL DEFAULT 'Normal',
  `zone_id` int(10) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `pitch` float unsigned NOT NULL DEFAULT '0',
  `roll` float unsigned NOT NULL DEFAULT '0',
  `grid_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `populate_spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`spawn_id`,`x`,`y`,`z`,`grid_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spawns`
--

LOCK TABLES `raw_spawns` WRITE;
/*!40000 ALTER TABLE `raw_spawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spell_details`
--

DROP TABLE IF EXISTS `raw_spell_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spell_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health_upkeep` smallint(5) unsigned NOT NULL DEFAULT '0',
  `power_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `power_upkeep` smallint(5) unsigned NOT NULL DEFAULT '0',
  `req_concentration` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cast_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recovery` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recast` float unsigned NOT NULL DEFAULT '0',
  `radius` float unsigned NOT NULL DEFAULT '0',
  `max_aoe_targets` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_range` int(10) unsigned NOT NULL DEFAULT '0',
  `range` float unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `duration2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resistibility` float NOT NULL DEFAULT '0',
  `hit_bonus` float NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`spell_id`,`tier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spell_details`
--

LOCK TABLES `raw_spell_details` WRITE;
/*!40000 ALTER TABLE `raw_spell_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spell_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spell_effects`
--

DROP TABLE IF EXISTS `raw_spell_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spell_effects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subbulletflag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `effect` varchar(512) COLLATE latin1_general_ci NOT NULL,
  `percentage` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`spell_id`,`tier`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spell_effects`
--

LOCK TABLES `raw_spell_effects` WRITE;
/*!40000 ALTER TABLE `raw_spell_effects` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spell_effects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spell_levels`
--

DROP TABLE IF EXISTS `raw_spell_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spell_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spell_id` int(10) unsigned NOT NULL,
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adventure_class_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tradeskill_class_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spell_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`spell_id`,`tier`,`adventure_class_id`,`tradeskill_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spell_levels`
--

LOCK TABLES `raw_spell_levels` WRITE;
/*!40000 ALTER TABLE `raw_spell_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spell_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spell_visuals`
--

DROP TABLE IF EXISTS `raw_spell_visuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spell_visuals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spell_id` int(10) unsigned NOT NULL,
  `num_targets` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spell_visual1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spell_visual2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cast_time` float unsigned NOT NULL DEFAULT '0',
  `spell_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spell_tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `VisIDX` (`spell_id`,`spell_visual1`,`spell_visual2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spell_visuals`
--

LOCK TABLES `raw_spell_visuals` WRITE;
/*!40000 ALTER TABLE `raw_spell_visuals` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spell_visuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spells`
--

DROP TABLE IF EXISTS `raw_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spells` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aa_spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE latin1_general_ci DEFAULT '',
  `description` varchar(512) COLLATE latin1_general_ci DEFAULT '',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icontype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class_skill` int(10) unsigned NOT NULL DEFAULT '0',
  `mastery_skill` int(10) unsigned NOT NULL DEFAULT '0',
  `min_class_skill_req` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell_text_color` int(10) unsigned NOT NULL DEFAULT '0',
  `friendly_spell` smallint(5) unsigned NOT NULL DEFAULT '0',
  `display_spell_tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `duration_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_spell` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spell_visual` int(10) unsigned NOT NULL DEFAULT '0',
  `success_message` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `effect_message` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `can_effect_raid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `affect_only_group_members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `aa_unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `aa_unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uses_remaining` smallint(5) unsigned NOT NULL DEFAULT '0',
  `damage_remaining` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `data_version` smallint(5) unsigned NOT NULL,
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SpellLanguageTypeIDX` (`spell_id`,`tier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spells`
--

LOCK TABLES `raw_spells` WRITE;
/*!40000 ALTER TABLE `raw_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_spells_aa`
--

DROP TABLE IF EXISTS `raw_spells_aa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_spells_aa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aa_spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `current_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`aa_spell_id`,`language_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_spells_aa`
--

LOCK TABLES `raw_spells_aa` WRITE;
/*!40000 ALTER TABLE `raw_spells_aa` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_spells_aa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_titles`
--

DROP TABLE IF EXISTS `raw_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `prefix` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data_version` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`title_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_titles`
--

LOCK TABLES `raw_titles` WRITE;
/*!40000 ALTER TABLE `raw_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_traditions`
--

DROP TABLE IF EXISTS `raw_traditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_traditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tradition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `selection` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `section_name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tradition_id` (`tradition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_traditions`
--

LOCK TABLES `raw_traditions` WRITE;
/*!40000 ALTER TABLE `raw_traditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_traditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_trainings`
--

DROP TABLE IF EXISTS `raw_trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_trainings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spell_line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `training_id_0` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_0` int(10) unsigned NOT NULL DEFAULT '0',
  `name_0` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `icon_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `training_id_1` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_1` int(10) unsigned NOT NULL DEFAULT '0',
  `name_1` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `icon_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `training_id_2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_2` int(10) unsigned NOT NULL DEFAULT '0',
  `name_2` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `icon_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `training_id_3` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_3` int(10) unsigned NOT NULL DEFAULT '0',
  `name_3` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `icon_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `training_id_4` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_4` int(10) unsigned NOT NULL DEFAULT '0',
  `name_4` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`training_id_0`,`training_id_1`,`training_id_2`,`training_id_3`,`training_id_4`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_trainings`
--

LOCK TABLES `raw_trainings` WRITE;
/*!40000 ALTER TABLE `raw_trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_traits`
--

DROP TABLE IF EXISTS `raw_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_traits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `selection` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trait_id_0` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_0` int(10) unsigned NOT NULL DEFAULT '0',
  `name_0` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `icon_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trait_id_1` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_1` int(10) unsigned NOT NULL DEFAULT '0',
  `name_1` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `icon_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trait_id_2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_2` int(10) unsigned NOT NULL DEFAULT '0',
  `name_2` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `icon_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trait_id_3` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_3` int(10) unsigned NOT NULL DEFAULT '0',
  `name_3` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `icon_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon2_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trait_id_4` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown_4` int(10) unsigned NOT NULL DEFAULT '0',
  `name_4` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `data_version` smallint(5) unsigned NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_file` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`trait_id_0`,`trait_id_1`,`trait_id_2`,`trait_id_3`,`trait_id_4`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_traits`
--

LOCK TABLES `raw_traits` WRITE;
/*!40000 ALTER TABLE `raw_traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_traits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_zone_points`
--

DROP TABLE IF EXISTS `raw_zone_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_zone_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` int(10) unsigned NOT NULL DEFAULT '0',
  `zone_name` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`widget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_zone_points`
--

LOCK TABLES `raw_zone_points` WRITE;
/*!40000 ALTER TABLE `raw_zone_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_zone_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_zones`
--

DROP TABLE IF EXISTS `raw_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_file` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `zone_desc` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `zone_key` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `location_x` float NOT NULL DEFAULT '0',
  `location_y` float NOT NULL DEFAULT '0',
  `location_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`zone_file`,`zone_desc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_zones`
--

LOCK TABLES `raw_zones` WRITE;
/*!40000 ALTER TABLE `raw_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-25  4:53:13
