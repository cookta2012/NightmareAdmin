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



--
-------------------------------------------------------------------------------------------------------------

function DisplayAccountLevel()
  NightmareAdmin:ChatMsg(".account")
end

function ToggleGMMode(value)
  NightmareAdmin:ChatMsg(".gm "..value)
  NightmareAdmin:LogAction("Turned GM-mode to "..value..".")
end

function ToggleFlyMode(value)
  --if self:Selection("player") or self:Selection("self") or self:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".gm fly "..value)
    NightmareAdmin:LogAction("Turned Fly-mode "..value.." for "..player..".")
  --[[else
    self:Print(Locale["selectionerror1"])
  end]]
end

function ToggleHoverMode(value)
  NightmareAdmin:ChatMsg(".hover "..value)
  local status
  if value == 1 then
    status = "on"
  else
    status = "off"
  end
  NightmareAdmin:LogAction("Turned Hover-mode "..status..".")
end

function ToggleWhisper(value)
  NightmareAdmin:ChatMsg(".whispers "..value)
  NightmareAdmin:LogAction("Turned accepting whispers to "..value..".")
end

function ToggleVisible(value)
  NightmareAdmin:ChatMsg(".gm visible "..value)
  if value == "on" then
    NightmareAdmin:LogAction("Turned you visible.")
  else
    NightmareAdmin:LogAction("Turned you invisible.")
  end  
end

function ToggleTaxicheat(value)
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".taxicheat "..value)
    if value == 1 then
      NightmareAdmin:LogAction("Activated taxicheat to "..player..".")
    else
      NightmareAdmin:LogAction("Disabled taxicheat to "..player..".")
    end
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function ToggleMaps(value)
  NightmareAdmin:ChatMsg(".explorecheat "..value)
  if value == 1 then
    NightmareAdmin:LogAction("Revealed all maps for selected player.")
  else
    NightmareAdmin:LogAction("Hide all unexplored maps for selected player.")
  end
end

function KillSomething()
  local target = UnitName("target") or UnitName("player")
  NightmareAdmin:ChatMsg(".die")
  NightmareAdmin:LogAction("Killed "..target..".")
end

function InstantKill()
  NightmareAdmin.db.char.instantKillMode = ma_instantkillbutton:GetChecked()
end

function SetSpeed()
  local value = string.format("%.1f", ma_speedslider:GetValue())
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    --self:ChatMsg(".modify speed "..value)
    --self:ChatMsg(".modify fly "..value)
    --self:ChatMsg(".modify swim "..value)
    NightmareAdmin:ChatMsg(".modify aspeed "..value)
    NightmareAdmin:LogAction("Set speed of "..player.." to "..value..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
    ma_speedslider:SetValue(1)
  end
end

function SetScale()
  local value = string.format("%.1f", ma_scaleslider:GetValue())
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".modify scale "..value)
    NightmareAdmin:LogAction("Set scale of "..player.." to "..value..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
    ma_scaleslider:SetValue(1)
  end
end

function Screenie()
  UIParent:Hide()
  Screenshot()
  UIParent:Show()
end

function ShowBank()
  NightmareAdmin:ChatMsg(".bank")
end

function DismountPlayer()
  if NightmareAdmin:Selection("player") or NightmareAdmin:Selection("self") or NightmareAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    NightmareAdmin:ChatMsg(".dismount")
    NightmareAdmin:LogAction("Dismounted player "..player..".")
  else
    NightmareAdmin:Print(Locale["selectionerror1"])
  end
end

function SetJail_A()
    NightmareAdmin:ChatMsg(".tele del ma_AllianceJail")
    local i = 1
    while i<100 do
        i=i+1
        NightmareAdmin:ChatMsg(".")
    end
    NightmareAdmin:ChatMsg(".tele add ma_AllianceJail")
    NightmareAdmin:LogAction("Set location of Alliance Jail")
end

function SetJail_H()
    NightmareAdmin:ChatMsg(".tele del ma_HordeJail")
    local i = 1
    while i<100 do
        i=i+1
        NightmareAdmin:ChatMsg(".")
    end
    NightmareAdmin:ChatMsg(".tele add ma_HordeJail")
    NightmareAdmin:LogAction("Set location of Horde Jail")
end

function GridNavigate(x, y)
  local way = NightmareAdmin.db.char.nextGridWay
  if not x and not y then
    table.insert(NightmareAdmin.db.char.functionQueue, "GridNavigate")
    NightmareAdmin:ChatMsg(".gps")
  else
    if pcall(function() return ma_gridnavieditbox:GetText() + 10 end) then
      local step = ma_gridnavieditbox:GetText()
      local newy
      local newx
      if way == "east" then  --East
        newy = y - step
        newx = x
      elseif way == "north" then --North
        newy = y
        newx = x + step
      elseif way == "south" then  --South
        newy = y
        newx = x - step
      else  --Wast
        newy = y + step
        newx = x
      end
      NightmareAdmin:ChatMsg(".go xy "..newx.." "..newy)
      NightmareAdmin:LogAction("Teleported to grid position: X: "..newx.." Y: "..newy)
    else
      NightmareAdmin:Print("Value must be a number!")
    end
  end
end

function ToggleChat(value)
  NightmareAdmin:ChatMsg(".gm chat "..value)
  NightmareAdmin:LogAction("Turned GM-Chat to "..value..".")
end

function ToggleWaterwalk(value)
  NightmareAdmin:ChatMsg(".waterwalk "..value)
  NightmareAdmin:LogAction("Turned Waterwalk to "..value..".")
end

function ToggleAccountlock(value)
  NightmareAdmin:ChatMsg(".account lock "..value)
  NightmareAdmin:LogAction("Turned GM account lock to "..value..".")
end

function GMInGame()
  NightmareAdmin:ChatMsg(".gm ingame")
  NightmareAdmin:LogAction("Listed GMs in-game.")
end

function GMList()
  NightmareAdmin:ChatMsg(".gm list")
  NightmareAdmin:LogAction("Listed GM accounts.")
end

function PetCreate()
  NightmareAdmin:ChatMsg(".pet create")
  NightmareAdmin:LogAction("Created a pet.")
end

function PetLearn()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".pet learn "..param)
  NightmareAdmin:LogAction("Taught pet spell "..param)
end

function PetUnLearn()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".pet unlearn "..param)
  NightmareAdmin:LogAction("Un-taught pet spell "..param)
end

function PetTP()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".pet tp "..param)
  NightmareAdmin:LogAction("Modified pet training points by "..param)
end

function LookupTaxi()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".lookup taxi  "..param)
  NightmareAdmin:LogAction("Looked up Taxinode "..param)
end

function GoTaxiNode()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".go taxinode "..param)
  NightmareAdmin:LogAction("Teleported to TaxiNode "..param)
end

function GoTrigger()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".go trigger "..param)
  NightmareAdmin:LogAction("Teleported to Trigger "..param)
end

function GoXY()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".go xy "..param)
  NightmareAdmin:LogAction("Teleported to XY "..param)
end

function GoXYZ()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".go xyz "..param)
  NightmareAdmin:LogAction("Teleported to XYZ "..param)
end

function GoZoneXY()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".go zonexy "..param)
  NightmareAdmin:LogAction("Teleported to ZoneXY "..param)
end

function LookupZone()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".lookup area "..param)
  NightmareAdmin:LogAction("Looked up Zone "..param)
end

function Cast()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".cast "..param)
  NightmareAdmin:LogAction("Cast spell "..param)
end

function CastBack()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".cast back "..param)
  NightmareAdmin:LogAction("Cast Back spell "..param)
end

function CastDist()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".cast dist "..param)
  NightmareAdmin:LogAction("Cast Dist spell "..param)
end

function CastSelf()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".cast self "..param)
  NightmareAdmin:LogAction("Cast Self spell "..param)
end

function CastTarget()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".cast target "..param)
  NightmareAdmin:LogAction("Cast Target spell "..param)
end

function ListItem()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".list item "..param)
  NightmareAdmin:LogAction("Listed Item "..param)
end

function GmClear()
  ma_parameter:SetText("")
end

function AcctCreate()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".account create "..param)
  NightmareAdmin:LogAction("Created account: "..param)
end

function AcctDelete()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".account delete "..param)
  NightmareAdmin:LogAction("Deleted account: "..param)
end

function AcctAddon()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".account set addon "..param)
  NightmareAdmin:LogAction("Set account addon: "..param)
end

function AcctGMLvl()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".account set gmlevel "..param)
  NightmareAdmin:LogAction("Set account gmlevel: "..param)
end

function AcctPasswd()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".account set password "..param)
  NightmareAdmin:LogAction("Set account password: "..param)
end

function GMNotify()
  local param = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".gmnotify "..param)
  NightmareAdmin:LogAction("GM Notify: "..param)
end

function TeleAddButton()
  local cname = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".tele add "..cname)
  NightmareAdmin:LogAction("Added .tele location: "..cname..".")

end

function TeleDelButton()
  local cname = ma_parameter:GetText()
  NightmareAdmin:ChatMsg(".tele del "..cname)
  NightmareAdmin:LogAction("Deleted .tele location: "..cname..".")

end

function ResetSpeed()
    ma_speedslider:SetValue(1)
    ma_speedsliderText:SetText("Speed: 1.0")
    NightmareAdmin:ChatMsg(".mod aspeed 1")
    
end

function ResetScale()
  ma_scaleslider:SetValue(1)
  ma_scalesliderText:SetText("Scale: 1.0")
  NightmareAdmin:ChatMsg(".mod scale 1")
end
