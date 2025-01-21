//
// Created by Sarthak Rai on 16/12/2024.
//

#pragma once

#include <SFML/Audio.hpp>
#include <thread>
#include <string>

class Music {
  public:
    Music(const std::string& file_path, bool loop, int volume);
    ~Music();
    void play();
    void stop(float fade_out_duration);
 private:
    void fade_out(float duration);
    sf::SoundBuffer buffer_;
    sf::Sound sound_;

    std::thread audio_thread_;
};
