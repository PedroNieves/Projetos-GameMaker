///hurt_state()
//Set the Sprite
sprite_index = spr_player_hurt;

if (hspd != 0) image_xscale = sign(hspd);

// Apply gravity
if (!place_meeting(x, y+1, Solid)) {
    vspd += grav;
} else {
    vspd = 0;
    
    // Use friction
    apply_friction(acc);
}

direction_move_bounce(Solid);

// Change back to move state
if (hspd == 0 and vspd == 0) {
    image_blend = c_white;
    if (PlayerStats.hp < 1) {
        show_message("You're a noob!!!!")
        PlayerStats.sapphires = 0;
        PlayerStats.hp = PlayerStats.maxhp;
        if (audio_is_playing(snd_boss_music)){
            audio_stop_sound(snd_boss_music);
        }
        room_restart();
    }
    state = move_state;
}
