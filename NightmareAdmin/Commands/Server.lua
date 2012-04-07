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
function Announce(value)
  NightmareAdmin:ChatMsg(".announce "..value)
  NightmareAdmin:LogAction("Announced message: "..value)
end

function Shutdown(value)
  if value == "" then
    NightmareAdmin:ChatMsg(".server shutdown 0")
    NightmareAdmin:LogAction("Shut down server instantly.")
  else
    NightmareAdmin:ChatMsg(".server shutdown "..value)
    NightmareAdmin:LogAction("Shut down server in "..value.." seconds.")
  end
end

function ReloadTable(tablename)
  if not (tablename == "") then
    NightmareAdmin:ChatMsg(".reload "..tablename)
    if tablename == "all" then
      NightmareAdmin:LogAction("Reloaded all reloadable Descent database tables.")
    else
      NightmareAdmin:LogAction("Reloaded the table "..tablename..".")
    end
  end
end

function ReloadScripts()
  NightmareAdmin:ChatMsg(".loadscripts")
  NightmareAdmin:LogAction("(Re-)Loaded scripts.")
end