-- Author: https://github.com/qalibr
-- see LICENSE for more details

local Masque_Qalibr, Core = ...
local Masque, MSQ_Version = LibStub("Masque", true)
if not Masque then
    return
end

local SKIN_NAME = "Qalibr"

local TEXTURE_PATH = "Interface\\AddOns\\" .. Masque_Qalibr .. "\\Assets\\"

local WIDTH = 35.9
local HEIGHT = 36.5

Masque:AddSkin(SKIN_NAME, {
    Author = "qalibr",
    Version = "1.0.0",
    Masque_Version = MSQ_Version,
    Description = "A dark, simple skin for Masque.",

    Normal = {
        Width = WIDTH,
        Height = HEIGHT,
        Color = {1, 1, 1, 1},
        Texture = TEXTURE_PATH .. "Normal"
    },

    Backdrop = {
        Width = WIDTH,
        Height = HEIGHT,
        Color = {1, 1, 1, 1},
        Texture = TEXTURE_PATH .. "Backdrop"
    },

    Pushed = {
        Width = WIDTH,
        Height = HEIGHT,
        Color = {0.8, 0.8, 0.8, 1},
        Texture = TEXTURE_PATH .. "Normal"
    },

    Highlight = {
        Width = WIDTH + 2.1,
        Height = HEIGHT + 1.5,
        BlendMode = "ADD",
        Color = {1, 1, 1, 0.3}
    },

    Icon = {
        Mask = TEXTURE_PATH .. "Mask"
    }
})
