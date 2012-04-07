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

function ModelRotateLeft()
  ma_modelframe.rotation = ma_modelframe.rotation - 0.03
  ma_modelframe:SetRotation(ma_modelframe.rotation)
  PlaySound("igInventoryRotateCharacter")
end

function ModelRotateRight()
  ma_modelframe.rotation = ma_modelframe.rotation + 0.03
  ma_modelframe:SetRotation(ma_modelframe.rotation)
  PlaySound("igInventoryRotateCharacter")
end

function InitModelFrame()
  ma_modelframe:SetScript("OnUpdate", function() NightmareAdminModelOnUpdate(arg1) end)
  ma_modelframe.rotation = 0.61;
  ma_modelframe:SetRotation(ma_modelframe.rotation)
  ma_modelframe:SetUnit("player") 
  
end  
 
 

function NightmareAdminModelOnUpdate(elapsedTime)
  if ( ma_modelrotatelbutton:GetButtonState() == "PUSHED" ) then
    this.rotation = this.rotation + (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND)
    if ( this.rotation < 0 ) then
      this.rotation = this.rotation + (2 * PI)
    end
    this:SetRotation(this.rotation);
  end
  if ( ma_modelrotaterbutton:GetButtonState() == "PUSHED" ) then
    this.rotation = this.rotation - (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND)
    if ( this.rotation > (2 * PI) ) then
      this.rotation = this.rotation - (2 * PI)
    end
    this:SetRotation(this.rotation);
  end
end

function ModelChanged()
  if not NightmareAdmin:Selection("none") then
    ma_modelframe:SetUnit("target")
  else
    ma_modelframe:SetUnit("player")
  end
  ma_modelframe:RefreshUnit()
end

function RevivePlayer()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".revive")
    NightmareAdmin:LogAction("Revived player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function SavePlayer()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".save")
    NightmareAdmin:LogAction("Saved player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function KickPlayer()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".kick")
    NightmareAdmin:LogAction("Kicked player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function Cooldown()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".cooldown")
    NightmareAdmin:LogAction("Cooled player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function ShowGUID()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".guid")
    NightmareAdmin:LogAction("Got GUID for player "..player..".")
end

function Pinfo()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".pinfo")
    NightmareAdmin:LogAction("Got Player Info for player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function Distance()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".distance")
    NightmareAdmin:LogAction("Got distance to player "..player..".")
end

function Recall()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".recall")
    NightmareAdmin:LogAction("Recalled player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function Demorph()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".demorph")
    NightmareAdmin:LogAction("Demorphed player "..player..".")
end

function ToggleMapsChar(value)
  NightmareAdmin:ChatMsg(".explorecheat "..value)
  if value == 1 then
    NightmareAdmin:LogAction("Revealed all maps for selected player.")
  else
    NightmareAdmin:LogAction("Hide all unexplored maps for selected player.")
  end
end

function GPS()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".gps")
    NightmareAdmin:LogAction("Got GPS coordinates for player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function LearnSpell(value, state)
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    local class = UnitClass("target") or UnitClass("player")
    local command = ".learn"
    local logcmd = "Learned"
    if state == "RightButton" then
      command = ".unlearn"
      logcmd = "Unlearned"
    end
    if type(value) == "string" then
      if value == "all" then
        NightmareAdmin:ChatMsg(command.." all")
        NightmareAdmin:LogAction(logcmd.." all spells to "..player..".")
      elseif value == "all_crafts" then
        NightmareAdmin:ChatMsg(command.." all_crafts")
        NightmareAdmin:LogAction(logcmd.." all professions and recipes to "..player..".")
      elseif value == "all_gm" then
        NightmareAdmin:ChatMsg(command.." all_gm")
        NightmareAdmin:LogAction(logcmd.." all default spells for Game Masters to "..player..".")
      elseif value == "all_lang" then
        NightmareAdmin:ChatMsg(command.." all_lang")
        NightmareAdmin:LogAction(logcmd.." all languages to "..player..".")
      elseif value == "all_myclass" then
        NightmareAdmin:ChatMsg(command.." all_myclass")
        NightmareAdmin:LogAction(logcmd.." all spells available to the "..class.."-class to "..player..".")
      else
        NightmareAdmin:ChatMsg(command.." "..value)
        NightmareAdmin:LogAction(logcmd.." spell "..value.." to "..player..".")
      end
    elseif type(value) == "table" then
      for k,v in pairs(value) do
        NightmareAdmin:ChatMsg(command.." "..v)
        NightmareAdmin:LogAction(logcmd.." spell "..v.." to "..player..".")
      end
    end
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function Modify(case, value) 
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    if case == "money" then
      NightmareAdmin:ChatMsg(".modify money "..value)
      NightmareAdmin:LogAction("Give player "..player.." "..value.." copper).")
    elseif case == "levelup" then
      NightmareAdmin:ChatMsg(".levelup "..value)
      NightmareAdmin:LogAction("Leveled up player "..player.." by "..value.." levels.")
    elseif case == "leveldown" then
      NightmareAdmin:ChatMsg(".levelup "..value*(-1))
      NightmareAdmin:LogAction("Leveled down player "..player.." by "..value.." levels.")
    elseif case == "energy" then
      NightmareAdmin:ChatMsg(".modify energy "..value)
      NightmareAdmin:LogAction("Modified energy for "..player.." to "..value.." energy.")
    elseif case == "rage" then
      NightmareAdmin:ChatMsg(".modify rage "..value)
      NightmareAdmin:LogAction("Modified rage for "..player.." to "..value.." rage.")
    elseif case == "health" then
      NightmareAdmin:ChatMsg(".modify hp "..value)
      NightmareAdmin:LogAction("Modified hp for "..player.." to "..value.." healthpoints")
    elseif case == "mana" then
      NightmareAdmin:ChatMsg(".modify mana "..value)
      NightmareAdmin:LogAction("Modified mana for "..player.." to "..value.." mana")
    elseif case == "aspeed" then
      NightmareAdmin:ChatMsg(".modify aspeed "..value)
      NightmareAdmin:LogAction("Modified AllSpeeds for "..player.." to "..value.." mana")
    elseif case == "arena" then
      NightmareAdmin:ChatMsg(".modify arena "..value)
      NightmareAdmin:LogAction("Modified Arena Points for "..player.." to "..value.." mana")
    elseif case == "bwalk" then
      NightmareAdmin:ChatMsg(".modify bwalk "..value)
      NightmareAdmin:LogAction("Modified BackWalk for "..player.." to "..value.." mana")
    elseif case == "drunk" then
      NightmareAdmin:ChatMsg(".modify drunk "..value)
      NightmareAdmin:LogAction("Modified Drunk for "..player.." to "..value.." mana")
    elseif case == "fly" then
      NightmareAdmin:ChatMsg(".modify fly "..value)
      NightmareAdmin:LogAction("Modified FlySpeed for "..player.." to "..value.." mana")
    elseif case == "gender" then
      NightmareAdmin:ChatMsg(".modify gender "..value)
      NightmareAdmin:LogAction("Modified Gender for "..player.." to "..value.." mana")
    elseif case == "honor" then
      NightmareAdmin:ChatMsg(".modify honor "..value)
      NightmareAdmin:LogAction("Modified Honor for "..player.." to "..value.." mana")
    elseif case == "mount" then
      NightmareAdmin:ChatMsg(".modify mount "..value)
      NightmareAdmin:LogAction("Modified MountSpeed for "..player.." to "..value.." mana")
    elseif case == "phase" then
      NightmareAdmin:ChatMsg(".modify phase "..value)
      NightmareAdmin:LogAction("Modified Phase for "..player.." to "..value.." mana")
    elseif case == "runicpower" then
      NightmareAdmin:ChatMsg(".modify runicpower "..value)
      NightmareAdmin:LogAction("Modified RunicPower for "..player.." to "..value.." mana")
    elseif case == "speed" then
      NightmareAdmin:ChatMsg(".modify speed "..value)
      NightmareAdmin:LogAction("Modified Speed for "..player.." to "..value.." mana")
    elseif case == "standstate" then
      NightmareAdmin:ChatMsg(".modify standstate "..value)
      NightmareAdmin:LogAction("Modified StandState for "..player.." to "..value.." mana")
    elseif case == "swim" then
      NightmareAdmin:ChatMsg(".modify swim "..value)
      NightmareAdmin:LogAction("Modified SwimSpeed for "..player.." to "..value.." mana")
    elseif case == "tp" then
      NightmareAdmin:ChatMsg(".modify tp "..value)
      NightmareAdmin:LogAction("Modified TalentPoints for "..player.." to "..value.." mana")
    end
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function Reset(value)
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".reset "..value)
    NightmareAdmin:LogAction("Reset "..value.."' for player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

  -- LEARN LANG
function LearnLangDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
      {Locale["ma_AllLang"],"all_lang"},
      {Locale["Common"],"668"},
      {Locale["Orcish"],"669"},
      {Locale["Taurahe"],"670"},
      {Locale["Darnassian"],"671"},
      {Locale["Dwarvish"],"672"},
      {Locale["Thalassian"],"813"},
      {Locale["Demonic"],"815"},
      {Locale["Draconic"],"814"},
      {Locale["Titan"],"816"},
      {Locale["Kalimag"],"817"},
      {Locale["Gnomish"],"7340"},
      {Locale["Troll"],"7341"},
      {Locale["Gutterspeak"],"17737"},
      {Locale["Draenei"],"29932"}
    }
    for k,v in pairs(buttons) do
      info.text = v[1]
      info.value = v[2]
      info.func = function() UIDropDownMenu_SetSelectedValue(ma_learnlangdropdown, this.value) end
      info.checked = nil
      info.icon = nil
      info.keepShownOnClick = nil
      UIDropDownMenu_AddButton(info, level)
    end
    UIDropDownMenu_SetSelectedValue(ma_learnlangdropdown, "all_lang")
end  

  -- MODIFY
function ModifyDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
      {Locale["ma_AllSpeeds"],"aspeed"},
      {Locale["ma_Arena"],"arena"},
      {Locale["ma_BackWalk"],"bwalk"},
      {Locale["ma_Drunk"],"drunk"},
      {Locale["ma_Energy"],"energy"},
      {Locale["ma_FlySpeed"],"fly"},
      {Locale["ma_Gender"],"gender"},
      {Locale["ma_Healthpoints"],"health"},
      {Locale["ma_Honor"],"honor"},
      {Locale["ma_LevelUp"],"levelup"},
      {Locale["ma_LevelDown"],"leveldown"},
      {Locale["ma_Mana"],"mana"},
      {Locale["ma_Money"],"money"},
      {Locale["ma_MountSpeed"],"mount"},
      {Locale["ma_Phase"],"phase"},
      {Locale["ma_Rage"],"rage"},
      {Locale["ma_RunicPower"],"runicpower"},
      {Locale["ma_Speed"],"speed"},
      {Locale["ma_StandSate"],"standstate"},
      {Locale["ma_SwimSpeed"],"swim"},
      {Locale["ma_TalentPoints"],"tp"}
    }
    for k,v in pairs(buttons) do
      info.text = v[1]
      info.value = v[2]
      info.func = function() UIDropDownMenu_SetSelectedValue(ma_modifydropdown, this.value) end
      info.checked = nil
      info.icon = nil
      info.keepShownOnClick = nil
      UIDropDownMenu_AddButton(info, level)
    end
    UIDropDownMenu_SetSelectedValue(ma_modifydropdown, "levelup")
end  

  -- RESET
function ResetDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
      {Locale["ma_resetallspells"],"all spells"},
      {Locale["ma_resetalltalents"],"all talents"},
      {Locale["ma_achievements"],"achievements"},
      {Locale["ma_Honor"],"honor"},
      {Locale["ma_Level"],"level"},
      {Locale["ma_Spells"],"spells"},
      {Locale["ma_Stats"],"stats"},
      {Locale["ma_Talents"],"talents"}
    }
    for k,v in pairs(buttons) do
      info.text = v[1]
      info.value = v[2]
      info.func = function() UIDropDownMenu_SetSelectedValue(ma_resetdropdown, this.value) end
      info.checked = nil
      info.icon = nil
      info.keepShownOnClick = nil
      UIDropDownMenu_AddButton(info, level)
    end
    UIDropDownMenu_SetSelectedValue(ma_resetdropdown, "talents")
end  

function CharModelZoomIn()
    ma_modelframe:SetCamera(0)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() + .1)
    --ma_modelframe:SetPosition(1,ma_modelframe:GetModelScale()*3,0)
    --ma_modelframe:RefreshUnit()
end

function CharModelZoomOut()
    ma_modelframe:SetCamera(1)
    ma_modelframe:RefreshUnit()
   -- ma_modelframe:SetCamera(2)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() * .5)
    --ma_modelframe:SetPosition(0,0,0)
    --ma_modelframe:RefreshUnit()
end

function CharBindSight()
    local cname = ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".bindsight")
    NightmareAdmin:LogAction("Sight bound to "..cname)
end

function CharUnBindSight()
    local cname = ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".unbindsight")
    NightmareAdmin:LogAction("Sight unbound to "..cname)
end

function CharRename() 
    local cname = ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".character rename")
    NightmareAdmin:LogAction("Forced rename of "..cname)
end

function CharCustomize()
    local cname = ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".character customize")
    NightmareAdmin:LogAction("Forced customization of "..cname)
end

function CharChangeRace()
    local cname = ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".character changerace")
    NightmareAdmin:LogAction("Forced race change of "..cname)
end

function CharChangeFaction()
    local cname = ma_charactertarget:GetText()
    NightmareAdmin:ChatMsg(".character changefaction")
    NightmareAdmin:LogAction("Forced faction change of "..cname)
end

function CharCombatStop()
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".combatstop")
    NightmareAdmin:LogAction("Forced combat stop on "..player)
end

function CharMaxSkill() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".maxskill")
    NightmareAdmin:LogAction("Set player MaxSkill for "..player)
end

function CharFreeze() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".freeze")
    NightmareAdmin:LogAction("Set Freeze for "..player)
end

function CharUnFreeze() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".unfreeze")
    NightmareAdmin:LogAction("UnFroze "..player)
end

function CharListFreeze() 
    NightmareAdmin:ChatMsg(".listfreeze")
    NightmareAdmin:LogAction("Listed Frozen players")
end

function CharPossess() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".possess")
    NightmareAdmin:LogAction("Possessed "..player)
end

function CharUnPossess() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".unpossess")
    NightmareAdmin:LogAction("UnPossessed "..player)
end

function CharRecall() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".recall")
    NightmareAdmin:LogAction("Recalled "..player)
end

function CharRepair() 
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".repairitems")
    NightmareAdmin:LogAction("Repaired  "..player.."'s items")
end

