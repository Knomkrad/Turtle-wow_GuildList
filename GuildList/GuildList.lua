-- GuildList Addon for Turtle WoW (v1.12 Client)
-- Created by Knomkrad

-- Slash Commands
SLASH_GLO1 = "/glo"

function GetMemberStatus(guildMembers)
    local offlineMembers = {}
	-- Get the guild members
    for i = 0, guildMembers - 1 do
		local selectedGuildMember = GetGuildRosterSelection(i)
        local name, rank, rankIndex, level, class, zone, note, 
  officernote, online, status, classFileName, 
  achievementPoints, achievementRank, isMobile = GetGuildRosterInfo(i)
		local years, months, days, hours = GetGuildRosterLastOnline(i)
		if (months and months > 1) then
			print(i .. " - " .. tostring(name) .. " - months off line: " .. tostring(months) .. " - " .. tostring(officernote))
		end
    end
end

SlashCmdList["GLO"] = function()
    GetMemberStatus(GetNumGuildMembers())
end
