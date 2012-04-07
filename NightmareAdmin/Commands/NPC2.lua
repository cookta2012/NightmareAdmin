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

function NPCFreeze()
    local player = UnitName("target") or UnitName("player") 
    NightmareAdmin:ChatMsg(".npc set movetype stay NODEL")          
    NightmareAdmin:LogAction("Set NPC movement to STAY for player "..player..".")
end

function NPCFreezeDEL()
    local player = UnitName("target") or UnitName("player") 
    NightmareAdmin:ChatMsg(".npc set movetype stay")          
    NightmareAdmin:LogAction("Set NPC movement to STAY for player "..player..".")
end

function WayEndAdd()                            
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".wp add")
    NightmareAdmin:LogAction("WayPoint Add for player "..player..".")
end

function NPCAdd_Way()                            
    local player = UnitName("target") or UnitName("player")
    local npc =	ma_NPC_guidbutton:GetText()
    NightmareAdmin:ChatMsg(".wp add "..npc) 
    --NightmareAdmin:Way_Point_Add_Start_Write(1)
    NightmareAdmin:ChatMsg(".wp show on "..npc)
    NightmareAdmin:LogAction("WayPoint Add for player "..player..".")
end

function WayModifyAdd()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".wp modify add")
    NightmareAdmin:LogAction("WayPoint(Modify) Add for player "..player..".")
end

function WayModifyDel()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".wp modify del")
    NightmareAdmin:LogAction("WayPoint(Modify) Del for player "..player..".")
end

function NPCAdd_WayShowOn()                            
    local player = UnitName("target") or UnitName("player")
    local npc =	ma_NPC_guidbutton:GetText()
    NightmareAdmin:ChatMsg(".wp show on "..npc)
    NightmareAdmin:LogAction("WayPoint Show On for player "..player..".")
end

function WayShowOn()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".wp show on")
    NightmareAdmin:LogAction("WayPoint Show On for player "..player..".")
end

function WayShowOff()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".wp show off")
    NightmareAdmin:LogAction("WayPoint Show Off for player "..player..".")
end

function NPCUnFreeze_Way()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".npc set movetype way NODEL")
    NightmareAdmin:LogAction("Set NPC movement type to WAYPOINT for player "..player..".")
end

function NPCUnFreeze_Random()
    local player = UnitName("target") or UnitName("player")
    local rdistancecname = ma_npcunfreeze_random_distancebutton:GetText()
    NightmareAdmin:ChatMsg(".npc set spawndist "..rdistancecname)
    NightmareAdmin:LogAction("Set NPC spawndist "..rdistancecname..".")
    NightmareAdmin:ChatMsg(".npc setm ovetype random NODEL")
    NightmareAdmin:LogAction("Set NPC movement type to RANDOM for player "..player..".")
    NightmareAdmin:ChatMsg(".respawn")
    
end

function ShowMove()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".movegens")
    NightmareAdmin:LogAction("Got Movement Stack for player "..player..".")
end

