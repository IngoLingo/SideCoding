/// @description scr_addToGame_medicineItem(item_ID, name, description, heal amount, price);
/// @function scr_addToGame_medicineItem
/// @param item_ID
/// @param name
/// @param description
/// @param heal amount

var iid = argument0;
global.medicineIndex[# iid, itemStat.name] = argument1;
global.medicineIndex[# iid, itemStat.description] = argument2;
global.medicineIndex[# iid, itemStat.effect] = argument3;
global.medicineIndex[# iid, itemStat.price] = argument4;

global.medicineIndex[# iid, itemStat.iid] = argument0;
