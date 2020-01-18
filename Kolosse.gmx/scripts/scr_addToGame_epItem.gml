/// @description scr_addToGame_epItem(item_ID, name, description, heal amount);
/// @function scr_addToGame_epItem
/// @param item_ID
/// @param name
/// @param description
/// @param heal amount

var iid = argument0;
global.itemIndex[# iid, itemStat.name] = argument1;
global.itemIndex[# iid, itemStat.description] = argument2;
global.itemIndex[# iid, itemStat.effect] = argument3;

global.itemIndex[# iid, itemStat.type] = itemType.epGain;
