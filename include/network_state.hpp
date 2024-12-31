//
// Created by Sarthak Rai on 14/12/2024.
//

#pragma once

#include <thread>

#include "state.hpp"
#include "menu_background.hpp"
#include "imgui.h"
#include "imgui-SFML.h"
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

class MenuState;

class NetworkState : public State  {
public:
    ~NetworkState() override;
    void init(sf::RenderWindow& window, const char* address, int port);
    void update(sf::Time delta_time) override;
    void render() override;
    void handle_events(sf::Event& e) override;
private:
    void connect_to_server();
    void send_data(const std::string& data) const;
    void receive_data();

    sf::SoundBuffer buffer_;
    sf::Sound sound_;
    MenuBackground menu_background_;

    int sockfd_ = 0;
    struct sockaddr_in server_addr_ = {};
    char recv_buffer_[1024] = {};
    std::atomic<bool> connected_ = false;
    std::thread connection_thread_;
    int port_ = 0;
    const char*address_ = nullptr;

    MenuState* menu_state_ = nullptr;
};