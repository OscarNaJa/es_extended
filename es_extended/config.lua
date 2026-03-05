-- ไฟล์ตั้งค่าหลักของ es_extended
Config = {}
Config.Locale = GetConvar("esx:locale", "en") -- ภาษาเริ่มต้นของระบบ (สามารถ override ผ่าน convar esx:locale)

-- ตัวอย่างการใช้งาน Ox Inventory (ปิดไว้โดยค่าเริ่มต้น)
-- Config.OxInventory = GetResourceState("ox_inventory") ~= 'missing'

-- กำหนดประเภทบัญชีเงินที่ผู้เล่นมีได้ในระบบ
Config.Accounts = {
    bank = {
        label = TranslateCap("account_bank"), -- ชื่อที่แสดงผลของบัญชีธนาคาร
        round = true,
    },
    black_money = {
        label = TranslateCap("account_black_money"), -- ชื่อที่แสดงผลของบัญชีเงินผิดกฎหมาย
        round = true,
    },
    money = {
        label = TranslateCap("account_money"), -- ชื่อที่แสดงผลของเงินสด
        round = true,
    },
}

Config.StartingAccountMoney 	= {  -- เงินเริ่มต้นตอนสร้างตัวละครใหม่
	['bank'] = 40000, -- เงินในธนาคารเริ่มต้น
	['money']= 10000 -- เงินสดเริ่มต้น
}

Config.StartingInventoryItems = {   -- ไอเท็มเริ่มต้นที่ผู้เล่นได้รับทันที
    ['BoxNewbie'] = 1, -- ตัวอย่าง: กล่องของขวัญมือใหม่
}
   
Config.DefaultSpawns = { -- จุดเกิดเริ่มต้นของผู้เล่น (เพิ่มได้หลายจุด)
    { x = -3153.89, y = -3309.44, z = 630.87, heading = 274.8651 }, -- ตำแหน่ง spawn ตัวอย่าง
}

-- กลุ่มสิทธิ์แอดมินที่ถือว่าเป็นผู้ดูแลระบบ
Config.AdminGroups = {
    ["admin"] = true, -- แอดมินทั่วไป
    ["superadmin"] = true, -- แอดมินสูงสุด
}

Config.LicenseType = "steam" -- ประเภท identifier หลักที่ใช้ผูกตัวตนผู้เล่น (steam/license/discord/xbl/liveid/ip)
Config.InvalidateIdleCam = true  -- รีเซ็ตตัวจับเวลากล้อง idle เพื่อไม่ให้กล้อง cinematic เด้งเอง
Config.EnablePaycheck = true -- เปิด/ปิดระบบเงินเดือนอัตโนมัติ
Config.LogPaycheck = false -- บันทึกการจ่ายเงินเดือนลง Discord (ต้องตั้งค่า webhook)
Config.EnableSocietyPayouts = false -- ให้เงินเดือนหักจากบัญชีสังคมของอาชีพ (ต้องมี esx_society)
Config.MaxWeight = 24 -- น้ำหนักกระเป๋าสูงสุดเริ่มต้น (ถ้าไม่มี backpack เพิ่ม)
Config.PaycheckInterval = 60 * 60000 -- ระยะเวลารับเงินเดือน (มิลลิวินาที)
Config.EnableDebug = false -- เปิดโหมดดีบักสำหรับตรวจสอบปัญหา
Config.EnableDefaultInventory = true -- เปิดอินเวนทอรีเริ่มต้นของ ESX (ปุ่ม F2)
Config.EnableWantedLevel = false -- เปิดระบบดาว Wanted ของ GTA ปกติ
Config.EnablePVP = true -- อนุญาตการต่อสู้ระหว่างผู้เล่น (PvP)

Config.Multichar = GetResourceState("esx_multicharacter") ~= "missing" -- ตรวจว่ามีระบบหลายตัวละครหรือไม่
Config.Identity = true -- บังคับกรอกข้อมูลตัวละครก่อนเข้าเกม (ใช้งานร่วม multichar)
Config.DistanceGive = 4.0 -- ระยะสูงสุดในการให้ไอเท็ม/อาวุธ/เงินให้ผู้เล่นอื่น

Config.AdminLogging = false -- บันทึกการใช้คำสั่งแอดมินบางรายการ

Config.DisableHealthRegeneration = false -- ปิดการฟื้นเลือดอัตโนมัติของผู้เล่น
Config.DisableVehicleRewards = false -- ปิดการได้รับอาวุธจากยานพาหนะบางประเภท
Config.DisableNPCDrops = false -- ปิดการดรอปอาวุธจาก NPC ตอนตาย
Config.DisableDispatchServices = false -- ปิดระบบบริการแจ้งเหตุ (Dispatch) ของเกม
Config.DisableScenarios = false -- ปิดพฤติกรรมเหตุการณ์สุ่มของ NPC (Scenarios)
Config.DisableWeaponWheel = false -- ปิดวงล้อเลือกอาวุธแบบเดิม
Config.DisableAimAssist = false -- ปิดระบบช่วยเล็ง (โดยเฉพาะจอย)
Config.DisableVehicleSeatShuff = false -- ปิดการสลับเบาะอัตโนมัติในรถ
Config.DisableDisplayAmmo = false -- ปิดการแสดงผลกระสุนบน HUD
Config.RemoveHudComponents = { -- ตั้งค่า true/false เพื่อซ่อนองค์ประกอบ HUD รายการต่าง ๆ
    [1] = false, -- true = ซ่อนดาวที่ต้องการตัว (WANTED_STARS)
    [2] = false, -- true = ซ่อนไอคอนอาวุธ (WEAPON_ICON)
    [3] = false, -- true = ซ่อนเงินสด (CASH)
    [4] = false, -- true = ซ่อนเงิน MP (MP_CASH)
    [5] = false, -- true = ซ่อนข้อความ MP (MP_MESSAGE)
    [6] = false, -- true = ซ่อนชื่อรถ (VEHICLE_NAME)
    [7] = false, -- true = ซ่อนชื่อพื้นที่ (AREA_NAME)
    [8] = false, -- true = ซ่อนคลาสรถ (VEHICLE_CLASS)
    [9] = false, -- true = ซ่อนชื่อถนน (STREET_NAME)
    [10] = false, -- true = ซ่อนข้อความช่วยเหลือ (HELP_TEXT)
    [11] = false, -- true = ซ่อน floating help 1
    [12] = false, -- true = ซ่อน floating help 2
    [13] = false, -- true = ซ่อนข้อความเงินเข้า/ออก (CASH_CHANGE)
    [14] = false, -- true = ซ่อนเป้าเล็ง (RETICLE)
    [15] = false, -- true = ซ่อนซับไตเติล (SUBTITLE_TEXT)
    [16] = false, -- true = ซ่อนชื่อสถานีวิทยุ (RADIO_STATIONS)
    [17] = false, -- true = ซ่อนไอคอนบันทึกเกม (SAVING_GAME)
    [18] = false, -- true = ซ่อนสถานะเกมสตรีม (GAME_STREAM)
    [19] = false, -- true = ซ่อนวงล้ออาวุธ (WEAPON_WHEEL)
    [20] = false, -- true = ซ่อนสเตตัสวงล้ออาวุธ (WEAPON_WHEEL_STATS)
    [21] = false, -- true = ซ่อน HUD components อื่น ๆ
    [22] = false, -- true = ซ่อน HUD อาวุธ
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
