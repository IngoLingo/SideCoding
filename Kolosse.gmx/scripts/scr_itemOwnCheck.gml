///scr_itemOwnCheck(item_ID, global invintory type);
var iid = argument0;
var invintoryType = argument1;

switch (invintoryType) {
    case global.itemInventory:
        var name = global.itemIndex[# iid, itemStat.name];
        var listEnum = itemList.none;
        break;
    case global.medicineInventory:
        var name = global.medicineIndex[# iid, itemStat.name];
        var listEnum = medicineList.none;
        break;
    case global.captureInventory:
        var name = global.captureIndex[# iid, itemStat.name];
        var listEnum = captureList.none;
        break;
    case global.keyInventory:
        var name = global.keyIndex[# iid, itemStat.name];
        var listEnum = keyList.none;
        break;
}

var slot = 0; //A temporary variable to loop through the slots
var inventory_height = ds_grid_height(invintoryType);


while (slot <= inventory_height) {
 //If the tested slot in the inventory is either empty, or contains a matching item id
if (invintoryType[# 0, slot] == iid || invintoryType[# 0, slot] == listEnum)
 {
  return(0);//(invintoryType[# 1, slot]);
  exit; //Exit function
  }
 slot ++; //Incriment slot to test next position
 
 if slot == inventory_height {
    return(0);
    exit; //Exit function
 }
}

return(0); //Did not set slot
