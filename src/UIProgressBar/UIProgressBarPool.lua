---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 27/02/2019 12:49
---

---@type table
UIProgressBarPool = setmetatable({}, UIProgressBarPool)

---@type table
UIProgressBarPool.__index = UIProgressBarPool

---New
---@return table
---@public
function UIProgressBarPool.New()
    local _UIProgressBarPool = {
        ProgressBar = {},
    }
    return setmetatable(_UIProgressBarPool, UIProgressBarPool)
end

---Add
---@param TimerBar table
---@return table
---@public
function UIProgressBarPool:Add(TimerBar)
    if TimerBar() == "UIProgressBarItem" then
        table.insert(self.ProgressBar, TimerBar)
        return #self.ProgressBar
    end
end

---Draw
---@return nil
---@public
function UIProgressBarPool:Draw()
    for _, ProgressBar in pairs(self.ProgressBar) do
        ProgressBar:Draw()
    end
end

