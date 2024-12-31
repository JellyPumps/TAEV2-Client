//
// Created by Sarthak Rai on 14/12/2024.
//

#pragma once

#include "state.hpp"
#include "imgui.h"
#include "imgui-SFML.h"
#include "menu_background.hpp"

class MenuState : public State {
  public:
    void init(sf::RenderWindow& window);
    void update(sf::Time delta_time) override;
    void render() override;
    void handle_events(sf::Event& e) override;

    void on_leave() override;
  private:
    sf::SoundBuffer buffer_;
    sf::Sound sound_;
    MenuBackground menu_background_;

    std::string address;
    int port = 0;
};
