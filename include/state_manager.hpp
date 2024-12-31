//
// Created by Sarthak Rai on 14/12/2024.
//

#pragma once

#include "state.hpp"
#include <stack>

class StateManager {
  public:
    void push_state(State* state);
    void pop_state();
    void change_state(State* state);
    void update(sf::Time delta_time) const;
    void render() const;
    void handle_events(sf::Event& e) const;

    bool has_state() const;
    State* get_current_state() const;
  private:
    std::stack<State*> state_stack_;
};

