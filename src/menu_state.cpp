//
// Created by Sarthak Rai on 14/12/2024.
//

#include "menu_state.hpp"
#include "network_state.hpp"
#include "state_manager.hpp"

void MenuState::init(sf::RenderWindow& window) {
    window_ = &window;
    menu_background_.init(*window_);

    im_panel_opts_ = ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoCollapse;
    window_width_ = window.getSize().x;
    window_height_ = window.getSize().y;
}

void MenuState::update(sf::Time delta_time) {
    menu_background_.update(delta_time);

    ImGui::Begin("Menu", nullptr, im_panel_opts_);

    float x_pos = 0.035f * window_width_;
    float y_pos = 0.05f * window_height_;

    float x_size = 0.338f * window_width_;
    float y_size = 0.833f * window_height_;

    ImGui::SetWindowPos({ x_pos, y_pos });
    ImGui::SetWindowSize({ x_size, y_size});

    if (ImGui::Button("Create Campaign")) {}

    if (ImGui::Button("Play Campaign")) {
        ImGui::OpenPopup("Network Settings");
    }

    if (ImGui::BeginPopup("Network Settings")) {
        char input_buffer[256];
        strncpy(input_buffer, address.c_str(), sizeof(input_buffer) - 1);
        if (ImGui::InputText("IP Addr", input_buffer, sizeof(input_buffer))) {
            address = input_buffer;
        }
        ImGui::InputInt("Port", &port);

        if (ImGui::Button("Join")) {
            NetworkState* network_state = new NetworkState();
            network_state->init(*window_, address.c_str(), port);
            state_manager_->change_state(network_state);
        }

        ImGui::EndPopup();
    }

    if (ImGui::Button("Exit")) {
        exit(EXIT_SUCCESS);
    }

    ImGui::End();
}

void MenuState::render() {
    menu_background_.render(*window_);
}

void MenuState::handle_events(sf::Event &e) {}

void MenuState::on_leave() {
    sound_.stop();
    menu_background_.reset();
}
