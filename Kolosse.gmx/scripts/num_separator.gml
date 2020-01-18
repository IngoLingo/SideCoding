/// num_separator(value, separator, digits)
// eg. num_separator(12345678, "_", 3); // Result: 12_345_678
// by Dmi7ry on yoyogames

var value = string(round(argument0));
var sep = argument1;
var digits = argument2 - 1;

var res = "";

var cnt = 0;
for (var i=string_length(value); i>0; i--)
{
    res = string_char_at(value, i) + res;
    if cnt++ == digits and i > 1
    {
        cnt = 0;
        res = sep + res;
    }
}

return res;
