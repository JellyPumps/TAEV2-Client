//
// Created by Sarthak Rai on 16/12/2024.
//

#pragma once

#include <SFML/Audio.hpp>
#include "state.hpp"
#include <thread>
#include <string>
#include "state_manager.hpp"

class Music {
  public:
    Music(const std::string& file_path, bool loop, int volume);
    ~Music();
    void play();
    void stop(State* state, float fade_out_duration, bool state_required);
 private:
    void fade_out(float duration);
    sf::SoundBuffer buffer_;
    sf::Sound sound_;

    StateManager state_manager_;

    std::thread audio_thread_;
};

