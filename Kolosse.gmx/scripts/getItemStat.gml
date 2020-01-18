///getItemStat(itemStat.what);
switch (tab_selection) {
    case 0:  
        if bagItemsList >= (ds_grid_height(global.itemStore)) {
            return(" ");
        } else {
            return(global.itemIndex[# global.itemStore[# 0, bagItemsList], argument0]);
        }
        break;
    case 1:  
        if bagMedsList >= (ds_grid_height(global.medicineStore)) {
            return(" ");
        } else {
            return(global.medicineIndex[# global.medicineStore[# 0, bagMedsList], argument0]);
        }
        break;
    case 2:  
        if bagCaptsList >= (ds_grid_height(global.captureStore)) {
            return(" ");
        } else {
            return(global.captureIndex[# global.captureStore[# 0, bagCaptsList], argument0]);
        }
        break;
}
