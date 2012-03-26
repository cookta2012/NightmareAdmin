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

function Return_nlNL()
  return {
    ["slashcmds"] = { "/mangadmin", "/ma" },
    ["lang"] = "Dutch",
    ["realm"] = "|cFF00FF00Realm:|r "..GetCVar("realmName"),
    ["char"] = "|cFF00FF00Char:|r "..UnitName("player"),
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["gridnavigator"] = "Grid-Navigator",
    ["selectionerror1"] = "Selecteer a.u.b. alleen uzelf, een andere speler of niets!",
    ["selectionerror2"] = "Selecteer alleen uzelf of niets!",
    ["selectionerror3"] = "Selecteer alleen een andere speler!",
    ["selectionerror4"] = "Selecteer alleen een NPC!",
    ["searchResults"] = "|cFF00FF00Zoek-Resultaten:|r ",
    ["tabmenu_Main"] = "Hoofd",
    ["tabmenu_Char"] = "Karakter",
    ["tabmenu_Tele"] = "Teleport",
    ["tabmenu_Ticket"] = "Ticketsysteem",
    ["tabmenu_Misc"] = "Overigen",
    ["tabmenu_Server"] = "Server",
    ["tabmenu_Log"] = "Log",
    ["tt_Default"] = "Ga met uw cursor op een object staan voor meer informatie!",
    ["tt_MainButton"] = "Open/Sluit MangAdmins Hoofdvenster.",
    ["tt_CharButton"] = "Open/Sluit het Karaktervenster.",
    ["tt_TeleButton"] = "Open/Sluit het venster met Teleport mogelijkheden.",
    ["tt_TicketButton"] = "Open/Sluit het Ticketvenster die u de tickets laat beheren.",
    ["tt_MiscButton"] = "Open/Sluit het venster met Overige acties.",
    ["tt_ServerButton"] = "Toon verscheidene server opties en mogelijkheden.",
    ["tt_LogButton"] = "Toon het log bestand van alle acties uitgevoerd in MangAdmin.",
    ["tt_LanguageButton"] = "Verander de taal en herlaad MangAdmin.",
    ["tt_GMOnButton"] = "Activeer uw GM-mode.",
    ["tt_GMOffButton"] = "Deactiveer uw GM-mode.",
    ["tt_FlyOnButton"] = "Activateer de vlieg-modus van het geselecteerde karakter.",
    ["tt_FlyOffButton"] = "Deactiveer de vlieg-modus van het geselecteerde karakter.",
    ["tt_HoverOnButton"] = "Activateer uw Zweef-modus.",
    ["tt_HoverOffButton"] = "Deactiveer uw Zweef-modus.",
    ["tt_WhispOnButton"] = "Accepteer fluisteren van andere spelers.",
    ["tt_WhispOffButton"] = "Weiger fluisteren van andere spelers.",
    ["tt_InvisOnButton"] = "Maakt u onzichtbaar.",
    ["tt_InvisOffButton"] = "Maakt u zichtbaar.",
    ["tt_TaxiOnButton"] = "Toon alle vlieg-routes voor de geselecteerde speler, dit werkt tot de speler uitlogt.",
    ["tt_TaxiOffButton"] = "Verberg alle niet ontdekte vlieg-routes voor de geselecteerde speler.",
    ["tt_BankButton"] = "Toon uw bank.",
    ["tt_ScreenButton"] = "Maak een schermafbeelding.",
    ["tt_SpeedSlider"] = "Verhoog of verlaag de snelheid van de geselecteerde speler.",
    ["tt_ScaleSlider"] = "Verhoog of verlaag de grootte van de geselecteerde speler.",
    ["tt_ItemButton"] = "Open/Sluit een pop-up met de functie naar voorwerpen te zoeken en uw favorieten te bewerken.",
    ["tt_ItemSetButton"] = "Open/Sluit een pop-up met de functie naar voorwerpen sets te zoeken en uw favorieten te bewerken.",
    ["tt_SpellButton"] = "Open/Sluit een pop-up met de functie naar spreuken te zoeken en uw favorieten te bewerken.",
    ["tt_QuestButton"] = "Open/Sluit een pop-up met de functie naar Missie's te zoeken en uw favorieten te bewerken.",
    ["tt_CreatureButton"] = "Open/Sluit een pop-up met de functie naar wezens te zoeken en uw favorieten te bewerken.",
    ["tt_ObjectButton"] = "Open/Sluit een pop-up met de functie naar objecten te zoeken en uw favorieten te bewerken.",
    ["tt_SearchDefault"] = "Nu kunt u een zoekterm invullen en beginnen.",
    ["tt_AnnounceButton"] = "Kondig een systeembericht aan.",
    ["tt_KickButton"] = "Kick de geselecteerde speler van de server.",
    ["tt_ShutdownButton"] = "Sluit de server met een vertraging in het aantal seconden dat in het veld staat, als het veld leeg is sluit de server onmiddelijk!",
    ["ma_ItemButton"] = "Voorwerp-Zoeken",
    ["ma_ItemSetButton"] = "Voorwerp Set-Zoeken",
    ["ma_SpellButton"] = "Spreuk-Zoeken",
    ["ma_QuestButton"] = "Missie-Zoeken",
    ["ma_CreatureButton"] = "Wezen-Zoeken",
    ["ma_ObjectButton"] = "Object-Zoeken",
    ["ma_TeleSearchButton"] = "Teleport-Zoeken",
    ["ma_LanguageButton"] = "Verander Taal",
    ["ma_GMOnButton"] = "GM-modus aan",
    ["ma_FlyOnButton"] = "Vlieg-modus aan",
    ["ma_HoverOnButton"] = "Zweef-modus aan",
    ["ma_WhisperOnButton"] = "Fluisteren aan",
    ["ma_InvisOnButton"] = "Onzichtbaarheid aan",
    ["ma_TaxiOnButton"] = "Vliegroutes-cheat aan",
    ["ma_ScreenshotButton"] = "Schermafbeelding",
    ["ma_BankButton"] = "Bank",
    ["ma_OffButton"] = "Uit",
    ["ma_LearnAllButton"] = "Alle spreuken",
    ["ma_LearnCraftsButton"] = "Alle beroepen en recepten",
    ["ma_LearnGMButton"] = "Standaard GM spreuken",
    ["ma_LearnLangButton"] = "Alle Talen",--remove
    ["ma_LearnClassButton"] = "Alle Klasse-Spreuken",
    ["ma_SearchButton"] = "Zoeken...",
    ["ma_ResetButton"] = "Reset",
    ["ma_KickButton"] = "Kick",
    ["ma_KillButton"] = "Dood",
    ["ma_DismountButton"] = "Stap af",
    ["ma_ReviveButton"] = "Breng tot leven",
    ["ma_SaveButton"] = "Opslaan",
    ["ma_AnnounceButton"] = "Kondig aan",
    ["ma_ShutdownButton"] = "Sluit af!",
    ["ma_ItemVar1Button"] = "Hoeveelheid",
    ["ma_ObjectVar1Button"] = "Loot Sjabloon",
    ["ma_ObjectVar2Button"] = "Spawn Tijd",
    ["ma_LoadTicketsButton"] = "Toon Tickets",
    ["ma_GetCharTicketButton"] = "Haal Speler",
    ["ma_GoCharTicketButton"] = "Ga naar Speler",
    ["ma_AnswerButton"] = "Beantwoord",
    ["ma_DeleteButton"] = "Verwijder",
    ["ma_TicketCount"] = "|cFF00FF00Tickets:|r ",
    ["ma_TicketsNoNew"] = "U heeft geen nieuwe tickets.",
    ["ma_TicketsNewNumber"] = "U heeft |cffeda55f%s|r nieuwe tickets!",
    ["ma_TicketsGoLast"] = "Ga naar laatste ticket aanmaker (%s).",
    ["ma_TicketsGetLast"] = "Breng %s naar u.",
    ["ma_IconHint"] = "|cffeda55fKlik|r om MangAdmin te openen. |cffeda55fShift-klik|r om de User Interface te herladen. |cffeda55fAlt-klik|r om de tickets opnieuw te tellen.",
    ["ma_Reload"] = "Herlaad",
    ["ma_LoadMore"] = "Laad meer...",
    ["ma_MailRecipient"] = "Ontvanger",
    ["ma_Mail"] = "Verstuur Post",
    ["ma_Send"] = "Verstuur",
    ["ma_MailSubject"] = "Onderwerp",
    ["ma_MailYourMsg"] = "Uw bericht hier!",
    ["ma_Online"] = "Online",
    ["ma_Offline"] = "Offline",
    ["ma_TicketsInfoPlayer"] = "|cFF00FF00Speler:|r ",
    ["ma_TicketsInfoStatus"] = "|cFF00FF00Status:|r ",
    ["ma_TicketsInfoAccount"] = "|cFF00FF00Account:|r ",
    ["ma_TicketsInfoAccLevel"] = "|cFF00FF00Account-Level:|r ",
    ["ma_TicketsInfoLastIP"] = "|cFF00FF00Laatste IP:|r ",
    ["ma_TicketsInfoPlayedTime"] = "|cFF00FF00Gespeelde tijd:|r ",
    ["ma_TicketsInfoLevel"] = "|cFF00FF00Level:|r ",
    ["ma_TicketsInfoMoney"] = "|cFF00FF00Geld:|r ",
    ["ma_TicketsInfoLatency"] = "|cFF00FF00Vertraging:|r ",
    ["ma_TicketsNoInfo"] = "Geen info beschikbaar",
    ["ma_TicketsNotLoaded"] = "Geen ticket geladen...",
    ["ma_TicketsNoTickets"] = "Geen tickets beschikbaar!",
    ["ma_TicketTicketLoaded"] = "|cFF00FF00Geladen Ticket-Nr:|r %s\n\nSpeler Informatie\n\n",
    ["ma_FavAdd"] = "Voeg geselecteerde toe",
    ["ma_FavRemove"] = "Verwijder geselecteerde",
    ["ma_SelectAllButton"] = "Selecteer alles",
    ["ma_DeselectAllButton"] = "Deselecteer alles",
    ["ma_MailBytesLeft"] = "Bytes over: ",
    ["ma_WeatherFine"] = "Mooi",
    ["ma_WeatherFog"] = "Mist",
    ["ma_WeatherRain"] = "Regen",
    ["ma_WeatherSnow"] = "Sneeuw",
    ["ma_WeatherSand"] = "Zand",
    ["ma_LevelUp"] = "Level omhoog",
    ["ma_LevelDown"] = "Level omlaag",
    ["ma_Money"] = "Geld",
    ["ma_Energy"] = "Energie",
    ["ma_Rage"] = "Woede",
    ["ma_Mana"] = "Mana",
    ["ma_Healthpoints"] = "Healthpoints",
    ["ma_Talents"] = "Talenten",
    ["ma_Stats"] = "Stats",
    ["ma_Spells"] = "Spreuken",
    ["ma_Honor"] = "Eer",
    ["ma_Level"] = "Level",
    ["ma_AllLang"] = "Alle Talen",
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
    ["ma_NoFavorites"] = "Er zijn op het moment geen favorieten ingesteld!",
    ["ma_NoZones"] = "Geen zones!",
    ["ma_NoSubZones"] = "Geen subzones!",
    ["favoriteResults"] = "|cFF00FF00Favorieten:|r ",
    ["Zone"] = "|cFF00FF00Zone:|r ",
    ["tt_DisplayAccountLevel"] = "Toon uw account level",
    ["tt_TicketOn"] = "Kondig nieuwe tickets aan.",
    ["tt_TicketOff"] = "Kondig geen nieuwe tickets aan.",
    ["info_revision"] = "|cFF00FF00MaNGOS Revision:|r ",
    ["info_platform"] = "|cFF00FF00Server Platform:|r ",
    ["info_online"] = "|cFF00FF00Spelers Online:|r ",
    ["info_maxonline"] = "|cFF00FF00Maximaal Online:|r ",
    ["info_uptime"] = "|cFF00FF00Uptime:|r ",
    ["cmd_toggle"] = "Open/Sluit het hoofdvenster",
    ["cmd_transparency"] = "Wissel tussen the standaard doorzichtigheid (0.5 or 1.0)",
    ["cmd_tooltip"] = "Zet knoppen tooltips aan of uit.",
    ["tt_SkillButton"] = "Open/Sluit een pop-up met de functie om naar skills te zoeken en uw favorieten te bewerken.",
    ["tt_RotateLeft"] = "Draai naar Links.",
    ["tt_RotateRight"] = "Draai naar Rechts.",
    ["tt_FrmTrSlider"] = "Wijzig frame doorzichtigheid.",
    ["tt_BtnTrSlider"] = "Wijzig knop doorzichtigheid.",
    ["ma_SkillButton"] = "Skills-Zoeken",
    ["ma_SkillVar1Button"] = "Skill",
    ["ma_SkillVar2Button"] = "Verhoog Skill",
    ["tt_DisplayAccountLvl"] = "Toon uw account level.",
    --linkifier
    ["lfer_Spawn"] = "Spawn",
    ["lfer_List"] = "Lijst",
    ["lfer_Goto"] = "Go naar",
    ["lfer_Move"] = "Verplaats",
    ["lfer_Turn"] = "Draai",
    ["lfer_Delete"] = "Verwijder",
    ["lfer_Teleport"] = "Teleporteer",
    ["lfer_Morph"] = "Verander",
    ["lfer_Add"] = "Voeg toe",
    ["lfer_Remove"] = "Haal weg",
    ["lfer_Learn"] = "Leer",
    ["lfer_Unlearn"] = "Vergeet",
    ["lfer_Error"] = "Fout Zoek String kwam overeen maar fout tijdens het laden van object, misschien bestaat het niet."
  }
end