﻿-------------------------------------------------------------------------------------------------------------
--
-- TrinityAdmin Version 3.x
-- TrinityAdmin is a derivative of MangAdmin.
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
-- Official Forums: http://groups.google.com/group/trinityadmin
-- GoogleCode Website: http://code.google.com/p/trinityadmin/
-- Subversion Repository: http://trinityadmin.googlecode.com/svn/
-- Dev Blog: http://trinityadmin.blogspot.com/
-------------------------------------------------------------------------------------------------------------

function Return_roRO()
  return {
    ["slashcmds"] = { "/mangadmin", "/ma" },
    ["lang"] = "Romanian",
    ["realm"] = "|cFF00FF00Realm:|r "..GetCVar("realmName"),
    ["char"] = "|cFF00FF00Char:|r "..UnitName("player"),
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["gridnavigator"] = "Grid-Navigator",
    ["selectionerror1"] = "Selecteaza-te pe tine sau alt jucator sau nimic!",
    ["selectionerror2"] = "Selecteaza-te pe tine sau nimic!",
    ["selectionerror3"] = "Selecteaza doar un alt jucator!",
    ["selectionerror4"] = "Selecteaza doar un NPC!",
    ["searchResults"] = "|cFF00FF00Rezultatele cautarii:|r ",
    ["tabmenu_Main"] = "Meniu principal",
    ["tabmenu_Char"] = "Caracter",
    ["tabmenu_Tele"] = "Teleportare",
    ["tabmenu_Ticket"] = "Ticketsystem",
    ["tabmenu_Misc"] = "Diverse optiuni",
    ["tabmenu_Server"] = "Server",
    ["tabmenu_Log"] = "Istorie",
    ["tt_Default"] = "Misca cursorul deasupra unui element pentru a afla mai multe informatii!",
    ["tt_MainButton"] = "Apasa aici pentru a activa Fereastra principala MangAdmin.",
    ["tt_CharButton"] = "Apasa pentru a activa o fereastra cu diferite actiuni specifice caracterului.",
    ["tt_TeleButton"] = "Apasa pentru a activa o fereastra cu functii de teleportare.",
    ["tt_TicketButton"] = "Apasa pentru a activa o fereastra care arata toate ticketele si iti permite sa le administrezi.",
    ["tt_MiscButton"] = "Apasa pentru a activa o fereastra cu diferite optiuni.",
    ["tt_ServerButton"] = "Apasa acest buton pentru a arata anumite informatii si actiuni despre server.",
    ["tt_LogButton"] = "Apasa acest buton pentru a arata arhiva cu actiunile desfasurate cu MangAdmin.",
    ["tt_LanguageButton"] = "Apasa acest buton pentru a schimba limba si pentru a reincarca MangAdmin.",
    ["tt_GMOnButton"] = "Apasa pentru a a activa Modul-GM.",
    ["tt_GMOffButton"] = "Apasa pentru a dezactiva Modul-GM.",
    ["tt_FlyOnButton"] = "Apasa pentru a activa modul Zburator al caracterului selectat.",
    ["tt_FlyOffButton"] = "Apasa pentru a dezactiva modul Zburator al caracterului selectat.",
    ["tt_HoverOnButton"] = "Apasa pentru a activa modul Hoover.",
    ["tt_HoverOffButton"] = "Apasa pentru a dezactiva modul Hoover.",
    ["tt_WhispOnButton"] = "Apasa pentru a primi mesaje de la alti jucatori.",
    ["tt_WhispOffButton"] = "Apasa pentru a nu primi mesaje de la alti jucatori.",
    ["tt_InvisOnButton"] = "Apasa pentru a fi invizibil.",
    ["tt_InvisOffButton"] = "Apasa pentru a fi vizibil.",
    ["tt_TaxiOnButton"] = "Apasa pentru a vedea toate rutele care le are jucatorul selectat.Acest cheat va fi dezactivat la logout.",
    ["tt_TaxiOffButton"] = "Apasa pentru a dezactiva taxi-cheat si pentru a reveni la rutele cunoscute.",
    ["tt_BankButton"] = "Apasa pentru a vedea banca ta.",
    ["tt_ScreenButton"] = "Apasa pentru a creea un screenshot.",
    ["tt_SpeedSlider"] = "Misca aceasta bara in stanga sau in dreapta pentru a mari sau a micsora viteza caracterului selectat.",
    ["tt_ScaleSlider"] = "Misca aceasta bara in stanga sau in dreapta pentru a mari sau a micsora marimea caracterului selectat.",
    ["tt_ItemButton"] = "Apasa acest buton pentru a activa o noua fereastra care va avea rolul de a cauta iteme noi sau de a le menaja pe cele deja existente.",
    ["tt_ItemSetButton"] = "Apasa acest buton pentru a activa o noua fereastra care va avea rolul de a cauta un set de iteme sau de a le menaja pe cele deja existente.",
    ["tt_SpellButton"] = "Apasa acest buton pentru a activa o noua fereastra ceva va avea rolul de a cauta spell-uri noi sau de a le menaja pe cele deja existente.",
    ["tt_SearchDefault"] = "Acum poti introduce un cuvant pentru a porni cautarea.",
    ["tt_QuestButton"] = "Apasa acest buton pentru a activa o noua fereastra care va avea rolul de a cauta un quest sau de a le menaja pe cele deja existente.",
    ["tt_CreatureButton"] = "Apasa acest buton pentru a activa o noua fereastra care va avea rolul de a cauta o creatura sau de a le menaja pe cele deja existente.",
    ["tt_ObjectButton"] = "Apasa acest buton pentru a activa o noua fereastra care va avea rolul de a cauta un obiect sau de a le menaja pe cele deja existente.",
    ["tt_AnnounceButton"] = "Apasa pentru a anunta un mesaj pe server.",
    ["tt_KickButton"] = "Apasa pentru a da kick acelui jucator de pe server",
    ["tt_ShutdownButton"] = "Apasa pentru a opri serverul in secundele mentionate, daca valoarea este 0 sau nici una,serverul se va opri imediat!",
    ["ma_ItemButton"] = "Iteme",
    ["ma_ItemSetButton"] = "Cauta items-set",
    ["ma_SpellButton"] = "Spell-uri",
    ["ma_QuestButton"] = "Cauta quest",
    ["ma_CreatureButton"] = "Cauta creatura",
    ["ma_ObjectButton"] = "Object-Search",
    ["ma_TeleSearchButton"] = "Teleport-Search",
    ["ma_LanguageButton"] = "Schimba limba",
    ["ma_GMOnButton"] = "GM-mode pornit",
    ["ma_FlyOnButton"] = "Fly-mod pornit",
    ["ma_HoverOnButton"] = "Mod-hoover pornit",
    ["ma_WhisperOnButton"] = "Whisper pornit",
    ["ma_InvisOnButton"] = "Invisibilitate pornit",
    ["ma_TaxiOnButton"] = "Taxicheat pornit",    
    ["ma_ScreenshotButton"] = "Screenshot",
    ["ma_BankButton"] = "Banca",
    ["ma_OffButton"] = "Oprit",
    ["ma_LearnAllButton"] = "Toate spellurile",
    ["ma_LearnCraftsButton"] = "Toate profesiile si derivate",
    ["ma_LearnGMButton"] = "Spellurile de GM",
    ["ma_LearnLangButton"] = "Toate limbile",
    ["ma_LearnClassButton"] = "Toate class-spellurile",
    ["ma_SearchButton"] = "Cauta...",
    ["ma_ResetButton"] = "Reset",
    ["ma_KickButton"] = "Kick",
    ["ma_KillButton"] = "Omoara",
    ["ma_DismountButton"] = "Dismount",
    ["ma_ReviveButton"] = "Reinvie",
    ["ma_SaveButton"] = "Salveaza",
    ["ma_AnnounceButton"] = "Anunta",
    ["ma_ShutdownButton"] = "Opreste!",
    ["ma_ItemVar1Button"] = "Valoare",
    ["ma_ObjectVar1Button"] = "Tabela de loot",
    ["ma_ObjectVar2Button"] = "Timpul de spawm",
    ["ma_LoadTicketsButton"] = "Arata tickete",
    ["ma_GetCharTicketButton"] = "Adu jucator",
    ["ma_GoCharTicketButton"] = "Dute la jucator",
    ["ma_AnswerButton"] = "Raspunde",
    ["ma_DeleteButton"] = "Sterge",
    ["ma_TicketCount"] = "|cFF00FF00Tickets:|r ",
    ["ma_TicketsNoNew"] = "Nu ai nici un ticket.",
    ["ma_TicketsNewNumber"] = "Ai tickete |cffeda55f%s|r noi!",
    ["ma_TicketsGoLast"] = "Dute la ultimul creator de ticket (%s).",
    ["ma_TicketsGetLast"] = "Bring %s to you.",
    ["ma_IconHint"] = "|cffeda55fClick|r pentru a deschide MangAdmin. |cffeda55fShift-Click|r pentru a reincarca interfata. |cffeda55fAlt-Click|r pentru a reseta numarul de tickete.",
    ["ma_Reload"] = "Reincarca",
    ["ma_LoadMore"] = "Incarca mai mult...",
    ["ma_MailRecipient"] = "Recipient",
    ["ma_Mail"] = "Trimite un Mail",
    ["ma_Send"] = "Trimite",
    ["ma_MailSubject"] = "Subiect",
    ["ma_MailYourMsg"] = "Mesajul tau aici!",
    ["ma_Online"] = "Online",
    ["ma_Offline"] = "Offline",
    ["ma_TicketsInfoPlayer"] = "|cFF00FF00Jucator:|r ",
    ["ma_TicketsInfoStatus"] = "|cFF00FF00Status:|r ",
    ["ma_TicketsInfoAccount"] = "|cFF00FF00Cont:|r ",
    ["ma_TicketsInfoAccLevel"] = "|cFF00FF00Levelul contului:|r ",
    ["ma_TicketsInfoLastIP"] = "|cFF00FF00Ultimul IP accesat:|r ",
    ["ma_TicketsInfoPlayedTime"] = "|cFF00FF00Timpul jucatorului:|r ",
    ["ma_TicketsInfoLevel"] = "|cFF00FF00Level:|r ",
    ["ma_TicketsInfoMoney"] = "|cFF00FF00Bani:|r ",
    ["ma_TicketsInfoLatency"] = "|cFF00FF00Latency:|r ",
    ["ma_TicketsNoInfo"] = "Nici o informatie despre ticket...",
    ["ma_TicketsNotLoaded"] = "Nici un ticket incarcat...",
    ["ma_TicketsNoTickets"] = "Nu mai sunt tickete disponibile!",
    ["ma_TicketTicketLoaded"] = "|cFF00FF00Loaded Ticket-Nr:|r %s\n\nPlayer Information\n\n",
    ["ma_FavAdd"] = "Add selected",
    ["ma_FavRemove"] = "Remove selected",
    ["ma_SelectAllButton"] = "Select all",
    ["ma_DeselectAllButton"] = "Deselect all",
    ["ma_MailBytesLeft"] = "Bytes left: ",
    ["ma_WeatherFine"] = "Fine",
    ["ma_WeatherFog"] = "Fog",
    ["ma_WeatherRain"] = "Rain",
    ["ma_WeatherSnow"] = "Snow",
    ["ma_WeatherSand"] = "Sand",
    ["ma_LevelUp"] = "Level up",
    ["ma_LevelDown"] = "Level down",
    ["ma_Money"] = "Money",
    ["ma_Energy"] = "Energy",
    ["ma_Rage"] = "Rage",
    ["ma_Mana"] = "Mana",
    ["ma_Healthpoints"] = "Healthpoints",
    ["ma_Talents"] = "Talents",
    ["ma_Stats"] = "Stats",
    ["ma_Spells"] = "Spells",
    ["ma_Honor"] = "Honor",
    ["ma_Level"] = "Level",
    ["ma_AllLang"] = "All Languages",
    -- languages
    ["Common"] = "Common",
    ["Orcish"] = "Orcish",
    ["Taurahe"] = "Taurahe",
    ["Darnassian"] = "Darnassian",
    ["Dwarvish"] = "Dwarvish",
    ["Thalassian"] = "Thalassian",
    ["Demonic"] = "Demonic",
    ["Draconic"] = "Draconic",
    ["Titan"] = "Titan",
    ["Kalimag"] = "Kalimag",
    ["Gnomish"] = "Gnomish",
    ["Troll"] = "Troll",
    ["Gutterspeak"] = "Gutterspeak",
    ["Draenei"] = "Draenei",
    ["ma_NoFavorites"] = "There are currently no saved favorites!",
    ["ma_NoZones"] = "No zones!",
    ["ma_NoSubZones"] = "No subzones!",
    ["favoriteResults"] = "|cFF00FF00Favorites:|r ",
    ["Zone"] = "|cFF00FF00Zone:|r ",
    ["tt_DisplayAccountLevel"] = "Display your account level",
    ["tt_TicketOn"] = "Announce new tickets.",
    ["tt_TicketOff"] = "Don't announce new tickets.",
    ["info_revision"] = "|cFF00FF00MaNGOS Revision:|r ",
    ["info_platform"] = "|cFF00FF00Server Platform:|r ",
    ["info_online"] = "|cFF00FF00Players Online:|r ",
    ["info_maxonline"] = "|cFF00FF00Maximum Online:|r ",
    ["info_uptime"] = "|cFF00FF00Uptime:|r ",
    ["cmd_toggle"] = "Toggle the main window",
    ["cmd_transparency"] = "Toggle the basic transparency (0.5 or 1.0)",
    ["cmd_tooltip"] = "Toggle wether the button tooltips are shown or not",
    ["tt_SkillButton"] = "Toggle a popup with the function to search for skills and manage your favorites.",
    ["tt_RotateLeft"] = "Rotate left.",
    ["tt_RotateRight"] = "Rotate right.",
    ["tt_FrmTrSlider"] = "Change frame transparency.",
    ["tt_BtnTrSlider"] = "Change button transparency.",
    ["ma_SkillButton"] = "Skill-Search",
    ["ma_SkillVar1Button"] = "Skill",
    ["ma_SkillVar2Button"] = "Max Skill",
    ["tt_DisplayAccountLvl"] = "Display your account level.",
    --linkifier
    ["lfer_Spawn"] = "Spawn",
    ["lfer_List"] = "List",
    ["lfer_Goto"] = "Goto",
    ["lfer_Move"] = "Move",
    ["lfer_Turn"] = "Turn",
    ["lfer_Delete"] = "Delete",
    ["lfer_Teleport"] = "Teleport",
    ["lfer_Morph"] = "Morph",
    ["lfer_Add"] = "Add",
    ["lfer_Remove"] = "Remove",
    ["lfer_Learn"] = "Learn",
    ["lfer_Unlearn"] = "Unlearn",
    ["lfer_Error"] = "Error Search String Matched but an error occured or unable to find type"
  }
end
