//
// Created by Sarthak Rai on 14/12/2024.
//

#include "network_state.hpp"
#include "menu_state.hpp"
#include "state_manager.hpp"

void NetworkState::init(sf::RenderWindow& window, const char* address, int port) {
    window_ = &window;
    menu_background_.init(*window_);

    menu_state_ = new MenuState();

    im_panel_opts_ = ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoCollapse;
    window_width_ = window.getSize().x;
    window_height_ = window.getSize().y;

    connected_ = false;

    address_ = address;
    port_ = port;

    connection_thread_ = std::thread(&NetworkState::connect_to_server, this);
}

void NetworkState::update(sf::Time delta_time) {
    menu_background_.update(delta_time);

    // if (connected_) receive_data();
}

void NetworkState::render() {
    menu_background_.render(*window_);

    ImGui::Begin("Play Campaign", nullptr, im_panel_opts_);

    float x_pos = 0.035f * window_width_;
    float y_pos = 0.05f * window_height_;

    float x_size = 0.338f * window_width_;
    float y_size = 0.833f * window_height_;

    ImGui::SetWindowPos({ x_pos, y_pos });
    ImGui::SetWindowSize({ x_size, y_size});

    char pname[256] = "";
    ImGui::InputText("Player Name", pname, IM_ARRAYSIZE(pname));
    if (ImGui::Button("Create Room")) {}
    if (ImGui::Button("Join Room")) {}

    ImGui::End();
}

void NetworkState::handle_events(sf::Event &e) {}

NetworkState::~NetworkState() {
    if (connection_thread_.joinable()) connection_thread_.join();
    if (sockfd_ != -1) close(sockfd_);
    menu_state_ ->init(*window_);
    state_manager_->change_state(menu_state_);
}

void NetworkState::connect_to_server() {
    sockfd_ = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd_ < 0) {
        std::cerr << "Error creating socket" << std::endl;
        return;
    }

    // Set up the server address structure
    server_addr_.sin_family = AF_INET;
    server_addr_.sin_port = htons(port_);
    server_addr_.sin_addr.s_addr = inet_addr(address_);

    // Connect to the server
    if (connect(sockfd_, (struct sockaddr*)&server_addr_, sizeof(server_addr_)) < 0) {
        std::cerr << "Connection failed" << std::endl;
        close(sockfd_);
        sockfd_ = -1;
        state_manager_->pop_state();
    } else {
        std::cout << "Connected to server" << std::endl;
        send_data("CONNECTED");
        connected_ = true;
    }
}

void NetworkState::send_data(const std::string& data) const {
    if (sockfd_ != -1) {
        ssize_t bytes_sent = send(sockfd_, data.c_str(), data.size(), 0);
        if (bytes_sent < 0) {
            std::cerr << "Error sending data" << std::endl;
        }
    }
}

void NetworkState::receive_data() {
    if (sockfd_ != -1) {
        ssize_t bytes_received = recv(sockfd_, recv_buffer_, sizeof(recv_buffer_) - 1, 0);
        if (bytes_received < 0) {
            std::cerr << "Error receiving data" << std::endl;
        } else if (bytes_received > 0) {
            recv_buffer_[bytes_received] = '\0';
            std::cout << "Received: " << recv_buffer_ << std::endl;
        }
    }
}
