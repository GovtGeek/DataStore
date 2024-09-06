--[[
Global Enumerations, used by other DataStore modules or client add-ons.
--]]
C_Spell.GetSpellName = _G["C_Spell.GetSpellName"] or GetSpellInfo -- For 4.4.0 temporary compatibility

DataStore.Enum = {
	BankTypes = {
		Cooking = 1,
		Fishing = 2,
		Herb = 3,
		Cloth = 4,
		Leather = 5,
		Metal = 6,
		Elemental = 7,
		Enchanting = 8,
		Engineering = 9,
		Jewelcrafting = 10,
		Inscription = 11,
		BattlePets = 12,
		
		Minimum = 1,
		Maximum = 12,
	},
	BankTypesLabels = {
		Cooking = C_Spell.GetSpellName(2550),
		Fishing = C_Spell.GetSpellName(131474),
		Herb = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 9),
		Cloth = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 5),
		Leather = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 6),
		Metal = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 7),
		Elemental = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 10),
		Enchanting = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 12),
		Engineering = C_Spell.GetSpellName(4036),
		Jewelcrafting = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 4),
		Inscription = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 16),
		BattlePets = AUCTION_CATEGORY_BATTLE_PETS,
		[1] = C_Spell.GetSpellName(2550),
		[2] = C_Spell.GetSpellName(131474),
		[3] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 9),
		[4] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 5),
		[5] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 6),
		[6] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 7),
		[7] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 10),
		[8] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 12),
		[9] = C_Spell.GetSpellName(4036),
		[10] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 4),
		[11] = C_Item.GetItemSubClassInfo(Enum.ItemClass.Tradegoods, 16),
		[12] = AUCTION_CATEGORY_BATTLE_PETS,
	},
}

local e = DataStore.Enum

if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
	-- classic era
	e.ExpansionPacks = {
		EXPANSION_NAME0,	-- "Classic"
	}
	
elseif WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
	-- bcc
	e.ExpansionPacks = {
		EXPANSION_NAME0,	-- "Classic"
		EXPANSION_NAME1,	-- "The Burning Crusade"
	}
else
	-- retail
	
	-- Ordered list of expansion packs
	e.ExpansionPacks = {
		EXPANSION_NAME0,	-- "Classic"
		EXPANSION_NAME1,	-- "The Burning Crusade"
		EXPANSION_NAME2,	-- "Wrath of the Lich King"
		EXPANSION_NAME3,	-- "Cataclysm"
		EXPANSION_NAME4,	-- "Mists of Pandaria"
		EXPANSION_NAME5,	-- "Warlords of Draenor"
		EXPANSION_NAME6,	-- "Legion"
		EXPANSION_NAME7,  -- "Battle for Azeroth"
		EXPANSION_NAME8,  -- "Shadowlands"
		EXPANSION_NAME9, 	-- "Dragonflight"
	}
end
