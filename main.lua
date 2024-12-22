local HttpService = game:GetService("HttpService")

-- ฟังก์ชันโหลดไฟล์จาก GitHub
local function LoadFile(FileName)
    local Url = "https://raw.githubusercontent.com/ScriptInfinityHub/CustomUi/" .. FileName
    local Success, Response = pcall(function()
        return game:HttpGet(Url)
    end)

    if Success then
        return loadstring(Response)()
    else
        error("Failed to load " .. FileName)
    end
end

-- โหลดไฟล์ทั้งหมดในโฟลเดอร์ src
local Creator = LoadFile("Creator.lua")
local Elements = LoadFile("Elements.lua")
local Acrylic = LoadFile("Acrylic.lua")

-- คืนค่าหลักของ Library
return {
    Creator = Creator,
    Elements = Elements,
    Acrylic = Acrylic,
}
