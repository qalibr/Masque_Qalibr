-- Author: https://github.com/qalibr
-- see LICENSE for more details
local Masque_Qalibr, Core = ...
local Masque, MSQ_Version = LibStub("Masque", true)
if not Masque then
    return
end

local TEXTURE_PATH = "Interface\\AddOns\\" .. Masque_Qalibr .. "\\Assets\\"

local WIDTH = 36
local HEIGHT = 36

local VARIATIONS = {
    ["Qalibr (Low)"] = "70",
    ["Qalibr (Medium)"] = "80",
    ["Qalibr (High)"] = "90"
}

local BaseSkin = {
    Author = "qalibr",
    Version = "1.1.1",
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
        Width = WIDTH + 3,
        Height = HEIGHT + 2,
        BlendMode = "ADD",
        Color = {1, 1, 1, 0.3}
    }
}

local function CopyTable(src)
    local dest = {}
    for k, v in pairs(src) do
        dest[k] = v
    end

    return dest
end

for skinName, opacityValue in pairs(VARIATIONS) do
    local skinData = CopyTable(BaseSkin)
    skinData.Icon = {
        Width = WIDTH - 1,
        Height = HEIGHT - 1,
        TexCoords = {0.04, 0.96, 0.04, 0.96},
        Mask = TEXTURE_PATH .. "Mask-" .. opacityValue
    }

    Masque:AddSkin(skinName, skinData)
end
