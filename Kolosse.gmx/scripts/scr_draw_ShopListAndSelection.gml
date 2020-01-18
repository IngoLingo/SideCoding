///scr_draw_ShopListAndSelection(tab selection var);
//draw item selection
draw_set_font(fnt_ArialBlack12);
draw_set_color(c_menuGrayW2);
draw_rectangle(
    display_get_gui_width()*0.05-16, 
    56+string_height("I")+(bagList_Selection - scrollNum)*string_height("I"),
    display_get_gui_width()*0.37+8+string_width("$00000"), 
    56+string_height("I")*2+(bagList_Selection - scrollNum)*string_height("I"),
    false
);

//draw the item list
draw_set_color(c_menuBlack);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


switch (argument0) {
    case 0:
        var invintoryType = global.itemStore;
        var invintoryIndex = global.itemIndex;
        break;
    case 1:
        var invintoryType = global.medicineStore;
        var invintoryIndex = global.medicineIndex;
        break;
    case 2:
        var invintoryType = global.captureStore;
        var invintoryIndex = global.captureIndex;
        break;
}

var i;
for (i = 0; i < ds_grid_height(invintoryType)/*10*/; i += 1){
    //break if the grid height has been reached 
    //if i == ds_grid_height(invintoryType) {break;}   
    
    iid = invintoryType[# 0, i];
    
    name = invintoryIndex[# iid, itemStat.name];
    itemType = invintoryIndex[# iid, itemStat.type];
    storePrice = invintoryIndex[# iid, itemStat.price];
    //description = invintoryIndex[# iid, itemStat.description];

    //Draw item Name
    draw_text(display_get_gui_width()*0.05, 56 + ((i + 1 - scrollNum) * string_height("I")), string(name)); 
    //Draw item quantity
    draw_text(display_get_gui_width()*0.37, 56 + ((i + 1 - scrollNum) * string_height("I")), "$" + string(storePrice)); 
    //draw_text(x+292+1, y + ((i + moveList) * 32)+1, string(itemType)); //Draw item type
}

//draw cancel at the end
draw_text(display_get_gui_width()*0.05, 56 + ((ds_grid_height(invintoryType) + 1  - scrollNum) * string_height("I")), "Cancel");


        
        //draw white boxs to mask the extending list
        draw_set_color(c_menuWhite);
        draw_rectangle(
            0,
            sprite_get_height(spr_bagMenuMask)+56,  
            display_get_gui_width()/2, 
            display_get_gui_height(),
            false
        );
        
        draw_rectangle(
            0,
            0,  
            display_get_gui_width()/2, 
            56,
            false
        );
        
        //draw the item list mask
        draw_sprite_ext(
            spr_bagMenuMask, 
            0, 
            0, 
            56,
            1.5,
            1,
            0,
            c_white,
            1
        );
