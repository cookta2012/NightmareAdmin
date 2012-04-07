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
function ShowTicketTab()
  wipe(NightmareAdmin.db.account.buffer.tickets)
  ma_deleteticketbutton:Disable()
  ma_answerticketbutton:Disable()
  ma_getcharticketbutton:Disable()
  ma_gocharticketbutton:Disable()
  ma_whisperticketbutton:Disable()
  NightmareAdmin:InstantGroupToggle("ticket")
  ResetTickets()
 --  RefreshTickets()
 --  RefreshTickets()
end

function RefreshOnlineTickets()
    ma_ticketscrollframe:SetScript("OnVerticalScroll", InlineScrollUpdate(), function(self, offset) FauxScrollFrame_OnVerticalScroll(self, offset-1, 16, InlineScrollUpdate()) end)
    ma_ticketscrollframe:SetScript("OnShow", function() InlineScrollUpdate() end)
    NightmareAdmin.db.char.requests.ticket = true
    NightmareAdmin:LogAction("Getting tickets.")
    NightmareAdmin:ChatMsg(".ticket onlinelist")
    for i=1,12 do
       getglobal("ma_ticketscrollframe"..i):Hide()
    end
    getglobal("ma_showticketsbutton"):Hide()
    
end

function RefreshTickets()

    ma_ticketscrollframe:SetScript("OnVerticalScroll", InlineScrollUpdate(), function(self, offset) FauxScrollFrame_OnVerticalScroll(self, offset-1, 16, InlineScrollUpdate()) end)
    ma_ticketscrollframe:SetScript("OnShow", function() InlineScrollUpdate() end)
    NightmareAdmin.db.char.requests.ticket = true
    NightmareAdmin:LogAction("Getting tickets.")
    NightmareAdmin:ChatMsg(".ticket list")
    for i=1,12 do
       getglobal("ma_ticketscrollframe"..i):Hide()
    end
    getglobal("ma_showonlineticketsbutton"):Hide()
end

function ResetTickets()
    wipe(NightmareAdmin.db.account.buffer.tickets)
    wipe(NightmareAdmin.db.account.buffer.tickets)
    wipe(NightmareAdmin.db.account.buffer.tickets)
    NightmareAdmin.db.account.buffer.tickets = {}
    NightmareAdmin.db.account.buffer.tickets = {}
    NightmareAdmin.db.account.buffer.tickets = {}
    NightmareAdmin.db.char.requests.ticket = true
    for i=1,12 do
       getglobal("ma_ticketscrollframe"..i):Hide()
    end
    getglobal("ma_showticketsbutton"):Show()
    getglobal("ma_showonlineticketsbutton"):Show()
    
end

function ShowTickets()
 InlineScrollUpdate()
end


--[[function NightmareAdmin:LoadTickets(number)
  self.db.char.newTicketQueue = {}
  --self.db.account.tickets.requested = 0
  if number then
    if tonumber(number) > 0 then
      self.db.account.tickets.count = tonumber(number)
      if self.db.char.requests.ticket then
        self:LogAction("Load of tickets requested. Found "..number.." tickets!")
        self:RequestTickets()
        self:SetIcon(ROOT_PATH.."Textures\\icon.tga")
        --ma_resetsearchbutton:Enable()
      end
    else
      --ma_resetsearchbutton:Disable()
      self:NoResults("ticket")
    end
  else
    self.db.char.requests.ticket = true
    self.db.account.tickets.count = 0
    self.db.account.buffer.tickets = {}
    --self:ChatMsg(".ticket list")
    --self:LogAction("Requesting ticket numberz!")
  end
  InlineScrollUpdate()
end]]

--[[function NightmareAdmin:RequestTickets()
  self.db.char.requests.ticket = true
  local ticketCount = 0
  table.foreachi(self.db.account.buffer.tickets, function() ticketCount = ticketCount + 1 end)
  --ma_lookupresulttext:SetText(Locale["ma_TicketCount"]..count)
  ma_top2text:SetText(Locale["realm"].." "..Locale["tickets"]..self.db.account.tickets.count)
  local tnumber = self.db.account.tickets.count - ticketCount
  --self:LogAction("tNumber = "..tnumber..", Tc = "..ticketCount)
  if tnumber > 0 then
    self:ChatMsg(".ticket "..tnumber)
    --self:LogAction(".ticket "..tnumber)
    self:LogAction("Loading ticket "..tnumber.."...")
  else
    self:LogAction("Loaded all available tickets! No more to load...")
    ma_resetsearchbutton:Disable()
  end
end]]

function Ticket(value)
  local ticket = NightmareAdmin.db.account.tickets.selected
  if value == "delete" then
    NightmareAdmin:ChatMsg(".ticket close "..ma_ticketid:GetText())
    NightmareAdmin:LogAction("Closed ticket with number: "..ma_ticketid:GetText())
    wipe(NightmareAdmin.db.account.buffer.tickets)
    NightmareAdmin.db.account.buffer.tickets={}
--    NightmareAdmin:ChatMsg(".ticket delete"..ma_ticketid:GetText())
--    NightmareAdmin:LogAction("Deleted ticket with number: "..ma_ticketid:GetText())
    ShowTicketTab()
    ResetTickets()
    --InlineScrollUpdate()
  elseif value == "gochar" then
    NightmareAdmin:ChatMsg(".appear "..ma_ticketwho:GetText())
  elseif value == "getchar" then
    NightmareAdmin:ChatMsg(".summon "..ma_ticketwho:GetText())
  elseif value == "answer" then
--    NightmareAdmin:TogglePopup("mail", {recipient = ma_ticketwho:GetText(), subject = "Ticket("..ma_ticketid:GetText()..")"})
    NightmareAdmin:TogglePopup("mail", {recipient = ma_ticketwho:GetText(), subject = "Ticket("..ma_ticketid:GetText()..")"})
--    NightmareAdmin:TogglePopup("mail", {recipient = ma_ticketwho:GetText(), subject = "Ticket("..ma_ticketid:GetText()..")", body = ma_ticketdetail:GetText()})
    ma_maileditbox:SetText(ma_ticketdetail:GetText())
  elseif value == "whisper" then
--    ChatFrameEditBox:Show()
--    ChatFrameEditBox:Insert("/w "..ma_ticketwho:GetText().." ");
       local editbox = ChatFrame1EditBox
       if not editbox then
         -- Support for 3.3.5 and newer
         editbox = ChatEdit_GetActiveWindow()
       end 
       ChatEdit_ActivateChat(editbox);
       if editbox then
         editbox:Insert("/w "..ma_ticketwho:GetText().." ");
       end 

  elseif value == "goticket" then
    NightmareAdmin:ChatMsg(".go ticket "..ma_ticketid:GetText())
  end
end

--[[function NightmareAdmin:ToggleTickets(value)
  NightmareAdmin:ChatMsg(".ticket "..value)
  NightmareAdmin:LogAction("Turned receiving new tickets "..value..".")
end]]


function InlineScrollUpdate()
    NightmareAdmin:LogAction("Showing tickets.")
    local ticketCount = 0
    table.foreachi(NightmareAdmin.db.account.buffer.tickets, function() ticketCount = ticketCount + 1 end)
    if ticketCount > 0 then
      ma_ticketscrollframe1:SetText("Loading")
      local lineplusoffset
      local line
      ma_ticketscrollframe:Show()
      FauxScrollFrame_Update(ma_ticketscrollframe,ticketCount,12,16);
      for line = 1,12 do
        lineplusoffset = line + FauxScrollFrame_GetOffset(ma_ticketscrollframe)
        if lineplusoffset <= ticketCount then
          local object = NightmareAdmin.db.account.buffer.tickets[lineplusoffset]
          if object then
            getglobal("ma_ticketscrollframe"..line):SetText("Id: |cffffffff"..object["tNumber"].."|r Who: |cffffffff"..object["tChar"].."|r When: |cffffffff"..object["tLCreate"].."|r")
            NightmareAdmin.db.account.tickets.selected = object
            ma_deleteticketbutton:Enable()
            ma_answerticketbutton:Enable()
            ma_getcharticketbutton:Enable()
            ma_gocharticketbutton:Enable()
            ma_whisperticketbutton:Enable()
            getglobal("ma_ticketscrollframe"..line):SetScript("OnEnter", function() --[[Do nothing]] end)
            getglobal("ma_ticketscrollframe"..line):SetScript("OnLeave", function() --[[Do nothing]] end)
            getglobal("ma_ticketscrollframe"..line):SetScript("OnClick", function() ReadTicket(object["tNumber"], object["tChar"]) end)
            getglobal("ma_ticketscrollframe"..line):Enable()
            getglobal("ma_ticketscrollframe"..line):Show()
          end
        else
          getglobal("ma_ticketscrollframe"..line):Hide()
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

function ReadTicket(tNumber, tChar)
     NightmareAdmin.db.char.requests.ticket = false
     ma_deleteticketbutton:Enable()
     ma_answerticketbutton:Enable()
     ma_getcharticketbutton:Enable()
     ma_gocharticketbutton:Enable()
     ma_whisperticketbutton:Enable()
--   NightmareAdmin:ChatMsg(tNumber)
--   tNumber=string.gsub(tNumber, ".", "")
--   NightmareAdmin:ChatMsg(tNumber)
    --x = x - 1 
    tNumber = string.match(tNumber, "%d+")
    NightmareAdmin:ChatMsg(".ticket viewid "..tNumber)
    ma_ticketid:SetText(tNumber)
    ma_ticketwho:SetText(tChar)
    --NightmareAdmin:ChatMsg(".pinfo "..tChar)
    NightmareAdmin:LogAction("Displaying ticket number "..tNumber.." from player "..tChar)

    --NightmareAdmin:ChatMsg("???")
    --ma_ticketdetail:SetText("Hello")
    --NightmareAdmin:ChatMsg(NightmareAdmin.db.account.buffer.ticketsfull["tMsg"])
    local ticketdetail = NightmareAdmin.db.account.buffer.ticketsfull
    --ma_ticketdetail:SetText(ticketdetail["tMsg"])
    --    getglobal("ma_ticketdetail"):SetText("Id: |cffffffff"..tNumber.."|r Who: |cffffffff"..tChar.."|r Msg: |cffffffff"..ticketdetail["tMsg"].."|r")
--    ma_ticketdetail:SetText("Id: |cffffffff"..tNumber.."|r Who: |cffffffff"..tChar.."|r Msg: |cffffffff"..ticketdetail["tMsg"].."|r")
--    ma_ticketdetail:SetText(ticketdetail["tMsg"].."|r")
    --ma_ticketdetail:SetText("Hello")

end
