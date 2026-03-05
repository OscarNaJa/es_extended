Config = {}
Config.Locale = GetConvar("esx:locale", "en")

-- Config.OxInventory = GetResourceState("ox_inventory") ~= 'missing'

Config.Accounts = {
    bank = {
        label = TranslateCap("account_bank"),
        round = true,
    },
    black_money = {
        label = TranslateCap("account_black_money"),
        round = true,
    },
    money = {
        label = TranslateCap("account_money"),
        round = true,
    },
}

Config.StartingAccountMoney 	= {  --เงินเริ่มต้น
	['bank'] = 40000,
	['money']= 10000
}

Config.StartingInventoryItems = {   --ไอเท็มเริ่มต้น เช่น กล่องเปิดได้ของ
    ['BoxNewbie'] = 1,
}
   
Config.DefaultSpawns = { -- If you want to have more spawn positions and select them randomly uncomment commented code or add more locations
    { x = -3153.89, y = -3309.44, z = 630.87, heading = 274.8651 },
}

Config.AdminGroups = {
    ["admin"] = true,
    ["superadmin"] = true,
}

Config.LicenseType = "steam" -- steam, license, discord, xbl, liveid, ip
Config.InvalidateIdleCam = true  -- รีเซ็ตตัวจับเวลาของกล้องที่ไม่ได้ใช้งาน
Config.EnablePaycheck = true -- enable paycheck
Config.LogPaycheck = false -- Logs paychecks to a nominated Discord channel via webhook (default is false)
Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.MaxWeight = 24 -- the max inventory weight without a backpack
Config.PaycheckInterval = 60 * 60000 -- how often to receive paychecks in milliseconds
Config.EnableDebug = false -- Use Debug options?
Config.EnableDefaultInventory = true -- Display the default Inventory ( F2 )
Config.EnableWantedLevel = false -- Use Normal GTA wanted Level?
Config.EnablePVP = true -- Allow Player to player combat

Config.Multichar = GetResourceState("esx_multicharacter") ~= "missing"
Config.Identity = true -- Select a character identity data before they have loaded in (this happens by default with multichar)
Config.DistanceGive = 4.0 -- Max distance when giving items, weapons etc.

Config.AdminLogging = false -- Logs the usage of certain commands by those with group.admin ace permissions (default is false)

Config.DisableHealthRegeneration = false -- Player will no longer regenerate health
Config.DisableVehicleRewards = false -- Disables Player Receiving weapons from vehicles
Config.DisableNPCDrops = false -- stops NPCs from dropping weapons on death
Config.DisableDispatchServices = false -- Disable Dispatch services
Config.DisableScenarios = false -- Disable Scenarios
Config.DisableWeaponWheel = false -- Disables default weapon wheel
Config.DisableAimAssist = false -- disables AIM assist (mainly on controllers)
Config.DisableVehicleSeatShuff = false -- Disables vehicle seat shuff
Config.DisableDisplayAmmo = false -- Disable ammunition display
Config.RemoveHudComponents = {
    [1] = false, --WANTED_STARS,
    [2] = false, --WEAPON_ICON
    [3] = false, --CASH
    [4] = false, --MP_CASH
    [5] = false, --MP_MESSAGE
    [6] = false, --VEHICLE_NAME
    [7] = false, -- AREA_NAME
    [8] = false, -- VEHICLE_CLASS
    [9] = false, --STREET_NAME
    [10] = false, --HELP_TEXT
    [11] = false, --FLOATING_HELP_TEXT_1
    [12] = false, --FLOATING_HELP_TEXT_2
    [13] = false, --CASH_CHANGE
    [14] = false, --RETICLE
    [15] = false, --SUBTITLE_TEXT
    [16] = false, --RADIO_STATIONS
    [17] = false, --SAVING_GAME,
    [18] = false, --GAME_STREAM
    [19] = false, --WEAPON_WHEEL
    [20] = false, --WEAPON_WHEEL_STATS
    [21] = false, --HUD_COMPONENTS
    [22] = false, --HUD_WEAPONS
}

Config.SpawnVehMaxUpgrades = true -- true = รถที่แอดมินสปอนด้วยคำสั่งจะถูกอัปเกรดเต็มทันที
Config.CustomAIPlates = "........" -- รูปแบบป้ายทะเบียนรถ AI (ดูคำอธิบาย Pattern ด้านล่าง)

-- ตั้งค่าระบบส่ง Log ไป Discord (ใช้กับ ESX.DiscordLog / ESX.DiscordLogFields)
Config.DiscordLogs = {
    -- กลุ่ม Webhook: เลือกช่องปลายทางของ log ตามชื่อที่เรียกใช้ในโค้ด
    Webhooks = {
        default = "", -- webhook หลัก: ใช้เมื่อไม่พบชื่อหมวด log ที่ระบุ
        UserActions = "", -- webhook สำหรับ log การใช้คำสั่ง/การกระทำของผู้เล่น (เช่น /setjob, /car)
    },

    -- กลุ่มสีของ Embed (เลขฐานสิบของสี Discord) เรียกใช้ตามชื่อสี
    Colors = {
        default = 14423100, -- สีเริ่มต้นเมื่อไม่ระบุสีหรือไม่พบชื่อสี
        blue = 255, -- สีน้ำเงิน
        red = 16711680, -- สีแดง
        green = 65280, -- สีเขียว
        white = 16777215, -- สีขาว
        black = 0, -- สีดำ
        orange = 16744192, -- สีส้ม
        yellow = 16776960, -- สีเหลือง
        pink = 16761035, -- สีชมพู
        lightgreen = 65309, -- สีเขียวอ่อน
    },
}
-- รูปแบบสตริง
-- 1 = สุ่มตัวเลข 0-9
-- A = สุ่มตัวอักษร A-Z
-- . = สุ่มตัวอักษรหรือตัวเลข (โอกาสอย่างละครึ่ง)
-- ^1 = ใส่เลข 1 แบบค่าคงที่
-- ^A = ใส่ตัวอักษร A แบบค่าคงที่
-- อักขระอื่น ๆ จะถูกใส่ตามตัวที่กำหนด
-- หากสตริงสั้นกว่า 8 ตัวอักษร ระบบจะเติมด้านขวา
