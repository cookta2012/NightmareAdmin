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

function WhoUpdate()
    NightmareAdmin:LogAction("Getting Who.")
    local whoCount = 0
    table.foreachi(NightmareAdmin.db.account.buffer.who, function() whoCount = whoCount + 1 end)
    if whoCount > 0 then
      ma_whoscrollframe1:SetText("Loading")
      local lineplusoffset
      local line
      ma_whoscrollframe:Show()
      FauxScrollFrame_Update(ma_whoscrollframe,whoCount,12,16);
      for line = 1,12 do
        lineplusoffset = line + FauxScrollFrame_GetOffset(ma_whoscrollframe)
        if lineplusoffset <= whoCount then
          local object = NightmareAdmin.db.account.buffer.who[lineplusoffset]
          if object then
            getglobal("ma_whoscrollframe"..line):SetText("Acct: |cffffffff"..object["tAcc"].."|r Char: |cffffffff"..object["tChar"].."|r GMLvl: |cffffffff"..object["tGMLevel"].."|r Exp: |cffffffff"..object["tExp"].."|r")
            ma_deletewhobutton:Enable()
            ma_answerwhobutton:Enable()
            ma_summonwhobutton:Enable()
            ma_gocharwhobutton:Enable()
            ma_whisperwhobutton:Enable()
            getglobal("ma_whoscrollframe"..line):SetScript("OnEnter", function() --[[Do nothing]] end)
            getglobal("ma_whoscrollframe"..line):SetScript("OnLeave", function() --[[Do nothing]] end)
            getglobal("ma_whoscrollframe"..line):SetScript("OnClick", function() WhoDetail(object["tAcc"], object["tChar"], object["tMap"], object["tZone"]) end)
            getglobal("ma_whoscrollframe"..line):Enable()
            getglobal("ma_whoscrollframe"..line):Show()
          end
        else
          getglobal("ma_whoscrollframe"..line):Hide()
        end
      end
    else
      --NightmareAdmin:NoResults("ticket")
    end
--  else
--  end
--NightmareAdmin.db.account.buffer.tickets = {}
--NightmareAdmin.db.char.requests.ticket = false
end

function WhoDetail(tAcc, tChar, tMap, tZone)
--     NightmareAdmin.db.char.requests.ticket = false
--   NightmareAdmin:ChatMsg(tNumber)
--     tNumber=string.gsub(tNumber, "00", "")
--   NightmareAdmin:ChatMsg(tNumber)
    --x = x - 1 
--    tNumber = string.match(tNumber, "%d+")
    NightmareAdmin:ChatMsg(".pinfo "..tChar)
    ma_whoid:SetText(tAcc)
    ma_who:SetText(tChar)
    local MapName=ReturnMapName(tMap)
    local AreaName=ReturnAreaName(tZone)
    ma_whowhere:SetText(MapName.."-"..AreaName)
    NightmareAdmin:LogAction("Displaying character detail on "..tAcc..":"..tChar)
--    local ticketdetail = NightmareAdmin.db.account.buffer.ticketsfull
end

function ResetWho()
    NightmareAdmin.db.account.buffer.who = {}
    wipe(NightmareAdmin.db.account.buffer.who)
    NightmareAdmin.db.account.buffer.who = {}
    WhoUpdate()
end

function Who(value)
  if value == "delete" then
    NightmareAdmin:ChatMsg(".kick "..ma_who:GetText())
    NightmareAdmin:LogAction("Kicked: "..ma_who:GetText())
    ResetWho()
  elseif value == "gochar" then
    NightmareAdmin:ChatMsg(".appear "..ma_who:GetText())
  elseif value == "getchar" then
    NightmareAdmin:ChatMsg(".summon "..ma_who:GetText())
  elseif value == "answer" then
    NightmareAdmin:TogglePopup("mail", {recipient = ma_who:GetText(), subject = ""})
  elseif value == "whisper" then
   --ChatFrame1EditBox:Show()
  -- ChatEdit_GetLastActiveWindow():Show() 
   --ChatEdit_ActivateChat(ChatEdit_GetActiveWindow());
--   ChatFrame1EditBox:Insert("/w "..ma_who:GetText().." ".. string.char(10)..string.char(13));
--   ChatEdit_FocusActiveWindow(1);
       local editbox = ChatFrame1EditBox
       if not editbox then
         -- Support for 3.3.5 and newer
         editbox = ChatEdit_GetActiveWindow()
       end 
       ChatEdit_ActivateChat(editbox);
       if editbox then
         editbox:Insert("/w "..ma_who:GetText().." ");
       end 
  elseif value == "customize" then
    NightmareAdmin:ChatMsg(".character customize "..ma_who:GetText())
  elseif value == "chardelete" then
    NightmareAdmin:ChatMsg(".character delete "..ma_who:GetText())
  elseif value == "charrename" then
    NightmareAdmin:ChatMsg(".character rename "..ma_who:GetText())
  elseif value == "1dayban" then
    NightmareAdmin:ChatMsg(".ban character "..ma_who:GetText().." 1d 1Day ban by GM")
  elseif value == "permban" then
    NightmareAdmin:ChatMsg(".ban character "..ma_who:GetText().." -1d Permanent ban by GM")
  elseif value == "jaila" then
    cname=ma_who:GetText()
    NightmareAdmin:ChatMsg(".tele name "..cname.." ma_AllianceJail")
    NightmareAdmin:LogAction("Jailed player "..cname..".")
    NightmareAdmin:ChatMsg(".notify "..cname.." has been found guilty and jailed.")
  elseif value == "jailh" then
    cname=ma_who:GetText()
    NightmareAdmin:ChatMsg(".tele name "..cname.." ma_HordeJail")
    NightmareAdmin:LogAction("Jailed player "..cname..".")
    NightmareAdmin:ChatMsg(".notify "..cname.." has been found guilty and jailed.")
  elseif value == "unjail" then
    cname=ma_who:GetText()
    NightmareAdmin:ChatMsg(".recall "..cname)
    NightmareAdmin:LogAction("UnJailed player "..cname..".")
    NightmareAdmin:ChatMsg(".notify "..cname.." has been pardoned and released from jail.")
  
  
  end




end