/// @description Adds an item and a quantity into the inventory in a valid slot.
/// @function scr_gainStore_item(item_ID, global invintory type);
/// @param item_ID
/// @param amount

var iid = argument0;
var invintoryType = argument1;

switch (invintoryType) {
    case global.itemStore:
        var name = global.itemIndex[# iid, itemStat.name];
        var listEnum = itemList.none;
        break;
    case global.medicineStore:
        var name = global.medicineIndex[# iid, itemStat.name];
        var listEnum = medicineList.none;
        break;
    case global.captureStore:
        var name = global.captureIndex[# iid, itemStat.name];
        var listEnum = captureList.none;
        break;
}

var slot = 0; //A temporary variable to loop through the slots
var inventory_height = ds_grid_height(invintoryType);


while (slot <= inventory_height) {
 //If the tested slot in the inventory is either empty, or contains a matching item id
if (invintoryType[# 0, slot] == iid || invintoryType[# 0, slot] == listEnum)
 {
  invintoryType[# 0, slot] = iid;
  invintoryType[# 1, slot] = name;
  return true; //Did set the slot
  exit; //Exit function, because it has set the slot
  }
 slot ++; //Incriment slot to test next position
 
 if slot == inventory_height { // If we didn't find a matching or empty slot create an empty slot
    ds_grid_resize(invintoryType, ds_grid_width(invintoryType), ds_grid_height(invintoryType)+1);
    invintoryType[# 0, slot] = iid;
    invintoryType[# 1, slot] = name;
    return true; //Did set the slot
    exit; //Exit function, because it has set the slot
 }
}


//ds_grid_resize(invintoryType, ds_grid_height(invintoryType)+1, ds_grid_height(invintoryType));


return false; //Did not set slot
