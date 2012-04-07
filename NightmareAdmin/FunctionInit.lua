﻿-------------------------------------------------------------------------------------------------------------
--
-- NightmareAdmin

--
-- Copyright (C) 2007 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--




-------------------------------------------------------------------------------------------------------------
--Convention:
-- NightmareAdmin:PrepareScript(*nameofbutton*     , Locale["*tooltiplocalisation*"]   , function() *functionnameandparameters()* end)


function InitControls()
--[[GM Tab]]
  NightmareAdmin:PrepareScript(ma_displaylevelbutton   , Locale["tt_DisplayAccountLvl"]  , function() DisplayAccountLevel() end)
  NightmareAdmin:PrepareScript(ma_gmonbutton           , Locale["tt_GMOnButton"]         , function() ToggleGMMode("on") end)
  NightmareAdmin:PrepareScript(ma_gmoffbutton          , Locale["tt_GMOffButton"]        , function() ToggleGMMode("off") end)
  NightmareAdmin:PrepareScript(ma_flyonbutton          , Locale["tt_FlyOnButton"]        , function() ToggleFlyMode("on") end)
  NightmareAdmin:PrepareScript(ma_flyoffbutton         , Locale["tt_FlyOffButton"]       , function() ToggleFlyMode("off") end)
  NightmareAdmin:PrepareScript(ma_hoveronbutton        , Locale["tt_HoverOnButton"]      , function() ToggleHoverMode(1) end)
  NightmareAdmin:PrepareScript(ma_hoveroffbutton       , Locale["tt_HoverOffButton"]     , function() ToggleHoverMode(0) end)
  NightmareAdmin:PrepareScript(ma_whisperonbutton      , Locale["tt_WhispOnButton"]      , function() ToggleWhisper("on") end)
  NightmareAdmin:PrepareScript(ma_whisperoffbutton     , Locale["tt_WhispOffButton"]     , function() ToggleWhisper("off") end)
  NightmareAdmin:PrepareScript(ma_invisibleonbutton    , Locale["tt_InvisOnButton"]      , function() ToggleVisible("off") end)
  NightmareAdmin:PrepareScript(ma_invisibleoffbutton   , Locale["tt_InvisOffButton"]     , function() ToggleVisible("on") end)
  NightmareAdmin:PrepareScript(ma_taxicheatonbutton    , Locale["tt_TaxiOnButton"]       , function() ToggleTaxicheat("on") end)
  NightmareAdmin:PrepareScript(ma_taxicheatoffbutton   , Locale["tt_TaxiOffButton"]      , function() ToggleTaxicheat("off") end)
  NightmareAdmin:PrepareScript(ma_mapsonbutton         , Locale["tt_ShowMapsButton"]     , function() ToggleMaps(1) end)
  NightmareAdmin:PrepareScript(ma_mapsoffbutton        , Locale["tt_HideMapsButton"]     , function() ToggleMaps(0) end)
  NightmareAdmin:PrepareScript(ma_instantkillbutton    , Locale["tt_instakill"]          , function() InstantKill() end)
  NightmareAdmin:PrepareScript(ma_speedslider          , Locale["tt_SpeedSlider"]        , {{"OnMouseUp", function() SetSpeed() end},{"OnValueChanged", function() ma_speedsliderText:SetText("Speed: "..string.format("%.1f", ma_speedslider:GetValue())) end}})
  NightmareAdmin:PrepareScript(ma_scaleslider          , Locale["tt_ScaleSlider"]        , {{"OnMouseUp", function() SetScale() end},{"OnValueChanged", function() ma_scalesliderText:SetText("Scale: "..string.format("%.1f", ma_scaleslider:GetValue())) end}})  
  NightmareAdmin:PrepareScript(ma_screenshotbutton     , Locale["tt_ScreenButton"]       , function() Screenie() end)
  NightmareAdmin:PrepareScript(ma_bankbutton           , Locale["tt_BankButton"]         , function() ShowBank() end)
  NightmareAdmin:PrepareScript(ma_dismountbutton       , Locale["tt_Dismount"]           , function() DismountPlayer() end)
  NightmareAdmin:PrepareScript(ma_setjail_a_button     , Locale["tt_SetJail_A_Button"]   , function() SetJail_A() end)
  NightmareAdmin:PrepareScript(ma_setjail_h_button     , Locale["tt_SetJail_H_Button"]   , function() SetJail_H() end)
  NightmareAdmin:PrepareScript(ma_gridnaviaheadbutton  , Locale["tt_N"]                  , function() GridNavigate(nil, nil); NightmareAdmin.db.char.nextGridWay = "north" end)
  NightmareAdmin:PrepareScript(ma_gridnavibackbutton   , Locale["tt_S"]                  , function() GridNavigate(nil, nil); NightmareAdmin.db.char.nextGridWay = "south" end)
  NightmareAdmin:PrepareScript(ma_gridnavirightbutton  , Locale["tt_E"]                  , function() GridNavigate(nil, nil); NightmareAdmin.db.char.nextGridWay = "east" end)
  NightmareAdmin:PrepareScript(ma_gridnavileftbutton   , Locale["tt_W"]                  , function() GridNavigate(nil, nil); NightmareAdmin.db.char.nextGridWay = "west" end)
  NightmareAdmin:PrepareScript(ma_chatonbutton         , Locale["tt_chatonbutton"]       , function() ToggleChat("on") end)
  NightmareAdmin:PrepareScript(ma_chatoffbutton        , Locale["tt_chatoffbutton"]      , function() ToggleChat("off") end)
  NightmareAdmin:PrepareScript(ma_waterwalkonbutton    , Locale["tt_waterwalkonbutton"]  , function() ToggleWaterwalk("on") end)
  NightmareAdmin:PrepareScript(ma_waterwalkoffbutton   , Locale["tt_watewrwalkoffbutton"], function() ToggleWaterwalk("off") end)
  NightmareAdmin:PrepareScript(ma_accountlockonbutton  , Locale["tt_accountlockonbutton"], function() ToggleAccountlock("on") end)
  NightmareAdmin:PrepareScript(ma_accountlockoffbutton , Locale["tt_accountlockoffbutton"], function() ToggleAccountlock("off") end)
  NightmareAdmin:PrepareScript(ma_gmingamebutton       , Locale["tt_gmingamebutton"]     , function() GMInGame() end)
  NightmareAdmin:PrepareScript(ma_gmlistbutton         , Locale["tt_gmlistbutton"]       , function() GMList() end)
  NightmareAdmin:PrepareScript(ma_petcreatebutton      , Locale["tt_petcreatebutton"]    , function() PetCreate() end)
  NightmareAdmin:PrepareScript(ma_petlearnbutton       , Locale["tt_petlearnbutton"]     , function() PetLearn() end)
  NightmareAdmin:PrepareScript(ma_petunlearnbutton     , Locale["tt_petunlearnbutton"]   , function() PetUnLearn() end)
  NightmareAdmin:PrepareScript(ma_pettpbutton          , Locale["tt_pettpbutton"]        , function() PetTP() end)
  NightmareAdmin:PrepareScript(ma_lookuptaxibutton     , Locale["tt_lookuptaxibutton"]   , function() LookupTaxi() end)
  NightmareAdmin:PrepareScript(ma_gotaxinodebutton     , Locale["tt_gotaxinodebutton"]   , function() GoTaxiNode() end)
  NightmareAdmin:PrepareScript(ma_gotriggerbutton      , Locale["tt_gotriggerbutton"]    , function() GoTrigger() end)
  NightmareAdmin:PrepareScript(ma_goxybutton           , Locale["tt_goxybutton"]         , function() GoXY() end)
  NightmareAdmin:PrepareScript(ma_goxyzbutton          , Locale["tt_goxyzbutton"]        , function() GoXYZ() end)
  NightmareAdmin:PrepareScript(ma_gozonexybutton       , Locale["tt_gozonexybutton"]     , function() GoZoneXY() end)
  NightmareAdmin:PrepareScript(ma_lookupzonebutton     , Locale["tt_lookupzonebutton"]   , function() LookupZone() end)
  NightmareAdmin:PrepareScript(ma_castbutton           , Locale["tt_castbutton"]         , function() Cast() end)
  NightmareAdmin:PrepareScript(ma_castbackbutton       , Locale["tt_castbackbutton"]     , function() CastBack() end)
  NightmareAdmin:PrepareScript(ma_castdistbutton       , Locale["tt_castdistbutton"]     , function() CastDist() end)
  NightmareAdmin:PrepareScript(ma_castselfbutton       , Locale["tt_castselfbutton"]     , function() CastSelf() end)
  NightmareAdmin:PrepareScript(ma_casttargetbutton     , Locale["tt_casttargetbutton"]   , function() CastTarget() end)
  NightmareAdmin:PrepareScript(ma_listitembutton       , Locale["tt_listitembutton"]     , function() ListItem() end)
  NightmareAdmin:PrepareScript(ma_gmclearbutton        , Locale["tt_gmclearbutton"]      , function() GmClear() end)
  NightmareAdmin:PrepareScript(ma_acctcreatebutton     , Locale["tt_acctcreatebutton"]   , function() AcctCreate() end)
  NightmareAdmin:PrepareScript(ma_acctdeletebutton     , Locale["tt_acctdeletebutton"]   , function() AcctDelete() end)
  NightmareAdmin:PrepareScript(ma_acctaddonbutton      , Locale["tt_acctaddonbutton"]    , function() AcctAddon() end)
  NightmareAdmin:PrepareScript(ma_acctgmlvlbutton      , Locale["tt_acctgmlvlbutton"]    , function() AcctGMLvl() end)
  NightmareAdmin:PrepareScript(ma_acctpasswdbutton     , Locale["tt_acctpasswdbutton"]   , function() AcctPasswd() end)
  NightmareAdmin:PrepareScript(ma_gmnotifybutton       , Locale["tt_gmnotifybutton"]     , function() GMNotify() end)
  NightmareAdmin:PrepareScript(ma_teleaddbutton        , Locale["tt_teleaddbutton"]      , function() TeleAddButton() end)
  NightmareAdmin:PrepareScript(ma_teledelbutton        , Locale["tt_teledelbutton"]      , function() TeleDelButton() end)
  NightmareAdmin:PrepareScript(ma_speedsliderreset_button, Locale["tt_SpeedSliderReset"]      , function() ResetSpeed() end)
  NightmareAdmin:PrepareScript(ma_scalesliderreset_button, Locale["tt_ScaleSliderReset"]      , function() ResetScale() end)



  -- Speed Slider
  ma_speedslider:SetOrientation("HORIZONTAL")
  ma_speedslider:SetMinMaxValues(.5, 30)
  ma_speedslider:SetValueStep(0.5)
  ma_speedslider:SetValue(1)
  ma_speedsliderText:SetText("Speed: 1.0")
  -- Scale Slider
  ma_scaleslider:SetOrientation("HORIZONTAL")
  ma_scaleslider:SetMinMaxValues(0.1, 10)
  ma_scaleslider:SetValueStep(0.1)
  ma_scaleslider:SetValue(1)
  ma_scalesliderText:SetText("Scale: 1.0")

--[[Char Tab]]
  InitModelFrame()
  NightmareAdmin:PrepareScript(ma_modelrotatelbutton   , Locale["tt_RotateLeft"]         , function() ModelRotateLeft() end)
  NightmareAdmin:PrepareScript(ma_modelrotaterbutton   , Locale["tt_RotateRight"]        , function() ModelRotateRight() end)
  NightmareAdmin:PrepareScript(ma_killbutton           , Locale["tt_killbutton"]         , function() KillSomething() end)
  NightmareAdmin:PrepareScript(ma_revivebutton         , Locale["tt_reviveplayer"]       , function() RevivePlayer() end)
  NightmareAdmin:PrepareScript(ma_savebutton           , Locale["tt_saveplayer"]         , function() SavePlayer() end)
  NightmareAdmin:PrepareScript(ma_kickbutton           , Locale["tt_KickButton"]         , function() KickPlayer() end)
  NightmareAdmin:PrepareScript(ma_cooldownbutton       , Locale["tt_CooldownButton"]     , function() Cooldown() end)
  NightmareAdmin:PrepareScript(ma_guidbutton           , Locale["tt_GUIDButton"]         , function() ShowGUID() end)
  NightmareAdmin:PrepareScript(ma_pinfobutton          , Locale["tt_PinfoButton"]        , function() Pinfo() end)
  NightmareAdmin:PrepareScript(ma_distancebutton       , Locale["tt_DistanceButton"]     , function() Distance() end)
  NightmareAdmin:PrepareScript(ma_recallbutton         , Locale["tt_RecallButton"]       , function() Recall() end)
  NightmareAdmin:PrepareScript(ma_demorphbutton        , Locale["tt_DemorphButton"]      , function() Demorph() end)
  NightmareAdmin:PrepareScript(ma_showmapsbutton       , Locale["tt_ShowMapsCharButton"] , function() ToggleMapsChar(1) end)
  NightmareAdmin:PrepareScript(ma_hidemapsbutton       , Locale["tt_HideMapsCharButton"] , function() ToggleMapsChar(0) end)
  NightmareAdmin:PrepareScript(ma_gpsbutton            , Locale["tt_GPSButton"]          , function() GPS() end)
  NightmareAdmin:PrepareScript(ma_learnlangbutton      , Locale["tt_learnlangbutton"]    , function() LearnSpell(UIDropDownMenu_GetSelectedValue(ma_learnlangdropdown)) end)
  NightmareAdmin:PrepareScript(ma_modifybutton         , Locale["tt_modifybutton"]       , function() Modify(UIDropDownMenu_GetSelectedValue(ma_modifydropdown),ma_modifyeditbox:GetText()) end)
  NightmareAdmin:PrepareScript(ma_resetbutton          , Locale["tt_resetbutton"]        , function() Reset(UIDropDownMenu_GetSelectedValue(ma_resetdropdown)) end)
  NightmareAdmin:PrepareScript(ma_modelzoominbutton    , Locale["tt_modelzoominbutton"]  , function() CharModelZoomIn() end)
  NightmareAdmin:PrepareScript(ma_modelzoomoutbutton   , Locale["tt_modelzoomoutbutton"] , function() CharModelZoomOut() end)
  NightmareAdmin:PrepareScript(ma_charbindsight        , Locale["tt_charbindsight"]      , function() CharBindSight() end)
  NightmareAdmin:PrepareScript(ma_charunbindsight      , Locale["tt_charunbindsight"]    , function() CharUnBindSight() end)
  NightmareAdmin:PrepareScript(ma_charrenamebutton     , Locale["tt_charrename"]         , function() CharRename() end)
  NightmareAdmin:PrepareScript(ma_charcustomizebutton  , Locale["tt_charcustomize"]      , function() CharCustomize() end)
  NightmareAdmin:PrepareScript(ma_charchangeracebutton , Locale["tt_charchangerace"]     , function() CharChangeRace() end)
  NightmareAdmin:PrepareScript(ma_charchangefactionbutton, Locale["tt_charchnagefaction"], function() CharChangeFaction() end)
  NightmareAdmin:PrepareScript(ma_charcombatstopbutton , Locale["tt_charcombatstop"]     , function() CharCombatStop() end)
  NightmareAdmin:PrepareScript(ma_charmaxskillbutton   , Locale["tt_charmaxskill"]       , function() CharMaxSkill() end)
  NightmareAdmin:PrepareScript(ma_charfreezebutton     , Locale["tt_charfreeze"]         , function() CharFreeze() end)
  NightmareAdmin:PrepareScript(ma_charunfreezebutton   , Locale["tt_charunfreeze"]       , function() CharUnFreeze() end)
  NightmareAdmin:PrepareScript(ma_charlistfreezebutton , Locale["tt_charlistfreeze"]     , function() CharListFreeze() end)
  NightmareAdmin:PrepareScript(ma_charpossessbutton    , Locale["tt_charpossess"]        , function() CharPossess() end)
  NightmareAdmin:PrepareScript(ma_charunpossessbutton  , Locale["tt_charunpossess"]      , function() CharUnPossess() end)
  NightmareAdmin:PrepareScript(ma_charrecallbutton     , Locale["tt_charrecall"]         , function() CharRecall() end)
  NightmareAdmin:PrepareScript(ma_charrepairitemsbutton, Locale["tt_charrepair"]         , function() CharRepair() end)
  
  
  LearnLangDropDownInitialize()
  UIDropDownMenu_Initialize(ma_learnlangdropdown, LearnLangDropDownInitialize)
  UIDropDownMenu_SetWidth(ma_learnlangdropdown,100)
  UIDropDownMenu_SetButtonWidth(ma_learnlangdropdown,20)
  ModifyDropDownInitialize()
  UIDropDownMenu_Initialize(ma_modifydropdown, ModifyDropDownInitialize)
  UIDropDownMenu_SetWidth(ma_modifydropdown, 100)
  UIDropDownMenu_SetButtonWidth(ma_modifydropdown, 20)
  ResetDropDownInitialize()
  UIDropDownMenu_Initialize(ma_resetdropdown, ResetDropDownInitialize)
  UIDropDownMenu_SetWidth(ma_resetdropdown, 100)
  UIDropDownMenu_SetButtonWidth(ma_resetdropdown, 20)
--[[Char2 Tab]]
  NightmareAdmin:PrepareScript(ma_banbutton            , Locale["tt_banbutton"]          , function() BanButton() end)
  NightmareAdmin:PrepareScript(ma_gonamebutton         , Locale["tt_gonamebutton"]       , function() GoNameButton() end)
  NightmareAdmin:PrepareScript(ma_createguildbutton    , Locale["tt_createguildbutton"]  , function() CreateGuildButton() end)
  NightmareAdmin:PrepareScript(ma_baninfobutton        , Locale["tt_baninfobutton"]      , function() BanInfoButton() end)
  NightmareAdmin:PrepareScript(ma_groupgobutton        , Locale["tt_groupgobutton"]      , function() GroupGoButton() end)
  NightmareAdmin:PrepareScript(ma_guildinvitebutton    , Locale["tt_guildinvitebutton"]  , function() GuildInviteButton() end)
  NightmareAdmin:PrepareScript(ma_banlistbutton        , Locale["tt_banlistbutton"]      , function() BanlistButton() end)
  NightmareAdmin:PrepareScript(ma_namegobutton         , Locale["tt_namegobutton"]       , function() NameGoButton() end)
  NightmareAdmin:PrepareScript(ma_guildrankbutton      , Locale["tt_guildrankbutton"]    , function() GuildRankButton() end)
  NightmareAdmin:PrepareScript(ma_telegroupbutton      , Locale["tt_telegroupbutton"]    , function() TeleGroupButton() end)
  NightmareAdmin:PrepareScript(ma_unbanbutton          , Locale["tt_unbanbutton"]        , function() UnBanButton() end)
  NightmareAdmin:PrepareScript(ma_guilddeletebutton    , Locale["tt_guilddeletebutton"]  , function() GuildDeleteButton() end)
  NightmareAdmin:PrepareScript(ma_guilduninvitebutton  , Locale["tt_guilduninvitebutton"], function() GuildUninviteButton() end)
  NightmareAdmin:PrepareScript(ma_telenamebutton       , Locale["tt_telenamebutton"]     , function() TeleNameButton() end)
  NightmareAdmin:PrepareScript(ma_mutebutton           , Locale["tt_mutebutton"]         , function() MuteButton() end)
  NightmareAdmin:PrepareScript(ma_charmorphbutton      , Locale["tt_charmorphbutton"]    , function() CharMorphButton() end)
  NightmareAdmin:PrepareScript(ma_charaurabutton       , Locale["tt_charaurabutton"]     , function() CharAuraButton() end)
  NightmareAdmin:PrepareScript(ma_charunaurabutton     , Locale["tt_charunaurabutton"]   , function() CharUnAuraButton() end)
  NightmareAdmin:PrepareScript(ma_jailabutton          , Locale["tt_JailAButton"]        , function() JailA() end)
  NightmareAdmin:PrepareScript(ma_jailhbutton          , Locale["tt_JailHButton"]        , function() JailH() end)
  NightmareAdmin:PrepareScript(ma_unjailbutton         , Locale["tt_UnJailButton"]       , function() UnJail() end)
  NightmareAdmin:PrepareScript(ma_unmutebutton         , Locale["tt_UnMuteButton"]       , function() UnMuteButton() end) 
  NightmareAdmin:PrepareScript(ma_questaddbutton       , Locale["tt_QuestAddButton"]     , function() QuestAddButton() end) 
  NightmareAdmin:PrepareScript(ma_questcompletebutton  , Locale["tt_QuestCompleteButton"], function() QuestCompleteButton() end) 
  NightmareAdmin:PrepareScript(ma_questremovebutton    , Locale["tt_QuestRemoveButton"]  , function() QuestRemoveButton() end) 
  NightmareAdmin:PrepareScript(ma_damagebutton         , Locale["tt_DamageButton"]       , function() DamageButton() end) 
  NightmareAdmin:PrepareScript(ma_hideareabutton       , Locale["tt_HideAreaButton"]     , function() HideAreaButton() end) 
  NightmareAdmin:PrepareScript(ma_showareabutton       , Locale["tt_ShowAreaButton"]     , function() ShowAreaButton() end) 
  NightmareAdmin:PrepareScript(ma_honoraddbutton       , Locale["tt_HonorAddButton"]     , function() HonorAddButton() end) 
  NightmareAdmin:PrepareScript(ma_honorupdatebutton    , Locale["tt_HonorUpdateButton"]  , function() HonorUpdateButton() end) 

--[[NPC Tab]]
  InitModelFrameNPC()
  NightmareAdmin:PrepareScript(ma_npcmodelrotatelbutton, Locale["tt_NPCRotateLeft"]      , function() NpcModelRotateLeft() end)
  NightmareAdmin:PrepareScript(ma_npcmodelrotaterbutton, Locale["tt_NPCRotateRight"]     , function() NpcModelRotateRight() end)
  NightmareAdmin:PrepareScript(ma_npckillbutton        , Locale["tt_NPCKillButton"]      , function() NPCKillSomething() end)
  NightmareAdmin:PrepareScript(ma_respawnbutton        , Locale["tt_npcrespawn"]         , function() Respawn() end)
  NightmareAdmin:PrepareScript(ma_npcdistancebutton    , Locale["tt_NPCDistanceButton"]  , function() NPCDistance() end)
  NightmareAdmin:PrepareScript(ma_npcguidbutton        , Locale["tt_NPCGUIDButton"]      , function() NPCShowGUID() end)
  NightmareAdmin:PrepareScript(ma_npcinfobutton        , Locale["tt_NPCInfoButton"]      , function() NPCInfo() end)
  NightmareAdmin:PrepareScript(ma_npcdemorphbutton     , Locale["tt_NPCDemorph"]         , function() NPCDemorph() end)
  NightmareAdmin:PrepareScript(ma_npcmovebutton        , Locale["tt_NPCMove"]            , function() NPCMove() end)
  NightmareAdmin:PrepareScript(ma_npcdelbutton         , Locale["tt_NPCDel"]             , function() NPCDel() end)
  NightmareAdmin:PrepareScript(ma_NPC_guidgetbutton    , Locale["tt_getguid"]            , function() NPC_GUID_Get() end)
  NightmareAdmin:PrepareScript(ma_NPC_addbutton        , Locale["tt_NPCAdd"]             , function() NPC_Add() end)
  NightmareAdmin:PrepareScript(ma_npcgobutton          , Locale["tt_NPCGo"]              , function() NPCGo() end)
  NightmareAdmin:PrepareScript(ma_npcmorphbutton       , Locale["tt_NPCMorph"]           , function() NPCMorph() end)
  NightmareAdmin:PrepareScript(ma_npcsaybutton         , Locale["tt_NPCSay"]             , function() NPCSay() end)
  NightmareAdmin:PrepareScript(ma_npcyellbutton        , Locale["tt_NPCYell"]            , function() NPCYell() end)
  NightmareAdmin:PrepareScript(ma_npcaurabutton        ,  Locale["tt_NPCAura"]           , function() NPCAura() end)
  NightmareAdmin:PrepareScript(ma_npcunaurabutton      , Locale["tt_NPCUnaura"]          , function() NPCUnaura() end)
  NightmareAdmin:PrepareScript(ma_npcemotebutton       , Locale["tt_PlayEmote"]          , function() NpcEmote(UIDropDownMenu_GetSelectedValue(ma_npcemotedropdown)) end)
  NightmareAdmin:PrepareScript(ma_npcemotebutton_a     , Locale["tt_PlayEmote"]          , function() NpcEmote(UIDropDownMenu_GetSelectedValue(ma_npcemotedropdown_a)) end)
  NightmareAdmin:PrepareScript(ma_npcdisplayupbutton   , Locale["tt_DisplayUp"]          , function() DisplayUP() end)
  NightmareAdmin:PrepareScript(ma_npcdisplaydownbutton , Locale["tt_DisplayDown"]        , function() DisplayDown() end)
  NightmareAdmin:PrepareScript(ma_npcID_UPbutton       , Locale["tt_IDUp"]               , function() ID_UP() end)
  NightmareAdmin:PrepareScript(ma_npcID_DOWNbutton     , Locale["tt_IDDown"]             , function() ID_DOWN() end)
  NightmareAdmin:PrepareScript(ma_npcmodelzoominbutton , Locale["tt_npcmodelzoominbutton"], function() NPCModelZoomIn() end)
  NightmareAdmin:PrepareScript(ma_npcmodelzoomoutbutton, Locale["tt_npcmodelzoomoutbutton"], function() NPCModelZoomOut() end)
  NightmareAdmin:PrepareScript(ma_npcbindsight         , Locale["tt_npcbindsight"]        , function() NPCBindSight() end)
  NightmareAdmin:PrepareScript(ma_npcunbindsight       , Locale["tt_npcunbindsight"]      , function() NPCUnBindSight() end)
  NightmareAdmin:PrepareScript(ma_npccometomebutton    , Locale["tt_npccometome"]         , function() NPCComeToMe() end)
  NightmareAdmin:PrepareScript(ma_npcpossessbutton     , Locale["tt_npcpossess"]          , function() NPCPossess() end)
  NightmareAdmin:PrepareScript(ma_npcunpossessbutton   , Locale["tt_npcunpossess"]        , function() NPCUnPossess() end)

--[[NPC2 Tab]]
  NightmareAdmin:PrepareScript(ma_npcfreezebutton      , Locale["tt_NPCFreezeButton"]    , function() NPCFreeze() end)
  NightmareAdmin:PrepareScript(ma_npcfreezedelbutton   , Locale["tt_NPCFreezeDelButton"] , function() NPCFreezeDEL() end)
  NightmareAdmin:PrepareScript(ma_way_endaddbutton     , Locale["tt_WayEndAdd"]          , function() WayEndAdd() end)
  NightmareAdmin:PrepareScript(ma_npcunfreeze_addwaybutton , Locale["tt_NPCAddWay"]      , function() NPCAdd_Way() end)
  NightmareAdmin:PrepareScript(ma_way_modifyaddbutton  , Locale["tt_WayMAdd"]            , function() WayModifyAdd() end)
  NightmareAdmin:PrepareScript(ma_way_modifydelbutton  , Locale["tt_WayModifyDel"]       , function() WayModifyDel() end)
  NightmareAdmin:PrepareScript(ma_way_showonbutton     , Locale["tt_WayShow1"]           , function() WayShowOn() end)
  NightmareAdmin:PrepareScript(ma_way_showoffbutton    , Locale["tt_WayShow0"]           , function() WayShowOff() end)
  NightmareAdmin:PrepareScript(ma_npcunfreeze_addway_showonbutton , Locale["tt_NPCAdd_WayShowOn"] , function() NPCAdd_WayShowOn() end)
  NightmareAdmin:PrepareScript(ma_npcunfreeze_waybutton, Locale["tt_NPCUnFreeze_WayButton"], function() NPCUnFreeze_Way() end)
  NightmareAdmin:PrepareScript(ma_npcunfreeze_randombutton , Locale["tt_NPCUnFreeze_RandomButton"]  , function() NPCUnFreeze_Random() end)
  NightmareAdmin:PrepareScript(ma_movestackbutton      , Locale["tt_MoveStackButton"]    , function() ShowMove() end)

--[[Gob Tab]]
  NightmareAdmin:PrepareScript(ma_objgobutton          , Locale["tt_ObjGo"]              , function() OBJGo() end)
  NightmareAdmin:PrepareScript(ma_objaddbutton         , Locale["tt_ObjAdd"]             , function() OBJAdd() end)
  NightmareAdmin:PrepareScript(ma_objmovebutton        , Locale["tt_ObjMove"]            , function() OBJMove() end)
  NightmareAdmin:PrepareScript(ma_objturnbutton        , Locale["tt_ObjTurn"]            , function() OBJTurn() end)
  NightmareAdmin:PrepareScript(ma_objdelbutton         , Locale["tt_ObjDel"]             , function() OBJDel() end)
  NightmareAdmin:PrepareScript(ma_objnearbutton        , Locale["tt_ObjNear"]            , function() OBJNear() end)
  NightmareAdmin:PrepareScript(ma_objtargetbutton      , Locale["tt_ObjTarget"]          , function() OBJTarget() end)
  NightmareAdmin:PrepareScript(ma_gobactivatebutton    , Locale["tt_ObjActivate"]        , function() OBJActivate() end)
  NightmareAdmin:PrepareScript(ma_gobaddtempbutton     , Locale["tt_ObjAddTemp"]         , function() OBJAddTemp() end)
  NightmareAdmin:PrepareScript(ma_gobinfobutton        , Locale["tt_ObjInfo"]            , function() OBJInfo() end)
  NightmareAdmin:PrepareScript(ma_gobsetphasebutton    , Locale["tt_ObjSetPhase"]        , function() OBJSetPhase() end)
  NightmareAdmin:PrepareScript(ma_gobshowmodel         , "Shows the model"               , function() ShowGobModel() end)
  InitGobModelFrame()
  NightmareAdmin:PrepareScript(ma_gobmodelrotatelbutton, Locale["tt_RotateLeft"]         , function() GobModelRotateLeft() end)
  NightmareAdmin:PrepareScript(ma_gobmodelrotaterbutton, Locale["tt_RotateRight"]        , function() GobModelRotateRight() end)
  NightmareAdmin:PrepareScript(ma_gobmodelzoominbutton , Locale["tt_modelzoominbutton"]  , function() GobModelZoomIn() end)
  NightmareAdmin:PrepareScript(ma_gobmodelzoomoutbutton, Locale["tt_modelzoomoutbutton"] , function() GobModelZoomOut() end)
  NightmareAdmin:PrepareScript(ma_gobmoveforwardbutton , "Move forward"                  , function() DMFront() end)
  NightmareAdmin:PrepareScript(ma_gobmovebackbutton    , "Move back"                     , function() DMBack() end)
  NightmareAdmin:PrepareScript(ma_gobmoveleftbutton    , "Move left"                     , function() DMLeft() end)
  NightmareAdmin:PrepareScript(ma_gobmoverightbutton   , "Move right"                    , function() DMRight() end)
  NightmareAdmin:PrepareScript(ma_gobmoveupbutton      , "Move up"                       , function() DMUP() end)
  NightmareAdmin:PrepareScript(ma_gobmovedownbutton    , "Move down"                     , function() DMDown() end)
  NightmareAdmin:PrepareScript(ma_gobspawnherebutton   , "Spawn here"                    , function() DMSS2() end)
  NightmareAdmin:PrepareScript(ma_spawnonmovecheck     , ""                              , function() CheckToggle("spawn") end)
  NightmareAdmin:PrepareScript(ma_moveonmovecheck      , ""                              , function() CheckToggle("move") end)

--[[Tele Tab]]
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry1  , nil , function() NightmareAdmin.db.char.selectedCont = "EK_N"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry2  , nil , function() NightmareAdmin.db.char.selectedCont = "EK_S"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry3  , nil , function() NightmareAdmin.db.char.selectedCont = "K"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry4  , nil , function() NightmareAdmin.db.char.selectedCont = "Ou"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry5  , nil , function() NightmareAdmin.db.char.selectedCont = "N_A"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry6  , nil , function() NightmareAdmin.db.char.selectedCont = "N_H"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry7  , nil , function() NightmareAdmin.db.char.selectedCont = "BG"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry8  , nil , function() NightmareAdmin.db.char.selectedCont = "I_EK"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry9  , nil , function() NightmareAdmin.db.char.selectedCont = "I_K"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry10 , nil , function() NightmareAdmin.db.char.selectedCont = "I_O"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry11 , nil , function() NightmareAdmin.db.char.selectedCont = "I_N"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  NightmareAdmin:PrepareScript(ma_ContScrollBarEntry12 , nil , function() NightmareAdmin.db.char.selectedCont = "OT"; cont=NightmareAdmin.db.char.selectedCont; TeleScrollUpdate() end)

--[[Tickets Tab]]
  NightmareAdmin:PrepareScript(ma_tabbutton_ticket     , Locale["tt_TicketButton"]       , function() ShowTicketTab() end)

  NightmareAdmin:PrepareScript(ma_resetticketsbutton   , "Not working? Click this, then click REFRESH!"      , function() ResetTickets() end)
  NightmareAdmin:PrepareScript(ma_showticketsbutton    , nil                             , function() RefreshTickets() end)
  NightmareAdmin:PrepareScript(ma_showonlineticketsbutton    , nil                             , function() RefreshOnlineTickets() end)
  NightmareAdmin:PrepareScript(ma_deleteticketbutton   , nil                             , function() Ticket("delete") end)
  NightmareAdmin:PrepareScript(ma_answerticketbutton   , nil                             , function() Ticket("answer") end)
  NightmareAdmin:PrepareScript(ma_getcharticketbutton  , nil                             , function() Ticket("getchar") end)
  NightmareAdmin:PrepareScript(ma_gocharticketbutton   , nil                             , function() Ticket("gochar") end)
  NightmareAdmin:PrepareScript(ma_whisperticketbutton  , nil                             , function() Ticket("whisper") end)
  NightmareAdmin:PrepareScript(ma_goticketbutton       , nil                             , function() Ticket("goticket") end)
  NightmareAdmin:PrepareScript(ma_showbutton           , nil                             , function() ShowTickets() end)

--[[Misc Tab]]
  NightmareAdmin:PrepareScript(ma_bgcolorshowbutton    , nil                             , function() ShowColorPicker("bg") end)
  NightmareAdmin:PrepareScript(ma_frmcolorshowbutton   , nil                             , function() ShowColorPicker("frm") end)
  NightmareAdmin:PrepareScript(ma_btncolorshowbutton   , nil                             , function() ShowColorPicker("btn") end)
  NightmareAdmin:PrepareScript(ma_linkifiercolorbutton , nil                             , function() ShowColorPicker("linkifier") end)
  NightmareAdmin:PrepareScript(ma_applystylebutton     , nil                             , function() ApplyStyleChanges() end)
  NightmareAdmin:PrepareScript(ma_changeweatherbutton  , nil                             , function() ChangeWeather(UIDropDownMenu_GetSelectedValue(ma_weatherdropdown)) end)

--[[Server Tab]]
  NightmareAdmin:PrepareScript(ma_announcebutton       , Locale["tt_AnnounceButton"]     , function() Announce(ma_announceeditbox:GetText()) end)
  NightmareAdmin:PrepareScript(ma_resetannouncebutton  , nil                             , function() ma_announceeditbox:SetText("") end)
  NightmareAdmin:PrepareScript(ma_shutdownbutton       , Locale["tt_ShutdownButton"]     , function() Shutdown(ma_shutdowneditbox:GetText()) end)
  NightmareAdmin:PrepareScript(ma_loadtablebutton      , nil                             , function() ReloadTable(UIDropDownMenu_GetSelectedValue(ma_reloadtabledropdown)) end)
  NightmareAdmin:PrepareScript(ma_loadscriptsbutton    , nil                             , function() ReloadScripts() end)

--[[Log Tab]]
--[[Who Tab]]
  NightmareAdmin:PrepareScript(ma_resetwhobutton       , nil                             , function() ResetWho() end)
  NightmareAdmin:PrepareScript(ma_deletewhobutton      , nil                             , function() Who("delete") end)
  NightmareAdmin:PrepareScript(ma_answerwhobutton      , nil                             , function() Who("answer") end)
  NightmareAdmin:PrepareScript(ma_summonwhobutton      , nil                             , function() Who("getchar") end)
  NightmareAdmin:PrepareScript(ma_gocharwhobutton      , nil                             , function() Who("gochar") end)
  NightmareAdmin:PrepareScript(ma_whisperwhobutton     , nil                             , function() Who("whisper") end)
  NightmareAdmin:PrepareScript(ma_who_customizebutton  , Locale["tt_who_customize"]      , function() Who("customize") end)
  NightmareAdmin:PrepareScript(ma_who_chardeletebutton , Locale["tt_who_chardelete"]     , function() Who("chardelete") end)
  NightmareAdmin:PrepareScript(ma_who_charrenamebutton , Locale["tt_who_charrename"]     , function() Who("charrename") end)
  NightmareAdmin:PrepareScript(ma_who_1daybanbutton    , Locale["tt_who_1daybanbutton"]  , function() Who("1dayban") end)
  NightmareAdmin:PrepareScript(ma_who_permbanbutton    , Locale["tt_who_permbanbutton"]  , function() Who("permban") end)
  NightmareAdmin:PrepareScript(ma_who_jailabutton      , Locale["tt_who_jailabutton"]    , function() Who("jaila") end)
  NightmareAdmin:PrepareScript(ma_who_jailhbutton      , Locale["tt_who_jailhbutton"]    , function() Who("jailh") end)
  NightmareAdmin:PrepareScript(ma_who_unjailbutton      , Locale["tt_who_unjailbutton"]    , function() Who("unjail") end)

end