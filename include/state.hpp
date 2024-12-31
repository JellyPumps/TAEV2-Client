//
// Created by Sarthak Rai on 14/12/2024.
//

#pragma once

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <SFML/Audio.hpp>
#include <SFML/Window.hpp>

class StateManager;

class State {
  public:
    virtual ~State() = default;

    virtual void update(sf::Time delta_time) = 0;
    virtual void render() = 0;
    virtual void handle_events(sf::Event& e) = 0;

    virtual void on_enter() {};
    virtual void on_leave() {};

    void set_state_manager(StateManager* state_manager) { state_manager_ = state_manager; }
  protected:
    StateManager* state_manager_ = nullptr;
    int window_width_ = 0;
    int window_height_ = 0;
    int im_panel_opts_ = 0;
    sf::RenderWindow* window_ = nullptr;
};
