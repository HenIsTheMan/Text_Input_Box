check = 0;
for(i = 0; i < string_length(keyboardString) + 1; i++){
    if(check < mouse_x - xx){
        if(mouse_x - xx > string_width(keyboardString)){
            return string_length(keyboardString);
            break;
        } else{
            check += string_width(string_copy(keyboardString,i + 1,1));
        }
    } else{
        if((mouse_x - xx) - string_width(string_copy(keyboardString,1,i - 1)) < check - (mouse_x - xx)){
            return i - 1;
        } else{
            return i;
        }
        break;
    }
}
