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

function Return_itIT() 
  return {
    ["slashcmds"] = { "/NightmareAdmin", "/na" },
    ["lang"] = "Italian",
    ["realm"] = "|cFF00FF00Realm:|r "..GetCVar("realmName"),
    ["char"] = "|cFF00FF00Char:|r "..UnitName("player"),
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["gridnavigator"] = "Grid-Navigator",
    ["selectionerror1"] = "Seleziona te stesso o un altro player o nulla!",
    ["selectionerror2"] = "Seleziona solo te stesso o nulla!",
    ["selectionerror3"] = "Seleziona solo un altro player!",
    ["selectionerror4"] = "Seleziona solo un NPC!",
    ["searchResults"] = "|cFF00FF00Risultati-Ricerca:|r ",
    ["tabmenu_Main"] = "Generale",
    ["tabmenu_Char"] = "Personaggio",
    ["tabmenu_Tele"] = "Teletrasporto",
    ["tabmenu_Ticket"] = "Ticket System",
    ["tabmenu_Misc"] = "Varie",
    ["tabmenu_Server"] = "Server",
    ["tabmenu_Log"] = "Log",
    ["tt_Default"] = "Sposta il mouse su di un elemento per visualizzarne la descrizione!",
    ["tt_MainButton"] = "Clicca per attivare/disattivare la finestra di NightmareAdmin.",
    ["tt_CharButton"] = "Clicca per attivare/disattivare una finestra con azioni relative al Personaggio.",
    ["tt_TeleButton"] = "Clicca per attivare/disattivare una finestra con i controlli teletrasporto.",
    ["tt_TicketButton"] = "Clicca per attivare/disattivare una finestra con la lettura e l'amministrazione dei Tickets.",
    ["tt_MiscButton"] = "Clicca per attivare/disattivare una finestra con varie azioni.",
    ["tt_ServerButton"] = "Clicca questo pulsante per mostrare info sul Server e per interagire con esso.",
    ["tt_LogButton"] = "Clicca questo pulsante per mostrare il Log delle azioni fatte con NightmareAdmin.",
    ["tt_LanguageButton"] = "Clicca questo pulsante per cambiare la Lingua e ricaricare NightmareAdmin.",
    ["tt_GMOnButton"] = "Clicca per attivare la tua modalit\195\160 GM (GM-ON).",
    ["tt_GMOffButton"] = "Clicca per disattivare la tua modalit\195\160 GM (GM-OFF).",
    ["tt_FlyOnButton"] = "Clicca per attivare la modalit\195\160 Volo per il personaggio selezionato.",
    ["tt_FlyOffButton"] = "Clicca per disattivare la modalit\195\160 Volo per il personaggio selezionato.",
    ["tt_HoverOnButton"] = "Clicca per attivare la tua modalit\195\160 Hover.",
    ["tt_HoverOffButton"] = "Clicca per disattivare la tua modalit\195\160 Hover.",
    ["tt_WhispOnButton"] = "Clicca per accettare Whispers da altri players.",
    ["tt_WhispOffButton"] = "Clicca per non accettare Whispers da altri players.",
    ["tt_InvisOnButton"] = "Clicca per diventare invisibile.",
    ["tt_InvisOffButton"] = "Clicca per diventare visibile.",
    ["tt_TaxiOnButton"] = "Clicca per sbloccare tutti percorsi-taxi per il player selezionato. Questa cheat durer\195\160 fino al logout.",
    ["tt_TaxiOffButton"] = "Clicca per disattivare la taxi-cheat e far tornare tutto come prima.",
    ["tt_BankButton"] = "Clicca per visualizzare la tua banca.",
    ["tt_ScreenButton"] = "Clicca per fare uno ScreenShot.",
    ["tt_SpeedSlider"] = "Scorri questa barra per aumentare/ridurre la Velocit\195\160 per il Personaggio selezionato.",
    ["tt_ScaleSlider"] = "Scorri questa barra per aumentare/ridurre la Dimensione per il Personaggio selezionato.",
    ["tt_ItemButton"] = "Clicca questo pulsante per attivare/disattivare un popup con la funzione di ricerca degli Items e per gestire i tuoi preferiti.",
    ["tt_ItemSetButton"] = "Clicca per attivare/disattivare un popup con la funzione di ricerca degli ItemSet e per gestire i tuoi preferiti.",
    ["tt_SpellButton"] = "Clicca questo pulsante per attivare/disattivare un popup con la funzione di ricerca delle Spells e per gestire le tue preferite.",
    ["tt_QuestButton"] = "Clicca per attivare/disattivare un popup con la funzione di ricerca delle Quest e per gestire le tue preferite.",
    ["tt_CreatureButton"] = "Clicca per attivare/disattivare un popup con la funzione di ricerca delle Creature e per gestire le tue preferite.",
    ["tt_ObjectButton"] = "Clicca per attivare/disattivare un popup con la funzione di ricerca dei GameObject e per gestire i tuoi preferiti.",
    ["tt_SearchDefault"] = "Ora puoi inserire una parola chiave ed iniziare la ricerca.",
    ["tt_AnnounceButton"] = "Clicca per annunciare un System Message.",
    ["tt_KickButton"] = "Clicca per kickare il Personaggio selezionato dal Server.",
    ["tt_ShutdownButton"] = "Clicca per eseguire uno Shutdown del Server nell'ammontare di secondi inseriti nel campo (se omesso, lo Shutdown sar\195\160 immediato!).",
    ["ma_ItemButton"] = "Items",
    ["ma_ItemSetButton"] = "Ricerca-ItemSet",
    ["ma_SpellButton"] = "Spells",
    ["ma_QuestButton"] = "Ricerca-Quest",
    ["ma_CreatureButton"] = "Ricerca-Creature",
    ["ma_ObjectButton"] = "Ricerca-GObject",
    ["ma_TeleSearchButton"] = "Teleport-Search",
    ["ma_LanguageButton"] = "Cambia Lingua",
    ["ma_GMOnButton"] = "GM-ON",
    ["ma_FlyOnButton"] = "Volo ON",
    ["ma_HoverOnButton"] = "Hover ON",
    ["ma_WhisperOnButton"] = "Whisper ON",
    ["ma_InvisOnButton"] = "Invisibility ON",
    ["ma_TaxiOnButton"] = "Taxicheat oON",    
    ["ma_ScreenshotButton"] = "ScreenShot",
    ["ma_BankButton"] = "Banca",
    ["ma_OffButton"] = "OFF",
    ["ma_LearnAllButton"] = "Tutte le spells",
    ["ma_LearnCraftsButton"] = "Tutte le Professioni e Recipes",
    ["ma_LearnGMButton"] = "Spells per GM",
    ["ma_LearnLangButton"] = "Tutte le lingue",
    ["ma_LearnClassButton"] = "Tutte le Spells di classe",
    ["ma_SearchButton"] = "Cerca...",
    ["ma_ResetButton"] = "Reset",
    ["ma_KickButton"] = "Kick",
    ["ma_KillButton"] = "Kill",
    ["ma_DismountButton"] = "Dismount",
    ["ma_ReviveButton"] = "Risorgi",
    ["ma_SaveButton"] = "Save",
    ["ma_AnnounceButton"] = "Announce",
    ["ma_ShutdownButton"] = "Shutdown!",
    ["ma_ItemVar1Button"] = "Ammontare",
    ["ma_ObjectVar1Button"] = "Loot Template",
    ["ma_ObjectVar2Button"] = "Tempo di Spawn",
    ["ma_LoadTicketsButton"] = "Mostra Ticket",
    ["ma_GetCharTicketButton"] = "Evoca Player",
    ["ma_GoCharTicketButton"] = "Vai dal Player",
    ["ma_AnswerButton"] = "Rispondi",
    ["ma_DeleteButton"] = "Elimina",
    ["ma_TicketCount"] = "|cFF00FF00Ticket:|r ",
    ["ma_TicketsNoNew"] = "Non hai nuovi ticket.",
    ["ma_TicketsNewNumber"] = "Hai |cffeda55f%s|r nuovi Ticket!",
    ["ma_TicketsGoLast"] = "Vai all'ultimo ticket creatore (%s).",
    ["ma_TicketsGetLast"] = "Porta %s da te.",
    ["ma_IconHint"] = "|cffeda55fClicca|r per aprire NightmareAdmin. |cffeda55fShift-Clicca|r per ricaricare l'interfaccia di gioco. |cffeda55fAlt-Clicca|r per resettare il contatore di ticket.",
    ["ma_Reload"] = "Ricarica",
    ["ma_LoadMore"] = "Carica altri...",
    ["ma_MailRecipient"] = "Recipiente",
    ["ma_Mail"] = "Invia una Mail",
    ["ma_Send"] = "Invia",
    ["ma_MailSubject"] = "Soggetto",
    ["ma_MailYourMsg"] = "Qui il tuo messaggio!",
    ["ma_Online"] = "Online",
    ["ma_Offline"] = "Offline",
    ["ma_TicketsInfoPlayer"] = "|cFF00FF00Player:|r ",
    ["ma_TicketsInfoStatus"] = "|cFF00FF00Status:|r ",
    ["ma_TicketsInfoAccount"] = "|cFF00FF00Account:|r ",
    ["ma_TicketsInfoAccLevel"] = "|cFF00FF00Livello-Account(Plevel):|r ",
    ["ma_TicketsInfoLastIP"] = "|cFF00FF00Ultimo IP:|r ",
    ["ma_TicketsInfoPlayedTime"] = "|cFF00FF00Tempo giocato:|r ",
    ["ma_TicketsInfoLevel"] = "|cFF00FF00Livello:|r ",
    ["ma_TicketsInfoMoney"] = "|cFF00FF00Denaro:|r ",
    ["ma_TicketsInfoLatency"] = "|cFF00FF00Latency:|r ",
    ["ma_TicketsNoInfo"] = "Nessuna informazione ticket disponibile...",
    ["ma_TicketsNotLoaded"] = "Nessun ticket caricato...",
    ["ma_TicketsNoTickets"] = "Non ci sonon ticket disponibili!",
    ["ma_TicketTicketLoaded"] = "|cFF00FF00Caricato il Ticket numero:|r %s\n\nInformazioni Player\n\n",
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
    ["info_revision"] = "|cFF00FF00Descent Revision:|r ",
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
