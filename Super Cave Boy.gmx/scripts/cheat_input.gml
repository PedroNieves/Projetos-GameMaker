/// Cheats Input
var cheats
switch(keyboard_lastkey)
{
    case ord("A"):
        cheat = cheat+"A";
        keyboard_lastkey = 0;
        break;
    
    case ord("B"):
        cheat = cheat+"B";
        keyboard_lastkey = 0;
        break;
    
    case ord("C"):
        cheat = cheat+"C";
        keyboard_lastkey = 0;
        break;
        
    case ord("D"):
        cheat = cheat+"D";
        keyboard_lastkey = 0;
        break;
        
    case ord("E"):
        cheat = cheat+"E";
        keyboard_lastkey = 0;
        break;
        
    case ord("F"):
        cheat = cheat+"F";
        keyboard_lastkey = 0;
        break;
        
    case ord("G"):
        cheat = cheat+"G";
        keyboard_lastkey = 0;
        break;
        
    case ord("H"):
        cheat = cheat+"H";
        keyboard_lastkey = 0;
        break;
        
    case ord("I"):
        cheat = cheat+"I";
        keyboard_lastkey = 0;
        break;
        
    case ord("J"):
        cheat = cheat+"J";
        keyboard_lastkey = 0;
        break;
        
    case ord("K"):
        cheat = cheat+"K";
        keyboard_lastkey = 0;
        break;     
        
    case ord("L"):
        cheat = cheat+"L";
        keyboard_lastkey = 0;
        break;
        
    case ord("M"):
        cheat = cheat+"M";
        keyboard_lastkey = 0;
        break;
        
    case ord("N"):
        cheat = cheat+"N";
        keyboard_lastkey = 0;
        break;
        
    case ord("O"):
        cheat = cheat+"O";
        keyboard_lastkey = 0;
        break;
        
    case ord("P"):
        cheat = cheat+"P";
        keyboard_lastkey = 0;
        break;
        
    case ord("Q"):
        cheat = cheat+"Q";
        keyboard_lastkey = 0;
        break;
        
    case ord("R"):
        cheat = cheat+"R";
        keyboard_lastkey = 0;
        break;
        
    case ord("S"):
        cheat = cheat+"S";
        keyboard_lastkey = 0;
        break;
        
    case ord("T"):
        cheat = cheat+"T";
        keyboard_lastkey = 0;
        break;
        
    case ord("U"):
        cheat = cheat+"U";
        keyboard_lastkey = 0;
        break;
        
    case ord("V"):
        cheat = cheat+"V";
        keyboard_lastkey = 0;
        break;
        
    case ord("W"):
        cheat = cheat+"W";
        keyboard_lastkey = 0;
        break;
        
    case ord("X"):
        cheat = cheat+"X";
        keyboard_lastkey = 0;
        break;
        
    case ord("Y"):
        cheat = cheat+"Y";
        keyboard_lastkey = 0;
        break;
        
    case ord("Z"):
        cheat = cheat+"Z";
        keyboard_lastkey = 0;
        break;
}

if string_length(cheat) > 10 {
    cheat = "";
}
    
return cheat;
