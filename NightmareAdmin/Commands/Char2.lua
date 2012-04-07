-------------------------------------------------------------------------------------------------------------
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
function BanButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".ban "..cname)
  NightmareAdmin:LogAction("Banned player: "..cname..".")

end

function GoNameButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".appear "..cname)
  NightmareAdmin:LogAction("Teleported TO player: "..cname..".")

end

function CreateGuildButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".guild create "..cname)
  NightmareAdmin:LogAction("Created Guild: "..cname..".")

end

function BanInfoButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".baninfo "..cname)
  NightmareAdmin:LogAction("Listed .baninfo: "..cname..".")

end

function GroupGoButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".groupsummon "..cname)
  NightmareAdmin:LogAction("Teleported "..cname.." and his/her group TO me.")

end

function GuildInviteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".guild invite "..cname)
  NightmareAdmin:LogAction("Guild invitation: "..cname..".")

end

function BanlistButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".banlist "..cname)
  NightmareAdmin:LogAction("Listed bans matching: "..cname..".")

end

function NameGoButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".summon "..cname)
  NightmareAdmin:LogAction("Teleported "..cname.." TO me.")

end

function GuildRankButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".guild rank "..cname)
  NightmareAdmin:LogAction("Guild rank change: "..cname..".")

end

function TeleGroupButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".tele group "..cname)
  NightmareAdmin:LogAction("Group teleported: "..cname..".")

end

function UnBanButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".unban "..cname)
  NightmareAdmin:LogAction("Unbanned "..cname..".")

end

function GuildDeleteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".guild delete "..cname)
  NightmareAdmin:LogAction("Deleted guild: "..cname..".")

end

function GuildUninviteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".guild uninvite "..cname)
  NightmareAdmin:LogAction("Removed from guild: "..cname..".")

end

function TeleNameButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
    self:ChatMsg(".tele name "..cname)
    self:LogAction("Teleported: "..cname..".")

end

function MuteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".mute "..cname)
  NightmareAdmin:LogAction("Muted "..cname..".")

end

function CharMorphButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".modify morph "..cname)
  NightmareAdmin:LogAction(".modify morph "..cname..".")

end

function CharAuraButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".aura "..cname)
  NightmareAdmin:LogAction(".aura "..cname..".")

end

function CharUnAuraButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".unaura "..cname)
  NightmareAdmin:LogAction(".unaura "..cname..".")

end

function JailA()
    cname=ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".tele name "..cname.." ma_AllianceJail")
    NightmareAdmin:LogAction("Jailed player "..cname..".")
    NightmareAdmin:ChatMsg(".notify "..cname.." has been found guilty and jailed.")
end

function JailH()
    cname=ma_charactertarget:GetText()
    --self:ChatMsg("Selected "..cname)
    NightmareAdmin:ChatMsg(".tele name "..cname.." ma_HordeJail")
    NightmareAdmin:LogAction("Jailed player "..cname..".")
    NightmareAdmin:ChatMsg(".notify "..cname.." has been found guilty and jailed.")
end

function UnJail()
    cname=ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".recall "..cname)
    NightmareAdmin:LogAction("UnJailed player "..cname..".")
    NightmareAdmin:ChatMsg(".notify "..cname.." has been pardoned and released from jail.")
end

function UnMuteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".unmute "..cname)
  NightmareAdmin:LogAction(".unmute "..cname..".")

end

function QuestAddButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".quest add "..cname)
  NightmareAdmin:LogAction(".quest add "..cname..".")

end

function QuestCompleteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".quest complete "..cname)
  NightmareAdmin:LogAction(".quest complete "..cname..".")

end

function QuestRemoveButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".quest remove "..cname)
  NightmareAdmin:LogAction(".quest remove "..cname..".")

end

function DamageButton ()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".damage "..cname)
  NightmareAdmin:LogAction(".damage "..cname..".")

end

function HideAreaButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".hidearea "..cname)
  NightmareAdmin:LogAction(".hidearea "..cname..".")
end

function ShowAreaButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".showarea "..cname)
  NightmareAdmin:LogAction(".showarea "..cname..".")
end

function HonorAddButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".honor add "..cname)
  NightmareAdmin:LogAction(".honor add "..cname..".")
end

function HonorUpdateButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  NightmareAdmin:ChatMsg(".honor update ")
  NightmareAdmin:LogAction(".honor update.")
end

