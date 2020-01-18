/// @description scr_addToGame_statusHealItem(item_ID, name, description, status that heals);
/// @function scr_addToGame_statusHealItem
/// @param item_ID
/// @param name
/// @param description
/// @param status that heals

var iid = argument0;
global.itemIndex[# iid, itemStat.name] = argument1;
global.itemIndex[# iid, itemStat.description] = argument2;
global.itemIndex[# iid, itemStat.effect] = argument3;

global.itemIndex[# iid, itemStat.type] = itemType.statusHeal;
