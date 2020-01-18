/// @description scr_addToGame_keyItem(item_ID, name, description, status that heals);
/// @function scr_addToGame_keyItem
/// @param item_ID
/// @param name
/// @param description
/// @param status that heals

var iid = argument0;
global.keyIndex[# iid, itemStat.name] = argument1;
global.keyIndex[# iid, itemStat.description] = argument2;
global.keyIndex[# iid, itemStat.effect] = argument3;

//global.itemIndex[# iid, itemStat.type] = itemType.itemKey;
