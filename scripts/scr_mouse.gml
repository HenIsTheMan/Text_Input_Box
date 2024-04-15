xCheck = xx;
yCheck = yy;
line = caretLine;
index = 1;
amt = 1;

if(string_count("#",keyboardString) - string_count("\#",keyboardString) == 0){ //??
    while(xCheck < mouse_x && index - 1 < string_length(keyboardString)){
        if(string_copy(keyboardString,index,2) == "\#"){
            xCheck += string_width("\");
            amt = 2;
        } else{
            xCheck += string_width(string_copy(keyboardString,index,1));
        }
        index += amt;
    }
    return index - 1 - amt * (mouse_x - (xx + string_width(string_copy(keyboardString,1,index - 1 - amt))) < xCheck - mouse_x);
} else{
    while(yCheck < mouse_y && line < string_count("#",keyboardString) - string_count("\#",keyboardString)){
        yCheck += string_height("\");
        line++;
    }
    while(xCheck < mouse_x && breakPos[line] + index < breakPos[line + 1]){
        if(string_copy(keyboardString,breakPos[line] + index,2) == "\#"){
            xCheck += string_width("\#");
            amt = 2;
        } else{
            xCheck += string_width(string_copy(keyboardString,breakPos[line] + index,1));
        }
        index += amt;
    }
    return breakPos[line] + index - amt * (mouse_x - (xx + string_width(string_copy(keyboardString,breakPos[line] + 1,index - 1 - amt))) < xCheck - mouse_x);
}
