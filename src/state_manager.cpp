//
// Created by Sarthak Rai on 14/12/2024.
//

#include "state_manager.hpp"

void StateManager::push_state(State *state) {
    if (has_state()) get_current_state()->on_leave();

    state->set_state_manager(this);
    state_stack_.push(state);
    state->on_enter();
}

void StateManager::pop_state() {
    if (has_state()) {
        get_current_state()->on_leave();
        delete state_stack_.top();
        state_stack_.pop();
    }
}

void StateManager::change_state(State *state) {
    if (has_state()) pop_state();
    push_state(state);
}

void StateManager::update(sf::Time delta_time) const {
    if (has_state()) get_current_state()->update(delta_time);
}

void StateManager::render() const {
     if (has_state()) get_current_state()->render();
}

void StateManager::handle_events(sf::Event &e) const {
    if (has_state()) get_current_state()->handle_events(e);
}

bool StateManager::has_state() const {
    return !state_stack_.empty();
}

State* StateManager::get_current_state() const {
    return state_stack_.top();
}


