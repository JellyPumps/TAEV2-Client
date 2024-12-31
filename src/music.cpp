//
// Created by Sarthak Rai on 16/12/2024.
//

#include "music.hpp"

Music::Music(const std::string &file_path, bool loop, int volume) {
    buffer_.loadFromFile(file_path);
    sound_.setBuffer(buffer_);
    sound_.setLoop(loop);
    sound_.setVolume(volume);

    audio_thread_ = std::thread(&Music::play, this);
}

Music::~Music() {
    audio_thread_.join();
}


void Music::play() {
    sound_.play();
}

void Music::stop(State* state = nullptr, float fade_out_duration = 0.0f, bool state_required = false) {
    if (state_required && state_manager_.get_current_state() == state) fade_out(fade_out_duration);
    else if (state_required == false) fade_out(fade_out_duration);
}

void Music::fade_out(float duration) {
    float initial_volume = sound_.getVolume();
    float volume_decrement = initial_volume / (duration * 1000.0f);

    while (sound_.getVolume() > 0) {
        float current_volume = sound_.getVolume();
        if (current_volume > volume_decrement) sound_.setVolume(volume_decrement);
        else sound_.setVolume(0);

        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }

    sound_.stop();
}

