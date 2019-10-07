///exit_state
if (image_alpha > 0) {
    image_alpha -= .25;
} else {
    if (room != room_last) {
        room_goto_next();
    } else {
    //Calculate Score
        score = PlayerStats.sapphires;
        
        //Open the Highscores
        ini_open("Settings.ini");
        PlayerStats.highscore = ini_read_real("Score","Highscore", 0);
        
        //A new Highscore
        if (score > PlayerStats.highscore) {
            PlayerStats.highscore = score
            ini_write_real("Score", "Highscore", PlayerStats.highscore);
        }
        
        //Close the ini file
        ini_close();
        
        //Go to Highscores
        room_goto(rm_highscore);
    }
}
