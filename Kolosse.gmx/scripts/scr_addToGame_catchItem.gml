/// @description scr_addToGame_catchItem(item_ID, name, description, catch rate, price);
/// @function scr_addToGame_catchItem
/// @param item_ID
/// @param name
/// @param description
/// @param catch rate

var iid = argument0;
global.captureIndex[# iid, itemStat.name] = argument1;
global.captureIndex[# iid, itemStat.description] = argument2;
global.captureIndex[# iid, itemStat.effect] = argument3;
global.captureIndex[# iid, itemStat.price] = argument4;

global.captureIndex[# iid, itemStat.iid] = argument0;
