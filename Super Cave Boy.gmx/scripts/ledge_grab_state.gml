///ledge_grab_state
if (down) {
    state = move_state;
}

if (up) {
    state = move_state;
    vspd = -16;
    audio_emitter_pitch(audio_em, 1.5);
    audio_emitter_gain(audio_em, .1);
    audio_play_sound_on(audio_em, snd_step, false, 6);
    //audio_play_sound(snd_jump, 5, false);
}



