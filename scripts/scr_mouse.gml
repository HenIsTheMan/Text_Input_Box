check = xx;
amt = 0;
index = 0;
while(check < mouse_x){
    if(string_copy(keyboardString,index + 1,2) == "\#"){
        check += string_width("\#");
        amt = 2;
    } else{
        check += string_width(string_copy(keyboardString,index + 1,1));
        amt = 1;
    }
    index += amt;
}
index = min(index,string_length(keyboardString));
return index - amt * (mouse_x - (xx + string_width(string_copy(keyboardString,1,index - amt))) < check - mouse_x);
