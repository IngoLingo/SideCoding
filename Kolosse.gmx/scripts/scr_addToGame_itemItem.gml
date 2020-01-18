/// @description scr_addToGame_itemItem(item_ID, name, description, heal amount, price);
/// @function scr_addToGame_itemItem
/// @param item_ID
/// @param name
/// @param description
/// @param heal amount

var iid = argument0;
global.itemIndex[# iid, itemStat.name] = argument1;
global.itemIndex[# iid, itemStat.description] = argument2;
global.itemIndex[# iid, itemStat.effect] = argument3;
global.itemIndex[# iid, itemStat.price] = argument4;

global.itemIndex[# iid, itemStat.iid] = argument0;
