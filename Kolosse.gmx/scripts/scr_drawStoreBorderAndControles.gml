///scr_drawStoreBorderAndControles(Select D-Pad or None, Words, A T/F, A words, B T/F, B words, Menu Name);       
pauseBorderControlesSpace = 5;
draw_set_font(fnt_ArialBlack10);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

//Draw the border
draw_set_colour(c_menuGray0);
draw_rectangle(0, 0, display_get_gui_width(), string_height(argument3) + (pauseBorderControlesSpace*2), false);
draw_rectangle(0, display_get_gui_height()- string_height(argument3) - (pauseBorderControlesSpace*2), display_get_gui_width(), display_get_gui_height(), false);

//Draw the controles
draw_set_color(c_menuWhite);
if argument0 == "Select" {
    draw_text(0, display_get_gui_height() - pauseBorderControlesSpace, "  (SELECT) " + argument1);
} else if argument0 == "D-Pad"{
    draw_text(0, display_get_gui_height() - pauseBorderControlesSpace, "  (D-Pad) " + argument1);
}
else { draw_text(0, display_get_gui_height() - pauseBorderControlesSpace,"  " + argument1); }

draw_set_halign(fa_right);

if argument2 == true 
{
    draw_text(display_get_gui_width() - string_width("(B) " + argument5 + "  "), display_get_gui_height() - pauseBorderControlesSpace, "(A) " + argument3 + "   ");
} else { draw_text(display_get_gui_width() - string_width("(B) " + argument5 + "  "), display_get_gui_height() - pauseBorderControlesSpace, argument3 + "   "); }

if argument4 == true 
{
    draw_text(display_get_gui_width(), display_get_gui_height() - pauseBorderControlesSpace, "(B) " + argument5 + "  ");
} else { draw_text(display_get_gui_width(), display_get_gui_height() - pauseBorderControlesSpace, argument5 + "  "); }

draw_set_font(fnt_ArialBlack24);
if (argument6 != "") {
    draw_set_color(c_menuGray0);
    draw_rectangle(0, 0, display_get_gui_width(), string_height(argument6) + (pauseBorderControlesSpace*2), false);
}
draw_set_color(c_menuBlack);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(8, pauseBorderControlesSpace, argument6);
