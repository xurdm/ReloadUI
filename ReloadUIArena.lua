local function OnEvent(self, event, isLogin, isReload)
    if (event == "ARENA_PREP_OPPONENT_SPECIALIZATIONS") then
        if (isReload) then
            StaticPopup_Hide("RELOAD_DIALOG")
        else
            StaticPopupDialogs["RELOAD_DIALOG"] = {
                text = "Reload the UI?",
                button1 = "Reload",
                button2 = "Cancel",
                OnAccept = function()
                    C_UI.Reload()
                end,
                timeout = 0,
                whileDead = true,
                hideOnEscape = true,
            }
            StaticPopup_Show("RELOAD_DIALOG")
        end
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")
f:SetScript("OnEvent", OnEvent)
