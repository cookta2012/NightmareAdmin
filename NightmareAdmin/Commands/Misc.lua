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
function ApplyStyleChanges()
  if NightmareAdmin.db.account.style.color.buffer.backgrounds then
    NightmareAdmin.db.account.style.color.backgrounds = NightmareAdmin.db.account.style.color.buffer.backgrounds
  end
  if NightmareAdmin.db.account.style.color.buffer.frames then
    NightmareAdmin.db.account.style.color.frames = NightmareAdmin.db.account.style.color.buffer.frames
  end
  if NightmareAdmin.db.account.style.color.buffer.buttons then
    NightmareAdmin.db.account.style.color.buttons = NightmareAdmin.db.account.style.color.buffer.buttons
  end
  if NightmareAdmin.db.account.style.color.buffer.linkifier then
    NightmareAdmin.db.account.style.color.linkifier = NightmareAdmin.db.account.style.color.buffer.linkifier
  end
  if ma_checktransparencybutton:GetChecked() then
    NightmareAdmin.db.account.style.transparency.backgrounds = 0.5
  else
    NightmareAdmin.db.account.style.transparency.backgrounds = 1.0
  end
  if ma_checklocalsearchstringsbutton:GetChecked() then
    NightmareAdmin.db.account.localesearchstring = true
  else
    NightmareAdmin.db.account.localesearchstring = false
  end
  if ma_showtooltipsbutton:GetChecked() then
    NightmareAdmin.db.account.style.showtooltips = true
  else
    NightmareAdmin.db.account.style.showtooltips = false
  end
  if ma_showchatoutputbutton:GetChecked() then
    NightmareAdmin.db.account.style.showchat = true
  else
    NightmareAdmin.db.account.style.showchat = false
  end
  if ma_showminimenubutton:GetChecked() then
    NightmareAdmin.db.account.style.showminimenu = true
  else
    NightmareAdmin.db.account.style.showminimenu = false
  end
  if ma_delayparam then
    NightmareAdmin.db.account.style.delayparam = ma_delayparam:GetText()
  else
  end
  ReloadUI()
end

function ShowColorPicker(t)
  if t == "bg" then
    local r,g,b
    if NightmareAdmin.db.account.style.color.buffer.backgrounds then
      r = NightmareAdmin.db.account.style.color.buffer.backgrounds.r
      g = NightmareAdmin.db.account.style.color.buffer.backgrounds.g
      b = NightmareAdmin.db.account.style.color.buffer.backgrounds.b
    else
      r = NightmareAdmin.db.account.style.color.backgrounds.r
      g = NightmareAdmin.db.account.style.color.backgrounds.g
      b = NightmareAdmin.db.account.style.color.backgrounds.b
    end
    ColorPickerFrame.cancelFunc = function(prev)
      local r,g,b = unpack(prev)
      ma_bgcolorshowbutton_texture:SetTexture(r,g,b)
    end
    ColorPickerFrame.func = function()
      local r,g,b = ColorPickerFrame:GetColorRGB()
      ma_bgcolorshowbutton_texture:SetTexture(r,g,b)
      NightmareAdmin.db.account.style.color.buffer.backgrounds = {}
      NightmareAdmin.db.account.style.color.buffer.backgrounds.r = r
      NightmareAdmin.db.account.style.color.buffer.backgrounds.g = g
      NightmareAdmin.db.account.style.color.buffer.backgrounds.b = b
    end
    ColorPickerFrame:SetColorRGB(r,g,b)
    ColorPickerFrame.previousValues = {r,g,b}
  elseif t == "frm" then
    local r,g,b
    if NightmareAdmin.db.account.style.color.buffer.frames then
      r = NightmareAdmin.db.account.style.color.buffer.frames.r
      g = NightmareAdmin.db.account.style.color.buffer.frames.g
      b = NightmareAdmin.db.account.style.color.buffer.frames.b
    else
      r = NightmareAdmin.db.account.style.color.frames.r
      g = NightmareAdmin.db.account.style.color.frames.g
      b = NightmareAdmin.db.account.style.color.frames.b
    end
    ColorPickerFrame.cancelFunc = function(prev)
      local r,g,b = unpack(prev)
      ma_frmcolorshowbutton_texture:SetTexture(r,g,b)
    end
    ColorPickerFrame.func = function()
      local r,g,b = ColorPickerFrame:GetColorRGB()
      ma_frmcolorshowbutton_texture:SetTexture(r,g,b)
      NightmareAdmin.db.account.style.color.buffer.frames = {}
      NightmareAdmin.db.account.style.color.buffer.frames.r = r
      NightmareAdmin.db.account.style.color.buffer.frames.g = g
      NightmareAdmin.db.account.style.color.buffer.frames.b = b
    end
    ColorPickerFrame:SetColorRGB(r,g,b)
    ColorPickerFrame.previousValues = {r,g,b}
  elseif t == "btn" then
    local r,g,b
    if NightmareAdmin.db.account.style.color.buffer.buttons then
      r = NightmareAdmin.db.account.style.color.buffer.buttons.r
      g = NightmareAdmin.db.account.style.color.buffer.buttons.g
      b = NightmareAdmin.db.account.style.color.buffer.buttons.b
    else
      r = NightmareAdmin.db.account.style.color.buttons.r
      g = NightmareAdmin.db.account.style.color.buttons.g
      b = NightmareAdmin.db.account.style.color.buttons.b
    end
    ColorPickerFrame.cancelFunc = function(prev)
      local r,g,b = unpack(prev)
      ma_btncolorshowbutton_texture:SetTexture(r,g,b)
    end
    ColorPickerFrame.func = function()
      local r,g,b = ColorPickerFrame:GetColorRGB();
      ma_btncolorshowbutton_texture:SetTexture(r,g,b)
      NightmareAdmin.db.account.style.color.buffer.buttons = {}
      NightmareAdmin.db.account.style.color.buffer.buttons.r = r
      NightmareAdmin.db.account.style.color.buffer.buttons.g = g
      NightmareAdmin.db.account.style.color.buffer.buttons.b = b
    end
    ColorPickerFrame:SetColorRGB(r,g,b)
    ColorPickerFrame.previousValues = {r,g,b}
  elseif t == "linkifier" then
    local r,g,b
    if NightmareAdmin.db.account.style.color.buffer.linkifier then
      r = NightmareAdmin.db.account.style.color.buffer.linkifier.r
      g = NightmareAdmin.db.account.style.color.buffer.linkifier.g
      b = NightmareAdmin.db.account.style.color.buffer.linkifier.b
    else
      r = NightmareAdmin.db.account.style.color.linkifier.r
      g = NightmareAdmin.db.account.style.color.linkifier.g
      b = NightmareAdmin.db.account.style.color.linkifier.b
    end
    ColorPickerFrame.cancelFunc = function(prev)
      local r,g,b = unpack(prev)
      ma_linkifiercolorbutton_texture:SetTexture(r,g,b)
    end
    ColorPickerFrame.func = function()
      local r,g,b = ColorPickerFrame:GetColorRGB();
      ma_linkifiercolorbutton_texture:SetTexture(r,g,b)
      NightmareAdmin.db.account.style.color.buffer.linkifier = {}
      NightmareAdmin.db.account.style.color.buffer.linkifier.r = r
      NightmareAdmin.db.account.style.color.buffer.linkifier.g = g
      NightmareAdmin.db.account.style.color.buffer.linkifier.b = b
    end
    ColorPickerFrame:SetColorRGB(r,g,b)
    ColorPickerFrame.previousValues = {r,g,b}
  end
  ColorPickerFrame.hasOpacity = false
  ColorPickerFrame:Show()
end

function ChangeWeather(status)
  if not (status == "") then
    NightmareAdmin:ChatMsg(".wchange "..status)
    NightmareAdmin:LogAction("Changed weather ("..status..").")
  end
end