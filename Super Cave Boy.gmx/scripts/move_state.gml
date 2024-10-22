///move_state()
if (!place_meeting(x, y+1, Solid)) {
    vspd += grav;
    
    //Player is in the air
    sprite_index = spr_playe_jump;
    image_speed = 0;
    image_index = vspd > 0;
    
    //Control jump height
    if(up_release and vspd < -6) {
        vspd = -6
    }
} else {
    vspd = 0 ;
    
    //Jumping code
    if (up) and !place_meeting(xprevious, yprevious, Solid){
        vspd = -16;
        audio_play_sound(snd_jump, 5, false);
    }
    
    //Player is on the ground
    if (hspd == 0) {
        sprite_index = spr_player_idle;
    }else {
        sprite_index = spr_player_walk;
        image_speed = .6;
    } 
}

if (right or left) {
    hspd += (right-left)*acc;
    
    if (hspd > spd) hspd = spd;
    if (hspd < - spd) hspd = -spd;
} else {
    apply_friction(acc);
}

if (hspd != 0)  {
    image_xscale = sign(hspd);
}

// Play the landing sound
if(place_meeting(x, y+vspd+1, Solid) and !place_meeting(xprevious, yprevious, Solid) and vspd > 0 ) {
    audio_emitter_pitch(audio_em, random_range(.8,1.2));
    audio_emitter_gain(audio_em, .2);
    audio_play_sound_on(audio_em, snd_step, false, 6);
}

move(Solid);

///Check for ledge_grab_state
var falling = y-yprevious > 0;
var wasnt_wall = !position_meeting(x+17*image_xscale, yprevious, Solid);
var is_wall = position_meeting(x+17*image_xscale, y, Solid);

if (falling and wasnt_wall and is_wall) {
    hspd = 0;
    vspd = 0;
    
    // Move against the ledge
    while (!place_meeting(x+image_xscale, y, Solid)) {
        x+=image_xscale;
    }
    
    //Make sure we are the right height
    while(position_meeting(x+17*image_xscale, y-1, Solid)) {
        y-=1;
    }
    sprite_index = spr_player_ledge_grab
    state = ledge_grab_state;
}


